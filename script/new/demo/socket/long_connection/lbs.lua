module(...,package.seeall)
require"dbg"
dbg.setup("UDP","ota.airm2m.com",9072)

--�Ƿ��ѯGPSλ���ַ�����Ϣ
local qryaddr

--[[
��������print
����  ����ӡ�ӿڣ����ļ��е����д�ӡ�������testǰ׺
����  ����
����ֵ����
]]
local function print(...)
	_G.print("lbs",...)
end

--[[
��������qrygps
����  ����ѯGPSλ������
����  ����
����ֵ����
]]
local function qrygps()
	dbg.saverr("dbg.saverr")
end


--20���ȥ��ѯ��γ�ȣ���ѯ���ͨ���ص�����getgps����
sys.timer_loop_start(qrygps,20000)
