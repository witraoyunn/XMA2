/**************************************************************
* Copyright (C) 2019, �Ϻ�������Ϣ�Ƽ����޹�˾
* All rights reserved.
* ��Ʒ��   :
* ������� :
* ģ������ :
* �ļ����� : CipClient.h
* ��Ҫ���� :
* ��ʷ��¼ :
* �汾      ����          ����           ����
* 1.0       20190712     zhangw
***************************************************************/
#ifndef CIP_CLIENT_H
#define CIP_CLIENT_H

#include "GNSocket.h"
#include <string>
#include "OmronFinsNet.h"

class  CipClient
{
public:
	static CipClient* instance()
	{
		static CipClient m_instance;

		return &m_instance;
	}

public:
	 void initialize(std::string ip, int port);

    bool check_battery_enter();
    bool check_move_battery_finish(int *station_id);
    bool check_request_exit();

    void request_move_battery(bool first);
    void permit_exit();
private:
	CipClient();
    CipClient(const CipClient&);
    CipClient& operator=(const CipClient&);
	~ CipClient();

	OmronFinsNet m_omron_fin_client;

};


#endif // !CIP_CLIENT_H
