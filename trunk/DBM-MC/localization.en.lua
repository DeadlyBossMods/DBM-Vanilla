local L

----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization{
	name = "Lucifron"
}

----------------
--  Magmadar  --
----------------
L = DBM:GetModLocalization("Magmadar")

L:SetGeneralLocalization{
	name = "Magmadar"
}

----------------
--  Gehennas  --
----------------
L = DBM:GetModLocalization("Gehennas")

L:SetGeneralLocalization{
	name = "Gehennas"
}

------------
--  Garr  --
------------
L = DBM:GetModLocalization("Garr-Classic")

L:SetGeneralLocalization{
	name = "Garr (Classic)"
}

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization{
	name = "Baron Geddon"
}

L:SetOptionLocalization{
	SetIconOnBombTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(20475)
}

----------------
--  Shazzrah  --
----------------
L = DBM:GetModLocalization("Shazzrah")

L:SetGeneralLocalization{
	name = "Shazzrah"
}

----------------
--  Sulfuron  --
----------------
L = DBM:GetModLocalization("Sulfuron")

L:SetGeneralLocalization{
	name = "Sulfuron Harbinger"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "Golemagg the Incinerator"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "Majordomo Executus"
}

L:SetMiscLocalization{
	Kill	= "Impossible! Stay your attack, mortals... I submit! I submit!"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "Ragnaros (Classic)"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Submerge",
	WarnSubmergeSoon	= "Submerge soon",
	WarnEmerge			= "Emerge",
	WarnEmergeSoon		= "EmergeSoon"
}
L:SetTimerLocalization{
	TimerCombatStart	= "Combat starts",
	TimerSubmerge		= "Submerge",
	TimerEmerge			= "Emerge"
}
L:SetOptionLocalization{
	TimerCombatStart	= "Show time for start of combat",
	WarnSubmerge		= "Show warning for submerge",
	WarnSubmergeSoon	= "Show pre-warning for submerge",
	TimerSubmerge		= "Show timer for submerge",
	WarnEmerge			= "Show warning for emerge",
	WarnEmergeSoon		= "Show pre-warning for emerge",
	TimerEmerge			= "Show timer for emerge"
}
L:SetMiscLocalization{
	Submerge	= "COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!",
	Pull		= "Impudent whelps! You've rushed headlong to your own deaths! See now, the master stirs!\r\n"
}