if GetLocale() ~= "zhTW" then return end
local L

---------------
--  Kalecgos --
---------------
L = DBM:GetModLocalization("Kal")

L:SetGeneralLocalization{
	name = "卡雷苟斯"
}

L:SetWarningLocalization{
	WarnPortal			= "第%s個傳送門:>%s<(第%d隊)",
	SpecWarnWildMagic	= "野性魔法:%s"
}

L:SetTimerLocalization{
	TimerNextPortal		= "傳送門(%d)"
}

L:SetOptionLocalization{
	WarnPortal			= "Show warning for $spell:46021 target",--Translate
	SpecWarnWildMagic	= "Show special warning for Wild Magic",--Translate
	TimerNextPortal		= "Show timer for portals",--Translate
	RangeFrame			= "Show range frame (10 yards)",--Translate
	ShowFrame			= "Show Spectral Realm frame" ,--Translate
	FrameClassColor		= "Use class colors in Spectral Realm frame",--Translate
	FrameUpwards		= "Expand Spectral Realm frame upwards",--Translate
	FrameLocked			= "Set Spectral Realm frame not movable"--Translate
}

L:SetMiscLocalization{
	Demon				= "『墮落者』塞斯諾瓦",
	Heal				= "+100%治療",
	Haste				= "+100%施法時間",
	Hit					= "-50%命中機率",
	Crit				= "+100%爆擊傷害",
	Aggro				= "+100%仇恨值",
	Mana				= "-50%法術消耗",
	FrameTitle			= "鬼靈國度",
	FrameLock			= "鎖定框架",
	FrameClassColor		= "使用職業顏色",
	FrameOrientation	= "向上延伸",
	FrameHide			= "隱藏框架",
	FrameClose			= "關閉"--Translate
}

----------------
--  Brutallus --
----------------
L = DBM:GetModLocalization("Brutallus")

L:SetGeneralLocalization{
	name = "布魯托魯斯"
}

L:SetOptionLocalization{
	BurnWhisper		= "傳送密語給中了$spell:46394的目標(需要團隊隊長)"
}

L:SetMiscLocalization{
	Pull			= "啊，更多待宰的小羊們!",
	BurnWhisper		= "Burn on you!"--Translate
}

--------------
--  Felmyst --
--------------
L = DBM:GetModLocalization("Felmyst")

L:SetGeneralLocalization{
	name = "魔龍謎霧"
}

L:SetWarningLocalization{
	WarnPhase		= "%s階段",--Translate
	WarnPhaseSoon	= "10秒後%s階段",--Translate
}

L:SetTimerLocalization{
	TimerPhase		= "下一次%s階段",
}

L:SetOptionLocalization{
	WarnPhase		= "為下個階段顯示警告",
	WarnPhaseSoon	= "為下個階段顯示預先警告",
	TimerPhase		= "為下個階段顯示計時器",
	YellOnEncaps	= "當你中了$spell:45665大喊"
}

L:SetMiscLocalization{
	Air				= "空中",
	Ground			= "地面",
	YellEncaps		= "我中了壓縮!遠離我!",
	AirPhase		= "I am stronger than ever before!",--Translate
	Breath			= "%s深深地吸了一口氣"
}

-----------------------
--  The Eredar Twins --
-----------------------
L = DBM:GetModLocalization("Twins")

L:SetGeneralLocalization{
	name = "埃雷達爾雙子"
}

L:SetOptionLocalization{
	RangeFrame		= "顯示距離框架(10碼)",
	NovaWhisper		= "傳送密語給中了$spell:45329的目標(需要團隊隊長)",
	ConflagWhisper	= "傳送密語給中了$spell:45333的目標(需要團隊隊長)"
}

L:SetMiscLocalization{
	NovaWhisper		= "你中了暗影新星!",
	ConflagWhisper	= "你中了燃燒!",
	Nova			= "莎珂蕾希對(.+)施放暗影新星",
	Conflag			= "艾黎瑟絲對(.+)施放燃燒"
	Sacrolash		= "莎珂蕾希女士",
	Alythess		= "大術士艾黎瑟絲"
}

------------
--  M'uru --
------------
L = DBM:GetModLocalization("Muru")

L:SetGeneralLocalization{
	name = "莫魯"
}

L:SetWarningLocalization{
	WarnHuman		= "人型生物(%d)",
	WarnHumanSoon	= "5秒後人型生物(%d)",
	WarnVoid		= "虛無哨兵(%d)",
	WarnVoidSoon	= "5秒後虛無哨兵(%d)",
	WarnFiend		= "黑暗惡魔出現了"
}

L:SetTimerLocalization{
	TimerHuman		= "人型(%s)",
	TimerVoid		= "虛無哨兵(%s)",
	TimerPhase		= "安卓普斯"
}

L:SetOptionLocalization{
	WarnHuman		= "Show warning for Humanoids",--Translate
	WarnHumanSoon	= "Show pre-warning for Humanoids",--Translate
	WarnVoid		= "Show warning for Void Sentinels",--Translate
	WarnVoidSoon	= "Show pre-warning for Void Sentinels",--Translate
	WarnFiend		= "Show warning for Fiends in phase 2",--Translate
	TimerHuman		= "Show timer for Humanoids",--Translate
	TimerVoid		= "Show timer for Void Sentinels",--Translate
	TimerPhase		= "Show time for Phase 2 transition"--Translate
}

L:SetMiscLocalization{
	Entropius		= "安卓普斯"
}

----------------
--  Kil'jeden --
----------------
L = DBM:GetModLocalization("Kil")

L:SetGeneralLocalization{
	name = "基爾加丹"
}

L:SetWarningLocalization{
	WarnDarkOrb		= "Dark Orbs Spawned",--Translate
	WarnBlueOrb		= "Dragon Orb activated",--Translate
	SpecWarnDarkOrb	= "Dark Orbs Spawned!",--Translate
	SpecWarnBlueOrb	= "Dragon Orbs Activated!"--Translate
}

L:SetTimerLocalization{
	TimerBlueOrb	= "Dragon Orbs activate"--Translate
}

L:SetOptionLocalization{
	WarnDarkOrb		= "Show warning for Dark Orbs",--Translate
	WarnBlueOrb		= "Show warning for Dragon Orbs",--Translate
	SpecWarnDarkOrb	= "Show special warning for Dark Orbs",--Translate
	SpecWarnBlueOrb	= "Show special warning for Dragon Orbs",--Translate
	TimerBlueOrb	= "Show timer form Dragon Orbs activate",--Translate
	RangeFrame		= "顯示距離框架(10碼)",
	YellOnBloom		= "你中了$spell:45641時大喊",
	BloomWhisper	= "傳送密語給中了$spell:45641的目標(需要團隊隊長)"
}

L:SetMiscLocalization{
	YellPull		= "該犧牲的都已經結束了，就任他們去吧!現在我將完成薩格拉斯都辦不到的事!我要搾乾這個悲慘的世界，並確保我",
	YellBloom		= "Fire Bloom on me!",--Translate
	BloomWhisper	= "Fire Bloom on you!",--Translate
	OrbYell1		= "I will channel my powers into the orbs! Be ready!",--Translate
	OrbYell2		= "I have empowered another orb! Use it quickly!",--Translate
	OrbYell3		= "Another orb is ready! Make haste!",--Translate
	OrbYell4		= "I have channeled all I can! The power is in your hands!"--Translate

}
