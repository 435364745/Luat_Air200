require"update"
module(...,package.seeall)

local function upevt(ind,para)
	--���������°汾
	if ind == "NEW_VER_IND" then
		--���������°汾
		para(true)
	--���ؽ���
	elseif ind == "UP_END_IND" then
		sys.restart("updapp end")
	end
end

local procer =
{
	UP_EVT = upevt,
}

sys.regapp(procer)
sys.timer_start(sys.restart,300000,"updapp timeout")
