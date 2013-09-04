if GetLocale() ~= "zhTW" then return end
local L

-----------------
--  Najentus  --
-----------------
L = DBM:GetModLocalization("Najentus")

L:SetGeneralLocalization{
	name = "高階督軍納珍塔斯"
}

L:SetOptionLocalization{
	RangeFrame	= "顯示距離框架(10碼)",
	InfoFrame	= "為血量顯示訊息框架(小於8.8千血量)"
}

----------------
-- Supremus --
----------------
L = DBM:GetModLocalization("Supremus")

L:SetGeneralLocalization{
	name = "瑟普莫斯"
}

L:SetWarningLocalization{
	WarnPhase		= "%s階段",
	WarnPhaseSoon	= "10秒後%s階段",
	WarnKite		= ">%s<被注視了"
}

L:SetTimerLocalization{
	TimerPhase		= "下一次%s階段"
}

L:SetOptionLocalization{
	WarnPhase		= "為下個階段顯示警告",
	WarnPhaseSoon	= "為下個階段顯示預先警告",
	WarnKite		= "提示注視目標",
	TimerPhase		= "為下個階段顯示計時器",
	KiteIcon		= "為注視目標設置圖示",
	KiteWhisper		= "傳送密語給注視的目標(需要團隊隊長)"
}

L:SetMiscLocalization{
	PhaseKite		= "瑟普莫斯憤怒的捶擊地面!",
	PhaseTank		= "地上開始裂開!",
	ChangeTarget	= "瑟普莫斯需要一個新目標!",
	KiteWhisper		= "瑟普莫斯正在注視你！快逃！",
	Kite			= "風箏",
	Tank			= "坦克"
}

-------------------------
--  Shape of Akama  --
-------------------------
L = DBM:GetModLocalization("Akama")

L:SetGeneralLocalization{
	name = "阿卡瑪的黑暗面"
}

-------------------------
--  Teron Gorefiend  --
-------------------------
L = DBM:GetModLocalization("TeronGorefiend")

L:SetGeneralLocalization{
	name = "泰朗·血魔"
}

L:SetTimerLocalization{
	TimerVengefulSpirit	= "鬼魂:%s"
}

L:SetOptionLocalization{
	TimerVengefulSpirit	= "為鬼魂持續時間顯示計時器"
}

----------------------------
--  Gurtogg Bloodboil  --
----------------------------
L = DBM:GetModLocalization("Bloodboil")

L:SetGeneralLocalization{
	name = "葛塔格·血沸"
}

L:SetWarningLocalization{
	WarnRageEnd		= "惡魔之怒結束"
}

L:SetTimerLocalization{
	TimerRageEnd	= "惡魔之怒"
}

L:SetOptionLocalization{
	WarnRageEnd		= "為$spell:40604結束顯示警告",
	TimerRageEnd	= "為$spell:40604顯示計時器"
}

--------------------------
--  Essence Of Souls  --
--------------------------
L = DBM:GetModLocalization("Souls")

L:SetGeneralLocalization{
	name = "靈魂聖匣"
}

L:SetWarningLocalization{
	WarnEnrage		= "狂怒",
	WarnEnrageSoon	= "即將狂怒",
	WarnEnrageEnd	= "狂怒結束 - 32秒後下一次",
	WarnMana		= "30秒後法力用盡"
}

L:SetTimerLocalization{
	TimerEnrage		= "狂怒",
	TimerNextEnrage	= "下一次狂怒",
	TimerMana		= "法力耗盡"
}

L:SetOptionLocalization{
	WarnEnrage		= "為狂怒顯示警告",
	WarnEnrageSoon	= "為狂怒顯示預先警告",
	WarnEnrageEnd	= "為狂怒結束顯示警告",
	WarnMana		= "在第二階段耗盡法力顯示警告",
	TimerEnrage		= "為狂怒顯示計時器",
	TimerNextEnrage	= "為下一次狂怒顯示計時器",
	TimerMana		= "在第二階段法力耗盡顯示計時器",
	SpiteWhisper	= "傳送密語給中了$spell:41376的目標(需要團隊隊長)"
}

L:SetMiscLocalization{
	Pull			= "等待你們的只有痛苦與折磨﹗",
	Enrage			= "%s暴怒了起來!",
	SpiteWhisper	= "你中了惡意!",
	Suffering		= "受難精華",
	Desire			= "慾望精華",
	Anger			= "憤怒精華"
}

-----------------------
--  Mother Shahraz --
-----------------------
L = DBM:GetModLocalization("Shahraz")

L:SetGeneralLocalization{
	name = "薩拉茲女士"
}

L:SetOptionLocalization{
	FAWhisper	= "傳送密語給$spell:41001的目標(需要團隊隊長)"
}

L:SetMiscLocalization{
	FAWhisper	= "你中了致命的吸引力!"
}

----------------------
--  Illidari Council  --
----------------------
L = DBM:GetModLocalization("Council")

L:SetGeneralLocalization{
	name = "伊利達瑞議會"
}

L:SetWarningLocalization{
	WarnFadeSoon	= "5秒後消失退去",
	WarnFaded		= "消失退去",
	WarnDevAura		= "虔誠光環開啟30秒",
	WarnResAura		= "多重抗性光環開啟30秒",
	Immune			= "瑪蘭黛 - %s免疫15秒"
}

L:SetOptionLocalization{
	WarnFadeSoon	= "為消失退去五秒前顯示警告",
	WarnFaded		= "為$spell:41476退去顯示警告",
	WarnDevAura		= "為$spell:41452顯示警告",
	WarnResAura		= "為$spell:41453顯示警告",
	Immune			= "當瑪蘭黛法術或物理免疫時顯示警告",
	PoisonWhisper	= "傳送密語給中了$spell:41485的目標(需要團隊隊長)"
}

L:SetMiscLocalization{
	Gathios			= "粉碎者高希歐",
	Malande			= "瑪蘭黛女士",
	Zerevor			= "高等虛空術師札瑞佛",
	Veras			= "維拉斯·深影",
	Melee			= "物理",
	Spell			= "法術",
	PoisonWhisper	= "你中了致命毒藥!"
}

-------------------------
--  Illidan Stormrage --
-------------------------
L = DBM:GetModLocalization("Illidan")

L:SetGeneralLocalization{
	name = "伊利丹·怒風"
}

L:SetWarningLocalization{
	WarnPhase2Soon	= "第2階段即將到來",
	WarnPhase4Soon	= "第4階段即將到來",
	WarnHuman		= "人形階段即將到來",
	WarnHumanSoon	= "人形階段",
	WarnDemon		= "惡魔階段",
	WarnDemonSoon	= "惡魔階段即將到來"
}

L:SetTimerLocalization{
	TimerCombatStart	= "戰鬥開始",
	TimerNextHuman		= "人形階段",
	TimerNextDemon		= "惡魔階段",
	TimerPhase4			= "階段轉換"
}

L:SetOptionLocalization{
	WarnPhase2Soon	= "為第2階段轉換顯示預先警告(大約75%)",
	WarnPhase4Soon	= "為第4階段轉換顯示預先警告(大約35%)",
	WarnHuman		= "為人形階段顯示警告",
	WarnHumanSoon	= "為人形階段顯示預先警告",
	WarnDemon		= "為惡魔階段顯示計時器",
	WarnDemonSoon	= "為惡魔階段顯示預先警告",
	TimerCombatStart= "為戰鬥開始顯示計時器",
	TimerNextHuman	= "為下一次人形階段顯示計時器",
	TimerNextDemon	= "為下一次惡魔階段顯示計時器",
	TimerPhase4		= "為第4階段轉換顯示計時器",
	ParasiteWhisper	= "傳送密語給中了$spell:41917的目標(需要團隊隊長)",
	RangeFrame		= "為第3第4階段顯示距離框架(10碼)"
}

L:SetMiscLocalization{
	Pull			= "阿卡瑪。你的謊言真是老套。我很久前就應該殺了你和你那些畸形的同胞。",
	Eyebeam			= "直視背叛者的雙眼吧!",
	Demon			= "感受我體內的惡魔之力吧!",
	Phase4			= "你們就這點本事嗎?這就是你們全部的能耐?",
	ParasiteWhisper	= "你中了暗影惡魔!"
}
