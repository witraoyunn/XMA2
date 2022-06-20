#ifndef PINSGROUP_AXMPRECHARGE_H_
#define PINSGROUP_AXMPRECHARGE_H_
#include <bitset>
#include "Type.h"
#include "SLMPDriver.h"

#if defined(AXM_PRECHARGE_SYS)

class PinsGroup_AXMPreCharge
{
public:
	PinsGroup_AXMPreCharge();
	~PinsGroup_AXMPreCharge();
	
	bool do_plc_connect(const char *ip,int port);
	bool is_connected();
	void close_connect();

	//��ѹ�쳣״̬ 
	bool get_sys_pressur_alarm();
	//ϵͳ�쳣״̬
	bool get_sys_stop_alarm();
	//PLC�����쳣״̬
	bool get_sys_heart_alarm();
	// �����쳣״̬
	bool get_sys_dor_alarm();
	// �����������г�ʱ�쳣
	bool get_move_uptimeout_alarm();
	// �����������г�ʱ�쳣
	bool get_move_downtimeout_alarm();
	// ���̷����쳣
	bool get_tray_reverse_alarm();
	// �������쳣
	bool get_no_tray_alarm();
	// ����δ��λ�쳣
	bool get_tray_not_ready_alarm();
	// �ŷ�������쳣
	bool get_fan_overload_alarm();
	// ��Ͳ�����쳣
	bool get_roller_overload_alarm();
	// ��Ͳ��ⳬʱ�쳣
	bool get_roller_run_timeout_alarm();
	// ��Ͳ���ⳬʱ
	bool get_roller_reverse_run_timeout_alarm();
	// ����ŷ����쳣
	bool get_left_fan_alarm();
	// �Ҳ��ŷ����쳣
	bool get_right_fan_alarm();
	// �����ŷ����쳣
	bool get_top_fan_alarm();
	// �̸и澯1
	bool get_smake1_alarm();
	// �̸и澯2
	bool get_smake2_alarm();
	// ����̸и澯
	bool get_cab_smake_alarm();
	// �봲��и澯
	bool get_pin_smake_alarm();
	// �봲Ũ�и澯
	bool get_pin_smake_heavy_alarm();
	// ���¸澯
	bool get_high_temp_alarm();
	// ��������
	bool get_heartbeat();
	// ����ѹ�ϵ�λ״̬
	bool tray_is_extend();
	// �����ѿ���λ״̬
	bool tray_is_retract();
	// ��װȡ��״̬
	bool tool_power_onoff();
	// ��ȴ����״̬
	bool cool_fan_onoff();
	// ����״̬
	bool air_fan_onoff();
	// ���Զ�ģʽ
	bool plc_mode();
	// ��ʼ�����
	bool plc_is_loaded();
	// ������λ״̬
	bool tray_is_ready();
	// �Զ�����״̬
	bool is_auto_start();
	// ��������
	bool set_tray_moveup();
	// �����½�
	bool set_tray_movedown();
	// ��װȡ�翪
	bool set_tool_power_on();
	// ��װȡ���
	bool set_tool_power_off();
	// ��ȴ���ȿ�
	bool set_cool_fan_on();
	// ��ȴ���ȹ�
	bool set_cool_fan_off();
	// ������
	bool set_air_fan_on();
	// ������
	bool set_air_fan_off();
	// ����澯
	bool set_clear_alarm();
	// ��ʼ������
	bool set_load();
	// �Զ���������
	bool set_auto_start();
	// ֹͣ����
	bool set_stop();
	// ��λ�¶�
	bool set_cell_temp(float temp[CELL_TEMP_ACQ_NUM]);
	// ���ÿ�λ�¶ȸ澯��ֵ
	bool set_cell_temp_waring(float temp);
	// ��ȡ��λ�¶ȸ澯��ֵ
	uint16_t get_cell_temp_waring();
	//�������״̬
	uint16_t get_incell_onoff();
	// ��⵽λ֪ͨ
	uint16_t is_incell_status();
	// ����״̬��Ϣ
	bool incell_tray_info(uint16_t val);
	// ֪ͨ���̳���
	bool set_outcell_onoff();
	// ���̳������
	uint16_t is_outcell_status();
	//��ȡ����״̬
	bool get_error_code(Fx_Error_Code_t &err_code);
	//��ȡ״̬����
	bool get_status_data(Pins_Status_Data_t &status);

private:
	SLMPDriver m_slmp_dev;
	int heart_timeout_cnt;
	bool is_plc_connected;
};
#endif
#endif


