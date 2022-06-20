
//============================================================================
// Name        : SLMPDriver.cpp
// Author      : 
// Version     :
// Copyright   : JingNeng
// Description : 二进制格式；软元件形式位2字符/编号6位；
//============================================================================

#include <sys/socket.h>   //socket
#include <arpa/inet.h> 	//inet_addr
#include <netinet/in.h>
#include <arpa/inet.h>
#include <fcntl.h>

#include <errno.h>
#include "log4z.h"
#include "Type.h"
#include "SLMPDriver.h"


SLMPDriver::SLMPDriver()
{
					 //|   帧头  |网络编号+站号|  IO编号 |多站点号| 数据长度 |
	uint8_t header[9] = {0x50, 0x00, 0x00, 0xFF, 0xFF, 0x03, 0x00, 0x0C, 0x00}; 
	
	sockfd = -1;
	comm_header_len = sizeof(header);
	
	memcpy(message,header,comm_header_len);
}
	
SLMPDriver::~SLMPDriver()
{
	if(sockfd > 0)
	{
		close(sockfd);	
	}
}

bool SLMPDriver::SLMPconnect(const char *ip,int port)
{
	int opt = 1,ret = 1;
    struct sockaddr_in server;

    if((sockfd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
    {
		LOGFMTD("plc tcp socket() error %d:%s",errno,strerror(errno));
		return false;
    }
	
	ret = setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR, &opt, sizeof(opt));
	if (ret < 0)
	{
		close(sockfd);
		sockfd = -1;
		return false;
	}

	bzero(&server, sizeof(server));
    server.sin_family = AF_INET;
    server.sin_port = htons(port);
    server.sin_addr.s_addr = inet_addr(ip);
	ret = connect(sockfd, (struct sockaddr *)&server, sizeof(server));
	if (ret < 0)
	{
		return false;
	}
	return true;
}


void SLMPDriver::SLMPclose()
{
	if(sockfd > 0)
	{
		close(sockfd);
		sockfd = -1;
	}
}

int SLMPDriver::select_read_pend(int fd, uint32_t ms)
{
	if(fd <= 0)
	{
		return -1;
	}
    int ret = -1;
    struct timeval tv, *ptv;  
    fd_set rfds;

	ptv = &tv;
	tv.tv_sec = ms/1000;
    tv.tv_usec = (ms % 1000)*1000;
	if (eSELECT_WIAT_FOREVER == ms)
	{
		ptv = NULL;
	}

    FD_ZERO(&rfds);
    FD_SET(fd, &rfds);

    ret = select(fd + 1, &rfds, NULL, NULL, ptv);
	if (ret > 0 && FD_ISSET(fd, &rfds))
	{
		return ret;
	}
	else
	{
		return -1;
	}
}
	
int SLMPDriver::socketSend(uint8_t* data, uint16_t len)
{
	if(sockfd <= 0)
	{
		return -1;
	}
	int ret = send(sockfd, data, len, 0);

	return ret;	
}

int SLMPDriver::socketRecv(uint8_t* recvbuf, uint16_t &len, uint32_t timeout)
{
	int num = 0;
	int ret = -1;


	ret = select_read_pend(sockfd,timeout);
	if(ret < 0)
	{
		if(sockfd > 0)
		{
			close(sockfd);				//6月4号  尝试修改为注释
			sockfd = -1;
		}
		return -1;
	}

	num = recv(sockfd, recvbuf,MAXDATASIZE, 0);
	if(num > 0)
	{
		len = num;
		return 0;
	}
	else
	{
		return -1;
	}
}

int SLMPDriver::sendAndRecv(uint8_t* recv, uint16_t &dataLen)
{
	int ret = -1;
	
	ret = socketSend(message,messageLen);
	if(ret < 0)
	{
		return ret;
	}
	//LOGFMTD("ret:%d - send:%s ",ret, hexstring(message,messageLen).c_str());
	
	ret = socketRecv(recv,dataLen,1000);
	if(ret < 0)
	{
		return ret;
	}
	//LOGFMTD("ret:%d - recv:%s ",ret, hexstring(recv,dataLen).c_str());

	return 0;
}


bool SLMPDriver::read_bit(int addr,int bit_offset,bool &bitVal)
{
	uint16_t out = 0;
	
	if(sockfd<0) return false;
	if(read_register(addr,out))
	{
		if(out & (1 << bit_offset))
		{
			bitVal = true;
		}
		else
		{
			bitVal = false;
		}

		return true;
	}
	else
	{
		return false;
	}
}

bool SLMPDriver::read_register(int addr, uint16_t &out)
{
	int ret = -1;
	uint8_t buff[MAXDATASIZE];
	uint16_t Len = 0;
	uint8_t data[MAXDATASIZE];
	uint16_t dataLen = 0;
	uint8_t reTryCnt = 0;

	if(sockfd<0) return false;

	dopackageReadD(D_REG_CODE,addr,1);

	do
	{
		ret = sendAndRecv(buff,Len);
		reTryCnt++;
	}while((ret<0) && (reTryCnt<2));

	if(ret < 0)
	{
		return false;
	}
	
	if(responseParser(buff,Len,data,dataLen) < 0)
	{
		return false;
	}
	
	out = data[1];
	out <<= 8;
	out |= data[0];

	return true;
}

bool SLMPDriver::write_bit(int addr,int bit_offset,bool val)
{	
	uint16_t out = 0;
	
	if(sockfd<0) return false;
	if(read_register(addr,out))
	{
		if(val)	//置1
		{
			out |= (0x0001 << bit_offset);
		}
		else	//清0
		{
			out &= (~(0x0001 << bit_offset));
		}
		
		if(!write_register(addr,out))
		{
			return false;
		}
	}
	
	return true;
}

bool SLMPDriver::write_register(int addr,uint16_t val)
{
	int ret = -1;
	uint8_t resp[128];
	uint16_t respLen = 0;
	uint8_t reTryCnt = 0;
	
	if(sockfd<0) return false;
	dopackageWriteD(D_REG_CODE, addr,1,&val);

	do
	{
		ret = sendAndRecv(resp,respLen);
		reTryCnt++;
	}while((ret<0) && (reTryCnt<2));

	if(ret < 0)
	{
		return false;
	}

	return true;
}

void SLMPDriver::dopackageReadD(uint8_t code, int addr, uint16_t len)
{
	uint16_t cmd = 0x0401;
	uint16_t subcmd = 0;
	uint16_t index = comm_header_len;
	uint16_t data_field_len = 0;
	
	// |保留|指令码|子指令码|起始地址|软元件码|软元件数|
	memset(message+index,0,2);
	index += 2;
	
	memcpy(message+index, (uint8_t*)&cmd,2);
	index += 2;

	subcmd = 0x0000;	//以字为单位
	memcpy(message+index, (uint8_t*)&subcmd,2);	
	index += 2;
	
	memcpy(message+index, (uint8_t*)&addr,3);
	index += 3;
	
	message[index] = code;
	index++;
	
	memcpy(message+index, (uint8_t*)&len,2);
	index += 2;
	
	messageLen = index;
	data_field_len = messageLen - comm_header_len;
	memcpy(message+ENQ_LEN_SECTER_OFFSET,(uint8_t*)&data_field_len,2);
}

void SLMPDriver::dopackageWriteD(uint8_t code, int addr, uint16_t len, uint16_t* val)
{
	uint16_t cmd = 0x1401;
	uint16_t subcmd = 0;
	uint16_t index = comm_header_len;
	uint16_t data_field_len = 0;
	
	// |保留|指令码|子指令码|起始地址|软元件码|软元件数|写入数据|
	memset(message+index,0,2);
	index += 2;
	
	memcpy(message+index, (uint8_t*)&cmd,2);
	index += 2;
	
	subcmd = 0x0000;	//以字为单位
	memcpy(message+index, (uint8_t*)&subcmd,2);	
	index += 2;
	
	memcpy(message+index, (uint8_t*)&addr,3);
	index += 3;
	
	message[index] = code;	//必须是字软元
	index++;
	
	memcpy(message+index, (uint8_t*)&len,2);
	index += 2;
	
	for(uint16_t i = 0;i < len;i++)
	{
		memcpy(message+index, (uint8_t*)&val[i],2);
		index += 2;
	}
	
	messageLen = index;
	data_field_len = messageLen - comm_header_len;
	memcpy(message+ENQ_LEN_SECTER_OFFSET,(uint8_t*)&data_field_len,2);
}

/*
void SLMPDriver::dopackageWriteBit(uint8_t code, int addr, uint16_t len,uint8_t* val)
{
	uint16_t cmd = 0x1401;
	uint16_t subcmd = 0;
	uint16_t index = comm_header_len;
	uint16_t data_field_len = 0;
	
	// |保留|指令码|子指令码|起始地址|软元件码|软元件数|写入数据|
	memset(message+index,0,2);
	index += 2;
	
	memcpy(message+index, (uint8_t*)&cmd,2);
	index += 2;
	
	subcmd = 0x0001;	//以位为单位
	memcpy(message+index, (uint8_t*)&subcmd,2);	
	index += 2;
	
	memcpy(message+index, (uint8_t*)&addr,3);
	index += 3;
	
	message[index] = code;	//必须是位软元
	index++;
	
	memcpy(message+index, (uint8_t*)&len,2);
	index += 2;
	
	for(uint16_t i = 0;i < (len+1)/2;i++)   //数据的4bit表示1位
	{
		message[index] = val[i];
		index++;
	}
	
	messageLen = index;
	data_field_len = messageLen - comm_header_len;
	memcpy(message+ENQ_LEN_SECTER_OFFSET,(uint8_t*)&data_field_len,2);
}
*/

int SLMPDriver::responseParser(uint8_t* resp,uint16_t len,uint8_t* out,uint16_t &dataLen)
{
	uint16_t index = 0;
	uint16_t data_field_len = 0;

	//此处的i+5 是否会造成数组越界，和李杨讨论下

	// | 帧头 | 网络编号 | 目标站号| 目标IO编号 | 目标多点站号 | 数据长度 | 错误码 | 响应数据 |
	for(int i = 0;i < len;i++)
	{
		if((resp[i] == 0xD0) && (resp[i+1] == 0x00))
		{
			if(i+5 < len)
			{
				if((resp[i+4] == 0xFF)&&(resp[i+5] == 0x03))	
				{
					index = i;
					break;
				}
			}
			else
			{
				return -1;
			}
			
		}
	}
	
	if(index >= len)
	{
		return -1;	//应答数据错误
	}
	
	// 结束代码判断
	if((resp[index+ENQ_LEN_SECTER_OFFSET+2] == 0x00) && (resp[index+ENQ_LEN_SECTER_OFFSET+3] == 0x00))
	{
		data_field_len = resp[index+ENQ_LEN_SECTER_OFFSET+1];
		data_field_len <<= 8;
		data_field_len += resp[index+ENQ_LEN_SECTER_OFFSET];
		
		if(data_field_len > 2)
		{
			memcpy(out,(uint8_t*)&resp[index+ENQ_LEN_SECTER_OFFSET+4],data_field_len-2);
			dataLen = data_field_len-2;
		}
		else
		{
			*out = 0;
			dataLen = 1;
		}
	}
	else
	{
		//TODO
		return -2;	//异常应答帧
	}
	
	return 0;
}


