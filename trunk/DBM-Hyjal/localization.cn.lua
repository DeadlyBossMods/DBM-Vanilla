if GetLocale() ~= "zhCN" then return end

local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization{
	name = "雷基·冬寒"
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
	name = "安纳塞隆"
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
	name = "卡兹洛加"
}

L:SetWarningLocalization{
	WarnMark = "印记 #%d"
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
	name = "阿兹加洛"
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
	YellOnBurst	= "当你收到空气爆裂效果时喊话",
	BurstIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(32014)
}

L:SetMiscLocalization{
	YellBurst	= "空气爆裂要来了！"
}

----------------
-- WaveTimers --
----------------
L = DBM:GetModLocalization("HyjalWaveTimers")

L:SetGeneralLocalization{
	name 		= "普通怪物"
}
L:SetWarningLocalization{
	WarnWave	= "%s",
	WarnWaveSoon= "下一波敌人即将到来"
}
L:SetTimerLocalization{
	TimerWave	= "Next wave"--Translate
}
L:SetOptionLocalization{
	WarnWave		= "Warn when a new wave is incoming",--Translate
	WarnWaveSoon	= "Warn when a new wave is incoming soon",--Translate
	DetailedWave	= "Detailed warning when a new wave is incoming (which mobs)",--Translate
	TimerWave		= "Show a timer for next wave"--Translate
}
L:SetMiscLocalization{
	HyjalZoneName	= "海加尔峰",
	Thrall			= "萨尔",
	Jaina			= "吉安娜·普罗德摩尔",
	RageWinterchill	= "雷基·冬寒",
	Anetheron		= "安纳塞隆",
	Kazrogal		= "卡兹洛加",
	Azgalor			= "阿兹加洛",
	WaveCheck		= "当前波次：(%d+)/8",
	WarnWave_0		= "第%s/8波",
	WarnWave_1		= "第%s/8波 - %s%s",
	WarnWave_2		= "第%s/8波 - %s%s 和 %s%s",
	WarnWave_3		= "第%s/8波 - %s%s, %s%s 和 %s%s",
	WarnWave_4		= "第%s/8波 - %s%s, %s%s, %s%s 和 %s%s",
	WarnWave_5		= "第%s/8波 - %s%s, %s%s, %s%s, %s%s 和 %s%s",
	RageGossip		= "我和我的伙伴们将与您并肩作战，普罗德摩尔女士。",
	AnetheronGossip	= "我们已经准备好对付阿克蒙德的任何爪牙了，普罗德摩尔女士。",
	KazrogalGossip	= "我与你并肩作战，萨尔。",
	AzgalorGossip	= "我们无所畏惧。",
	Ghoul			= "食尸鬼",
	Abomination		= "憎恶",
	Necromancer		= "亡灵巫师",
	Banshee			= "女妖",
	Fiend			= "地穴恶魔",
	Gargoyle		= "石像鬼",
	Wyrm			= "冰霜巨龙",
	Stalker			= "恶魔猎犬",
	Infernal		= "地狱火"
}
