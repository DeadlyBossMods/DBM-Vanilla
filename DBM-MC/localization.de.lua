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
L = DBM:GetModLocalization("Garr")

L:SetGeneralLocalization{
	name = "Garr"
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
L:SetWarningLocalization{
	WarnP2Soon	= "Phase 2 bald"
}
L:SetOptionLocalization{
	WarnP2Soon 	= "Warnung bei baldigem Beginn von Phase 2"
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
L = DBM:GetModLocalization("Ragnaros")

L:SetGeneralLocalization{
	name = "Ragnaros"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Abtauchen",
	WarnSubmergeSoon	= "Abtauchen bald",
	WarnEmerge			= "Auftauchen",
	WarnEmergeSoon		= "Auftauchen bald"
}
L:SetTimerLocalization{
	TimerCombatStart	= "Kampf beginnt",
	TimerSubmerge		= "Abtauchen",
	TimerEmerge			= "Auftauchen"
}
L:SetOptionLocalization{
	TimerCombatStart	= "Zeige Zeit bis zum Beginn des Kampfes",
	WarnSubmerge		= "Zeige Warnung für Abtauchen",
	WarnSubmergeSoon	= "Zeige Vorwarnung für Abtauchen",
	TimerSubmerge		= "Zeige Timer für Abtauchen",
	WarnEmerge			= "Zeige Warnung für Auftauchen",
	WarnEmergeSoon		= "Zeige Vorwarnung für Auftauchen",
	TimerEmerge			= "Zeige Timer für Auftauchen"
}
L:SetMiscLocalization{
	Submerge	= "Kommt herbei, meine Diener! Verteidigt euren Herren!", -- needs translation / unverified translation (current translation source: GTDB)
	Pull		= "Unverschämte Welpen! Ihr seid sehenden Auges dem Tod in die Arme gelaufen! Seht her, der Meister regt sich!"
}