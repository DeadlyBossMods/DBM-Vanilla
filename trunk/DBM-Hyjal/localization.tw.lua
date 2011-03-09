if GetLocale() ~= "zhTW" then return end

local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization{
	name = "瑞齊·凜冬"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	IceBoltIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(31249)
}

L:SetMiscLocalization{
}

-----------------
--  Anetheron  --
-----------------
L = DBM:GetModLocalization("Anetheron")

L:SetGeneralLocalization{
	name = "安納塞隆"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
}

----------------
--  Kazrogal  --
----------------
L = DBM:GetModLocalization("Kazrogal")

L:SetGeneralLocalization{
	name = "卡茲洛加"
}

L:SetWarningLocalization{
	WarnMark = "卡茲洛加的印記 #%d"
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	WarnMark = "Show warning for $spell:31447"--Translate
}

L:SetMiscLocalization{
}

---------------
--  Azgalor  --
---------------
L = DBM:GetModLocalization("Azgalor")

L:SetGeneralLocalization{
	name = "亞茲加洛"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	DoomIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(31347)
}

L:SetMiscLocalization{
}

------------------
--  Archimonde  --
------------------
L = DBM:GetModLocalization("Archimonde")

L:SetGeneralLocalization{
	name = "阿克蒙德"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	YellOnBurst	= "當空氣炸裂施放在你身上時大叫",
	BurstIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(32014)
}

L:SetMiscLocalization{
	YellBurst	= "空氣炸裂要來了!你們快跑!"
}

----------------
-- WaveTimers --
----------------
L = DBM:GetModLocalization("HyjalWaveTimers")

L:SetGeneralLocalization{
	name 		= "小怪模組"
}
L:SetWarningLocalization{
	WarnWave	= "%s",
	WarnWaveSoon= "下一波小怪即將到來"
}
L:SetTimerLocalization{
	TimerWave	= "下一波"
}
L:SetOptionLocalization{
	WarnWave		= "Warn when a new wave is incoming",--Translate
	WarnWaveSoon	= "Warn when a new wave is incoming soon",--Translate
	DetailedWave	= "Detailed warning when a new wave is incoming (which mobs)",--Translate
	TimerWave		= "Show a timer for next wave"--Translate
}
L:SetMiscLocalization{
	HyjalZoneName	= "海加爾山",
	Thrall			= "索爾",
	Jaina			= "珍娜·普勞德摩爾女士",
	RageWinterchill	= "瑞齊·凜冬",
	Anetheron		= "安納塞隆",
	Kazrogal		= "卡茲洛加",
	Azgalor			= "亞茲加洛",
	WaveCheck		= "目前波數 = (%d+)/8",
	WarnWave_0		= "第 %s/8 波",
	WarnWave_1		= "第 %s/8 波 - %s %s",
	WarnWave_2		= "第 %s/8 波 - %s %s 和 %s %s",
	WarnWave_3		= "第 %s/8 波 - %s %s, %s %s 和 %s %s",
	WarnWave_4		= "第 %s/8 波 - %s %s, %s %s, %s %s 和 %s %s",
	WarnWave_5		= "第 %s/8 波 - %s %s, %s %s, %s %s, %s %s 和 %s %s",
	RageGossip		= "我和我的同伴都與你同在，普勞德摩爾女士。",
	AnetheronGossip	= "不管阿克蒙德要派誰來對付我們，我們都已經準備好了，普勞德摩爾女士。",
	KazrogalGossip	= "我與你同在，索爾。",
	AzgalorGossip	= "我們無所畏懼。",
	Ghoul			= "食屍鬼",
	Abomination		= "憎惡",
	Necromancer		= "死靈法師",
	Banshee			= "女妖",
	Fiend			= "地穴惡魔",
	Gargoyle		= "石像鬼",
	Wyrm			= "冰龍",
	Stalker			= "惡魔捕獵者",
	Infernal		= "巨型地獄火"
}
