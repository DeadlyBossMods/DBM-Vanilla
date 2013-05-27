if GetLocale() ~= "zhTW" then return end
local L

---------------------------
--  Hydross the Unstable --
---------------------------
L = DBM:GetModLocalization("Hydross")

L:SetGeneralLocalization{
	name = "不穩定者海卓司"
}

L:SetWarningLocalization{
	WarnMark 		= "%s : %s",
	WarnPhase		= "%s Phase",--Translate
	SpecWarnMark	= "%s : %s",
}

L:SetTimerLocalization{
	TimerMark	= "Next %s : %s"--Translate
}

L:SetOptionLocalization{
	WarnMark		= "提示印記",
	WarnPhase		= "提示階段",
	SpecWarnMark	= "Show warning when Marks debuff damage over 100%",--Translate
	TimerMark		= "Show timer for next Marks",--Translate
	RangeFrame		= "顯示距離框"
}

L:SetMiscLocalization{
	Frost	= "冰霜印記",
	Nature	= "自然印記"
}

-----------------------
--  The Lurker Below --
-----------------------
L = DBM:GetModLocalization("LurkerBelow")

L:SetGeneralLocalization{
	name = "海底潛伏者"
}

L:SetWarningLocalization{
	WarnSubmerge		= "Submerge",--Translate
	WarnSubmergeSoon	= "Submerge in 10 sec",--Translate
	WarnEmerge			= "Emerge",--Translate
	WarnEmergeSoon		= "Emerge in 10 sec"--Translate
}

L:SetTimerLocalization{
	TimerSubmerge		= "潛水",
	TimerEmerge			= "浮現"
}

L:SetOptionLocalization{
	WarnSubmerge		= "Show warning when submerge",--Translate
	WarnSubmergeSoon	= "Show pre-warning for submerge",--Translate
	WarnEmerge			= "Show warning when emerge",--Translate
	WarnEmergeSoon		= "Show pre-warning for emerge",--Translate
	TimerSubmerge		= "Show time for submerge",--Translate
	TimerEmerge			= "Show time for emerge"--Translate
}

L:SetMiscLocalization{
	Spout	= "%s深深的吸了一口氣!"
}

--------------------------
--  Leotheras the Blind --
--------------------------
L = DBM:GetModLocalization("Leotheras")

L:SetGeneralLocalization{
	name = "『盲目者』李奧薩拉斯"
}

L:SetWarningLocalization{
	WarnPhase		= "%s Phase",--Translate
	WarnPhaseSoon	= "%s Phase in 5 sec"--Translate
}

L:SetTimerLocalization{
	TimerPhase	= "Next %s Phase"--Translate
}

L:SetOptionLocalization{
	WarnPhase		= "Show warning for next phase",--Translate
	WarnPhaseSoon	= "Show pre-warning for next phase",--Translate
	TimerPhase		= "Show time for next phase",--Translate
	DemonIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(37676)
}

L:SetMiscLocalization{
	Human		= "Human",--Translate
	Demon		= "Demon",--Translate
	YellDemon	= "消失吧，微不足道的精靈。現在開始由我掌管!",
	YellPhase2	= "不…不!你做了什麼?我是主人!你沒聽見我在說話嗎?我…..啊!無法…控制它。"
}

-----------------------------
--  Fathom-Lord Karathress --
-----------------------------
L = DBM:GetModLocalization("Fathomlord")

L:SetGeneralLocalization{
	name = "深淵之王卡拉薩瑞斯"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
	YellPull	= "Guards, attention! We have visitors....",--Translate
	Caribdis	= "Fathom-Guard Caribdis",--Translate
	Tidalvess	= "Fathom-Guard Tidalvess",--Translate
	Sharkkis	= "Fathom-Guard Sharkkis"--Translate
}

--------------------------
--  Morogrim Tidewalker --
--------------------------
L = DBM:GetModLocalization("Tidewalker")

L:SetGeneralLocalization{
	name = "莫洛葛利姆·潮行者"
}

L:SetWarningLocalization{
	WarnMurlocs		= "魚人出現",
	SpecWarnMurlocs	= "魚人出現!",
}

L:SetTimerLocalization{
	TimerMurlocs	= "魚人出現"
}

L:SetOptionLocalization{
	WarnMurlocs		= "提示魚人",
	SpecWarnMurlocs	= "Show special warning when Murlocs spawning",--Translate
	TimerMurlocs	= "Show timer for Murlocs spawning",--Translate
	GraveIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(38049)
}

L:SetMiscLocalization{
}

-----------------
--  Lady Vashj --
-----------------
L = DBM:GetModLocalization("Vashj")

L:SetGeneralLocalization{
	name = "瓦許女士"
}

L:SetWarningLocalization{
	WarnElemental		= "5秒後 污染的元素! (%s)",
	WarnStrider			= "5秒後 盤牙旅行者! (%s)",
	WarnNaga			= "5秒後 盤牙精英! (%s)",
	WarnShield			= "魔法屏障 %d/4 消失!",
	WarnLoot			= ">%s< 擁有受污染的核心!",
	SpecWarnElemental	= "5秒後 污染的元素!!"
}

L:SetTimerLocalization{
	TimerElemental		= "污染的元素 (%d)",--Verify
	TimerStrider		= "盤牙旅行者 (%d)",--Verify
	TimerNaga			= "盤牙精英 (%d)"--Verify
}

L:SetOptionLocalization{
	WarnElemental		= "Show pre-warning for next Tainted Elemental",--Translate
	WarnStrider			= "Show pre-warning for next Strider",--Translate
	WarnNaga			= "Show pre-warning for next Naga",--Translate
	WarnShield			= "Show warning for Phase 2 shield down",--Translate
	WarnLoot			= "提示誰拾取了受污染的核心",
	TimerElemental		= "Show time for next Tainted Elemental",--Translate
	TimerStrider		= "Show time for next Strider",--Translate
	TimerNaga			= "Show time for next Strider",--Translate
	SpecWarnElemental	= "Show special warning when Tainted Elemental coming",--Translate
	RangeFrame			= "顯示距離框",
	ChargeIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(38280),
	AutoChangeLootToFFA		= "第3階段自動轉換拾取方式為自由拾取"
}

L:SetMiscLocalization{
	DBM_VASHJ_YELL_PHASE2				= "機會來了!一個活口都不要留下!",
	LootMsg				= "(.+)拾取了物品:.*Hitem:(%d+)"
}
