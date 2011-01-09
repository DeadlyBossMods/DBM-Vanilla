if GetLocale() ~= "deDE" then return end

local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "Der Prophet Skeram"
}

L:SetOptionLocalization{
	SetIconOnMC		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(785)
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "Käferfamilie"
}
L:SetMiscLocalization{
	Yauj = "Prinzessin Yauj",
	Vem = "Vem",
	Kri = "Lord Kri"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "Schlachtwache Sartura"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "Fankriss der Unnachgiebige"
}
L:SetWarningLocalization{
	WarnWound	= "%s auf >%s< (%s)"
}
L:SetOptionLocalization{
	WarnWound = DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(25646, GetSpellInfo(25646) or "unknown")
}
--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "Viscidus"
}
L:SetWarningLocalization{
	WarnFreeze	= "Einfrieren: %d/3",
	WarnShatter	= "Zerspringen: %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Verkünde Einfrieren Status",
	WarnShatter	= "Verkünde Zerspringen Status",
}
L:SetMiscLocalization{
	Phase4 	= "geht die Puste aus!",
	Phase5 	= "ist kurz davor, zu zerspringen.",
	Phase6 	= "Explodes."	-- needs translation
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "Prinzessin Huhuran"
}
L:SetWarningLocalization{
	WarnAcid	= "%s auf >%s< (%s)"
}
L:SetOptionLocalization{
	WarnAcid	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(26180, GetSpellInfo(26180) or "unknown")
	}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "Zwillingsimperatoren"
}
L:SetMiscLocalization{
	Veklor = "Imperator Vek'lor",
	Veknil = "Imperator Vek'nilash"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "C'Thun"
}
L:SetOptionLocalization{
	RangeFrame	= "Zeige Abstandsfenster"
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "Ouro"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Abtauchen",
	WarnEmerge			= "Auftauchen",
	WarnSubmergeSoon	= "Abtauchen bald",
	WarnEmergeSoon		= "Auftauchen bald"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Abtauchen",
	TimerEmerge			= "Auftauchen"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Zeige Warnung für Abtauchen",
	WarnSubmergeSoon	= "Zeige Vorwarnung für Abtauchen",
	TimerSubmerge		= "Zeige Timer für Abtauchen",
	WarnEmerge			= "Zeige Warnung für Auftauchen",
	WarnEmergeSoon		= "Zeige Vorwarnung für Auftauchen",
	TimerEmerge			= "Zeige Timer für Auftauchen"
}