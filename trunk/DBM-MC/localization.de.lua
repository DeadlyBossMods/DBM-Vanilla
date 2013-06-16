if GetLocale() ~= "deDE" then return end
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
	name = "Sulfuronherold"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "Golemagg der Verbrenner"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "Majordomus Exekutus"
}

L:SetMiscLocalization{
	Kill	= "Unmöglich! Haltet ein, Sterbliche... Ich gebe auf! Ich gebe auf!"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "Ragnaros (Classic)"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Abtauchen",
	WarnSubmergeSoon	= "Abtauchen bald",
	WarnEmerge			= "Auftauchen",
	WarnEmergeSoon		= "Auftauchen bald"
}
L:SetTimerLocalization{
	TimerCombatStart	= "Kampfbeginn",
	TimerSubmerge		= "Abtauchen",
	TimerEmerge			= "Auftauchen"
}
L:SetOptionLocalization{
	TimerCombatStart	= "Zeige Zeit bis Kampfbeginn",
	WarnSubmerge		= "Zeige Warnung für Abtauchen",
	WarnSubmergeSoon	= "Zeige Vorwarnung für Abtauchen",
	TimerSubmerge		= "Zeige Zeit bis Abtauchen",
	WarnEmerge			= "Zeige Warnung für Auftauchen",
	WarnEmergeSoon		= "Zeige Vorwarnung für Auftauchen",
	TimerEmerge			= "Zeige Zeit bis Auftauchen"
}
L:SetMiscLocalization{
	Submerge	= "KOMMT HERBEI, MEINE DIENER! VERTEIDIGT EUREN HERRN!",
	Pull		= "Unverschämte Welpen! Ihr seid sehenden Auges dem Tod in die Arme gelaufen! Seht her, der Meister regt sich!"
}