if GetLocale() ~= "deDE" then return end
local L

---------------------------
--  Hydross the Unstable --
---------------------------
L = DBM:GetModLocalization("Hydross")

L:SetGeneralLocalization{
	name = "Hydross der Unstete"
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
	WarnMark		= "Mark ansagen",
	WarnPhase		= "Phasen ansagen",
	SpecWarnMark	= "Show warning when Marks debuff damage over 100%",--Translate
	TimerMark		= "Show timer for next Marks",--Translate
	RangeFrame		= "Range Check Frame anzeigen"
}

L:SetMiscLocalization{
	Frost	= "Frost",
	Nature	= "Natur"
}

-----------------------
--  The Lurker Below --
-----------------------
L = DBM:GetModLocalization("LurkerBelow")

L:SetGeneralLocalization{
	name = "Das Grauen aus der Tiefe"
}

L:SetWarningLocalization{
	WarnSubmerge		= "Untergetaucht",
	WarnSubmergeSoon	= "Untertauchen in 10 sec",--Verify
	WarnEmerge			= "Aufgetaucht",
	WarnEmergeSoon		= "Aufgetauchen in 10 sec"--Verify
}

L:SetTimerLocalization{
	TimerSubmerge		= "Untertauchen",
	TimerEmerge			= "Aufgetauchen"--Verify
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
	Spout	= "%s atmet tief ein!"
}

--------------------------
--  Leotheras the Blind --
--------------------------
L = DBM:GetModLocalization("Leotheras")

L:SetGeneralLocalization{
	name = "盲眼者莱欧瑟拉斯"
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
	YellDemon	= "Hinfort, unbedeutender Elf%.%s*Ich habe jetzt die Kontrolle!",
	YellPhase2	= "Nein... nein! Was habt Ihr getan? Ich bin der Meister! Hört Ihr? Ich! Ich bin... aaaaah! Ich kann ihn... nicht aufhalten..."
}

-----------------------------
--  Fathom-Lord Karathress --
-----------------------------
L = DBM:GetModLocalization("Fathomlord")

L:SetGeneralLocalization{
	name = "Tiefenlord Karathress"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
	YellPull	= "Achtung, Wachen! Wir haben Besuch...",
	Caribdis	= "Fathom-Guard Caribdis",--Translate
	Tidalvess	= "Fathom-Guard Tidalvess",--Translate
	Sharkkis	= "Fathom-Guard Sharkkis"--Translate
}

--------------------------
--  Morogrim Tidewalker --
--------------------------
L = DBM:GetModLocalization("Tidewalker")

L:SetGeneralLocalization{
	name = "Morogrim Gezeitenwandler"
}

L:SetWarningLocalization{
	WarnMurlocs		= "Murlocs",
	SpecWarnMurlocs	= "Murlocs!",
}

L:SetTimerLocalization{
	TimerMurlocs	= "Murlocs"
}

L:SetOptionLocalization{
	WarnMurlocs		= "Murlocs ansagen",
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
	name = "Lady Vashj"
}

L:SetWarningLocalization{
	WarnElemental		= "Besudelter Elementar in 5 Sek (%s)",
	WarnStrider			= "Schreiter in 5 Sek (%s)",
	WarnNaga			= "Naga in 5 Sek (%s)",
	WarnShield			= "Schild %d/4 down",
	WarnLoot			= ">%s< hat den Besudelten Kern",
	SpecWarnElemental	= "Besudelter Elementar in 5 Sek!",
	SpecWarnCore		= "Du hast den Besudelten Kern!"
}

L:SetTimerLocalization{
	TimerElemental		= "Besudelter Elementar (%d)",--Verify
	TimerStrider		= "Schreiter (%d)",--Verify
	TimerNaga			= "Next Naga (%d)"--Translate
}

L:SetOptionLocalization{
	WarnElemental		= "Show pre-warning for next Tainted Elemental",--Translate
	WarnStrider			= "Show pre-warning for next Strider",--Translate
	WarnNaga			= "Show pre-warning for next Naga",--Translate
	WarnShield			= "Show warning for Phase 2 shield down",--Translate
	WarnLoot			= "Besudelte Kerne ansagen",
	TimerElemental		= "Show time for next Tainted Elemental",--Translate
	TimerStrider		= "Show time for next Strider",--Translate
	TimerNaga			= "Show time for next Strider",--Translate
	SpecWarnElemental	= "Show special warning when Tainted Elemental coming",--Translate
	SpecWarnCore		= "Special Warning anzeigen, wenn du einen Besudelten Kern hast",
	RangeFrame			= "Distanz Frame anzeigen",
	ChargeIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(38280),
	LootIcon			= "Icon auf Spieler mit Besudelten Kernen setzen"
}

L:SetMiscLocalization{
}
