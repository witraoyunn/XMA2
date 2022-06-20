#ifndef _CANSOCKETSTACK_H_
#define _CANSOCKETSTACK_H_

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <deque>
#include "Type.h"
#include "EpollMan.h"

// Define NULL pointer value
#ifndef NULL
#ifdef __cplusplus
#define NULL 0
#else
#define NULL ((void *)0)
#endif
#endif

// 需求：CAN端口可能会收到来自多个节点的分帧数据，在多个节点的分帧数据穿插接收进来后，根据帧标识将多个节点的分帧数据整理合并.
// 思路：建立一条单向链表，链表的一个节点代表CAN总线的一个端点的一个完整数据包，接收到一个分帧数据后将其存储在对应的链表节点中.
 
typedef union
{
	unsigned long extId;
	struct
	{
		unsigned long dst_addr : 8; // 目标地址
		unsigned long src_addr : 8; // 源地址
		unsigned long frameSeq : 8; // 帧序
		unsigned long dev_type : 3; // 器件类型
		unsigned long priority : 2; // 优先级
		unsigned long flag_nul : 3;
	}atr;
}uExtId_t;
 
#pragma pack(push, 1)
typedef struct _sCanData_t
{
	unsigned char dst_addr; // 目标地址
	unsigned char src_addr; // 源地址
	unsigned char frameSeq; // 帧序
	unsigned char dev_type; // 器件类型
	unsigned char priority;	// 优先级
	unsigned char txLen; // 发送字节数
	unsigned char Buf[8]; // 发送缓存区
}sCanData_t;
 
typedef struct _sCanRecvData_t
{
	unsigned char dst_addr; // 目标地址
	unsigned char src_addr; // 源地址
	unsigned char frameSeq; // 帧序
	unsigned char dev_type; // 器件类型
	unsigned char priority;	// 优先级

	unsigned char *pBuf; // 接收缓存
	unsigned short rxLen; // 当前已经接收的字节数
	unsigned short rxTotalLen; // 需要接收的总字节数
}sCanRecvData_t;
 
typedef struct _sCanRecvList_t
{
	struct _sCanRecvData_t *pBuf;
	struct _sCanRecvList_t *pNext;
}sCanRecvList_t;
#pragma pack(pop)

/*
typedef struct _recvData_t
{
	unsigned short len;
	unsigned char data[512];	
}recvData_t;
*/


class CANSocketStack
{
public:
	CANSocketStack();
	~CANSocketStack();

	int can_init(const char *can_name,const char *bitrate);
	void can_close();

	unsigned char CanSendData(unsigned char dst_addr, unsigned char src_addr, unsigned char dev_type, unsigned char priority, const void *p, unsigned int len);
	void OSSemPend();
	void OSSemPost();
	
private:
	sCanRecvList_t *CanNodeSearch(const sCanRecvList_t *pHeadNode, sCanData_t *sCanData);
	sCanRecvList_t *ListCreate(void);
	sCanRecvList_t *ListNodeCreate(sCanData_t *sCanData);
	sCanRecvList_t *ListNodeSearch(const sCanRecvList_t *pHeadNode, const sCanRecvList_t *pSearchNode);
	void ListNodeInsert(const sCanRecvList_t *pHeadNode, sCanRecvList_t * const pNewNode);
	void ListNodeDelete(const sCanRecvList_t *pHeadNode, sCanRecvList_t *pDeleteNode);
	unsigned char CanSendFrame(const void *p, unsigned char len);
	int CanWrite(unsigned char * buf,unsigned char len, unsigned long extId);
	void CanRead(unsigned char * buf,unsigned long len);
	unsigned char CanRecvDataProcess(const void *p, unsigned char len, unsigned long extId);
	int can_port_init(const char *can_name);
	int add_epoll_watch(int can_fd);
	static void* can_recive_task(void* para);
	
public:
	std::deque<recvData_t> recv_queue;

private:
	sCanRecvList_t *sCanRecvListHandle; 
	EpollMan m_epoll_entity;
	pthread_t can_thread;
	pthread_mutex_t can_mutex;
	int m_can_fd;
	
};


#endif

