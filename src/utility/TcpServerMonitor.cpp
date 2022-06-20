#include <sys/types.h>
#include <sys/socket.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <netinet/in.h>
#include <arpa/inet.h>
#include <fcntl.h>

#include "log4z.h"
#include "Type.h"
#include "TcpServerMonitor.h"
#include "Configuration.h"

using namespace std;

TcpServerMonitor g_TcpServer;

TcpServerMonitor::TcpServerMonitor()
{
	sock_fd = -1;
	for(int i = 0; i < MAX_CELLS_NBR; i++)
	{
		for(int j = 0; j < MAX_CHANNELS_NBR; j++)
		{
			client_info_table[i][j].state = 0;
			client_info_table[i][j].ch_fd = 0;
			//client_info_table[i][j].port = 0;
		}
	}

	for(int i = 0; i<AUX_TEMP_ACQ_NUM; i++)
	{
		tempAcq_info_table[i].state = 0;
		tempAcq_info_table[i].ch_fd = 0;
		//tempAcq_info_table[i].port = 0;
	}
}

TcpServerMonitor::~TcpServerMonitor()
{
	for(int i = 0; i < MAX_CELLS_NBR; i++)
	{
		for(int j = 0; j < MAX_CHANNELS_NBR; j++)
		{
			if(client_info_table[i][j].ch_fd > 0)
			{
				close(client_info_table[i][j].ch_fd);
			}
		}
	}

	for(int i = 0; i<AUX_TEMP_ACQ_NUM; i++)
	{
		if(tempAcq_info_table[i].ch_fd > 0)
		{
			close(tempAcq_info_table[i].ch_fd);
		}		
	}
		
	if(sock_fd > 0)
	{
		close(sock_fd);
	}
	pthread_mutex_destroy(&channelMutex);
	pthread_mutex_destroy(&tempAcqMutex);
	for(int i=0;i<MAX_CELLS_NBR;i++)
	{
		pthread_rwlock_destroy(&rwlock[i]);
	}
}


int TcpServerMonitor::init()
{
	int optval = 1;
	int	ret = -1;
	string ip_addr="";
	string server_ip="";
	unsigned short port;
	struct sockaddr_in serv_addr;
	cell_channel_No_t cellchanNo;
	tempAcq_cell_channel_No_t tempAcqNo;

	pthread_mutex_init(&channelMutex, NULL);
	pthread_mutex_init(&tempAcqMutex, NULL);
	for(int i=0;i<MAX_CELLS_NBR;i++)
	{
		pthread_rwlock_init(&rwlock[i],NULL);
	}

	port = Configuration::instance()->channel_server_socket(server_ip);
	printf("server ip:%s:%d \n",server_ip.c_str(),port);

	for (int i = 1; i <= MAX_CELLS_NBR; i++)
	{
		for (int j = 1; j <= (MAX_CHANNELS_NBR+MODULE_CH_NUM-1)/MODULE_CH_NUM; j++)
		{
			vector<int> channels;
			Configuration::instance()->device_socket(i,j,ip_addr,channels);
			if(ip_addr != "")
			{
				cellchanNo.cellNo = i;
				cellchanNo.device = j;
				for(uint32 k = 0; k < channels.size(); k++)
				{
					cellchanNo.chanNo[k] = channels[k];
				}
				map_ip_chanNo.insert(std::make_pair(ip_addr,cellchanNo));
			}
		}
	}

	for (int i = 1; i <= MAX_CELLS_NBR*3; i++)
	{
		int cellNo = 0;
		vector<int> channels;
		
		if(i <= MAX_CELLS_NBR*2)
		{
			Configuration::instance()->channel_temperature_acq_socket(i,ip_addr,cellNo,channels);
			if(ip_addr != "")
			{
				tempAcqNo.type = CHANNEL_ACQ_T;
			}
		}
		else
		{
			Configuration::instance()->cell_temperature_acq_socket(i,ip_addr,cellNo,channels);
			if(ip_addr != "")
			{
				tempAcqNo.type = CELL_ACQ_T;
			}
		}

		if(ip_addr != "")
		{
			for(uint32 j = 0; j < channels.size(); j++)
			{
				tempAcqNo.chanNo[j] = channels[j];
			}
							
			tempAcqNo.device = i;
			tempAcqNo.cellNo = cellNo;
			tempAcq_map_ip_chanNo.insert(std::make_pair(ip_addr,tempAcqNo));
		}
	}

/*
	for(auto element = map_ip_chanNo.cbegin();element != map_ip_chanNo.cend();++element)
	{
		printf("%s -> cell%d channel%d\n", element->first.c_str(), element->second.cellNo, element->second.chanNo); 
	}
*/
	
	// ����һ��TCP�׽���
	sock_fd = socket(AF_INET, SOCK_STREAM,0);
	if (sock_fd < 0) 
	{
		return sock_fd;
	}

	int flag = fcntl(sock_fd, F_GETFL, 0);
	fcntl(sock_fd, F_SETFL, flag | O_NONBLOCK);
	
	// ���ø��׽���ʹ֮�������°󶨶˿�
	ret = setsockopt(sock_fd, SOL_SOCKET, SO_REUSEADDR,(void *)&optval, sizeof(optval));
	if (ret < 0) 
	{
		return ret;
	}
	
	// ��ʼ���������˵�ַ�ṹ
	memset(&serv_addr, 0, sizeof (struct sockaddr_in));
	serv_addr.sin_family = AF_INET;
	serv_addr.sin_port = htons(port);
	//serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
	ret = inet_aton(server_ip.c_str(),&serv_addr.sin_addr);
	if(ret == 0)
	{
		return -1;
	}
	
	// ���׽��ְ󶨵����ض˿�
	ret = bind(sock_fd, (struct sockaddr *)&serv_addr,sizeof (struct sockaddr_in));
	if (ret < 0) 
	{
		return ret;
	}

	return 0;
}

void TcpServerMonitor::readLock(int cell_no)
{
	pthread_rwlock_rdlock(&rwlock[cell_no-1]);
}

void TcpServerMonitor::writeLock(int cell_no)
{
	pthread_rwlock_wrlock(&rwlock[cell_no-1]);
}

void TcpServerMonitor::rwUnLock(int cell_no)
{
	pthread_rwlock_unlock(&rwlock[cell_no-1]);
}

void TcpServerMonitor::OSSemPend(pthread_mutex_t *mutex)
{
	pthread_mutex_lock(mutex);
}

void TcpServerMonitor::OSSemPost(pthread_mutex_t *mutex)
{
	pthread_mutex_unlock(mutex);
}

thread TcpServerMonitor::run()
{
    return thread(&TcpServerMonitor::accept_monitor, this);
}

void TcpServerMonitor::accept_monitor()
{
	int conn_fd;
	struct sockaddr_in cli_addr;
	socklen_t cli_len;

	// ���׽���ת��Ϊ�����׽���
	if (listen(sock_fd, MAX_CELLS_NBR*MAX_CHANNELS_NBR) < 0) 
	{
		LOGFMTE("start listen failed!");
		return;
	}
	
	cli_len = sizeof (struct sockaddr_in);
	while(1)
	{
		msleep(15);
		// ͨ��accept���ܿͻ��˵��������󣬲����������׽��������շ�����
		conn_fd = accept(sock_fd, (struct sockaddr *)&cli_addr, &cli_len);
		if (conn_fd < 0) 
		{
			continue;
		}
		int flag = fcntl(conn_fd, F_GETFL, 0);
		fcntl(conn_fd, F_SETFL, flag | O_NONBLOCK);

		string cli_ip = inet_ntoa(cli_addr.sin_addr);
		uint16_t cli_port = ntohs(cli_addr.sin_port);
		LOGFMTD("accept a new client, ip:%s:%d", cli_ip.c_str(),cli_port);

		auto found = map_ip_chanNo.find(cli_ip);
		if(found != map_ip_chanNo.end())
		{
			writeLock(found->second.cellNo);
			client_info_table[found->second.cellNo-1][found->second.device-1].ch_fd = conn_fd;
			client_info_table[found->second.cellNo-1][found->second.device-1].ip = cli_ip;
			client_info_table[found->second.cellNo-1][found->second.device-1].state = NewConnect;
			rwUnLock(found->second.cellNo);

			cell_channel_No_t cellchanNo;
			memcpy(&cellchanNo,&(found->second),sizeof(cell_channel_No_t));
			OSSemPend(&channelMutex);
			map_fd_chanNo.insert(std::make_pair(conn_fd,cellchanNo));
			OSSemPost(&channelMutex);					
		}
		else
		{
			auto acqfound = tempAcq_map_ip_chanNo.find(cli_ip);
			if(acqfound != tempAcq_map_ip_chanNo.end())
			{
				OSSemPend(&tempAcqMutex);
				tempAcq_info_table[acqfound->second.device-1].ch_fd = conn_fd;
				tempAcq_info_table[acqfound->second.device-1].ip = cli_ip;
				tempAcq_info_table[acqfound->second.device-1].state = NewConnect;
					
				tempAcq_cell_channel_No_t tempAcqNo;

				memcpy(&tempAcqNo,&(acqfound->second),sizeof(tempAcq_cell_channel_No_t));
				tempAcq_map_fd_chanNo.insert(std::make_pair(conn_fd,tempAcqNo));
				OSSemPost(&tempAcqMutex);
			}
			else
			{
				close(conn_fd);
			}
		}
	}
}


int TcpServerMonitor::get_client_connfd(int cell_no, int device_no)
{
	readLock(cell_no);
	int conn_fd = client_info_table[cell_no-1][device_no-1].ch_fd;
	rwUnLock(cell_no);
	
	return conn_fd;
}

int TcpServerMonitor::get_client_state(int cell_no, int device_no)
{
	readLock(cell_no);
	int state = client_info_table[cell_no-1][device_no-1].state;
	rwUnLock(cell_no);

	return state;	
}

string TcpServerMonitor::get_client_ip(int cell_no, int device_no)
{
	readLock(cell_no);
	string ip = client_info_table[cell_no-1][device_no-1].ip;
	rwUnLock(cell_no);

	return ip;	
}

void TcpServerMonitor::set_client_state(int cell_no, int device_no, int state)
{
	writeLock(cell_no);
	client_info_table[cell_no-1][device_no-1].state = state;
	rwUnLock(cell_no);
}

bool TcpServerMonitor::get_client_channels_by_ip(string ip, vector<int> &channels)
{
	auto found = map_ip_chanNo.find(ip);
	if(found != map_ip_chanNo.end())
	{
		for(int i = 0; i < MODULE_CH_NUM; i++)
		{
			if(found->second.chanNo[i])
			{
				channels.push_back(found->second.chanNo[i]);
			}
		}

		return true;
	}

	return false;
}

bool TcpServerMonitor::get_client_channels_by_fd(int fd, int &device, vector<int> &channels)
{
	auto found = map_fd_chanNo.find(fd);
	if(found != map_fd_chanNo.end())
	{
		device = found->second.device;
		for(int i = 0; i < MODULE_CH_NUM; i++)
		{
			if(found->second.chanNo[i])
			{
				channels.push_back(found->second.chanNo[i]);
			}
		}

		return true;
	}

	return false;				
}

void TcpServerMonitor::delete_fd_from_map(int fd)
{
	OSSemPend(&channelMutex);
	map_fd_chanNo.erase(fd);
	OSSemPost(&channelMutex);
}

int TcpServerMonitor::get_tempAcqBox_connfd(int device_no)
{
	OSSemPend(&tempAcqMutex);
	int conn_fd = tempAcq_info_table[device_no-1].ch_fd;
	OSSemPost(&tempAcqMutex);
	
	return conn_fd;
}

int TcpServerMonitor::get_tempAcqBox_state(int device_no)
{
	OSSemPend(&tempAcqMutex);
	int state = tempAcq_info_table[device_no-1].state;
	OSSemPost(&tempAcqMutex);

	return state;	
}

void TcpServerMonitor::set_tempAcqBox_state(int device_no, int state)
{
	OSSemPend(&tempAcqMutex);
	tempAcq_info_table[device_no-1].state = state;
	OSSemPost(&tempAcqMutex);
}

bool TcpServerMonitor::get_tempAcqNo_by_fd(int fd, tempAcq_cell_channel_No_t &tempAcqNo)
{
	auto found = tempAcq_map_fd_chanNo.find(fd);
	if(found != tempAcq_map_fd_chanNo.end())
	{
		memcpy(&tempAcqNo,&(found->second),sizeof(tempAcq_cell_channel_No_t));

		return true;
	}

	return false;
}

void TcpServerMonitor::delete_fd_from_tempAcqmap(int fd)
{
	OSSemPend(&tempAcqMutex);
	tempAcq_map_fd_chanNo.erase(fd);
	OSSemPost(&tempAcqMutex);
}



