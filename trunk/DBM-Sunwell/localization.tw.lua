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
	WarnPortal			= "第 %s 個傳送門: >%s< (第%d隊)",
	SpecWarnWildMagic	= "野性魔法: %s"
}

L:SetTimerLocalization{
	TimerNextPortal		= "傳送門 (%d)"
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
	FrameClose			= "Close"--Translate
}

----------------
--  Brutallus --
----------------
L = DBM:GetModLocalization("Brutallus")

L:SetGeneralLocalization{
	name = "布魯托魯斯"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	BurnIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(46394),
	BurnWhisper		= "Send whisper to $spell:46394 targets (requires Raid Leader)"--Translate
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
	WarnPhase		= "%s Phase",--Translate
	WarnPhaseSoon	= "%s Phase in 10 sec",--Translate
	WarnBreath		= "第%d個深呼吸"
}

L:SetTimerLocalization{
	TimerPhase		= "Next %s Phase",
	TimerBreath		= "下一次深呼吸"
}

L:SetOptionLocalization{
	WarnPhase		= "Show warning for next phase",--Translate
	WarnPhaseSoon	= "Show pre-warning for next phase",--Translate
	WarnBreath		= "Show warning for Deep Breath",--Translate
	TimerPhase		= "Show time for next phase",--Translate
	TimerBreath		= "Show timer for Deep Breath cooldown",--Translate
	VaporIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45392),
	EncapsIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45665),
	YellOnEncaps	= "Yell on $spell:45665"
}

L:SetMiscLocalization{
	Air				= "Air",--Translate
	Ground			= "Ground",--Translate
	YellEncaps		= "Encapsulate on me! Run away!",--Change to generic so we don't have to translate?
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

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	NovaIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45329),
	ConflagIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45333),
	RangeFrame		= "Show range frame (10 yards)",--Translate
	NovaWhisper		= "Send whisper to $spell:45329 target (requires Raid Leader)",--Translate
	ConflagWhisper	= "Send whisper to $spell:45333 target (requires Raid Leader)",--Translate
}

L:SetMiscLocalization{
	NovaWhisper		= "你中了暗影新星!",
	ConflagWhisper	= "你中了燃燒!",
	Nova			= "莎珂蕾希對(.+)施放暗影新星",--Verify
	Conflag			= "艾黎瑟絲對(.+)施放燃燒"--Verify
}

------------
--  M'uru --
------------
L = DBM:GetModLocalization("Muru")

L:SetGeneralLocalization{
	name = "莫魯"
}

L:SetWarningLocalization{
	WarnHuman		= "人型生物 (%d)",
	WarnHumanSoon	= "5秒後 人型生物 (%d)",
	WarnVoid		= "虛無哨兵 (%d)",
	WarnVoidSoon	= "5秒後 虛無哨兵 (%d)",
	WarnFiend		= "黑暗惡魔 出現了"
}

L:SetTimerLocalization{
	TimerHuman		= "人型生物 (%s)",--Translate
	TimerVoid		= "虛無哨兵 (%s)",
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
	RangeFrame		= "Show range frame (10 yards)",--Translate
	BloomIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45641),
	YellOnBloom		= "Yell on $spell:45641",--Translate
	BloomWhisper	= "Send whisper to $spell:45641 target (requires Raid Leader)"--Translate
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
