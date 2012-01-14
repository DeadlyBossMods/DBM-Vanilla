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
	WarnPhase		= "%sphase",
	SpecWarnMark	= "%s : %s",
}

L:SetTimerLocalization{
	TimerMark	= "Nächstes %s : %s"
}

L:SetOptionLocalization{
	WarnMark		= "Zeige Warnung für Male",
	WarnPhase		= "Zeige Warnung für nächste Phase",
	SpecWarnMark	= "Zeige Spezialwarnung, wenn Schaden durch Male Debuff um 100% oder mehr erhöht ist",
	TimerMark		= "Zeige Zeit bis nächste Male",
	RangeFrame		= "Zeige Abstandsfenster (10m)"
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
	WarnSubmerge		= "Abtauchen",
	WarnSubmergeSoon	= "Abtauchen in 10 Sek",
	WarnEmerge			= "Auftauchen",
	WarnEmergeSoon		= "Auftauchen in 10 Sek"
}

L:SetTimerLocalization{
	TimerSubmerge		= "Abtauchen",
	TimerEmerge			= "Auftauchen"
}

L:SetOptionLocalization{
	WarnSubmerge		= "Zeige Warnung für Abtauchen",
	WarnSubmergeSoon	= "Zeige Vorwarnung für Abtauchen",
	WarnEmerge			= "Zeige Warnung für Auftauchen",
	WarnEmergeSoon		= "Zeige Vorwarnung für Auftauchen",
	TimerSubmerge		= "Zeige Zeit bis Abtauchen",
	TimerEmerge			= "Zeige Zeit bis Auftauchen"
}

L:SetMiscLocalization{
	Spout	= "%s atmet tief ein!"
}

--------------------------
--  Leotheras the Blind --
--------------------------
L = DBM:GetModLocalization("Leotheras")

L:SetGeneralLocalization{
	name = "Leotheras der Blinde"
}

L:SetWarningLocalization{
	WarnPhase		= "%s Phase",
	WarnPhaseSoon	= "%s Phase in 5 Sek"
}

L:SetTimerLocalization{
	TimerPhase	= "Nächste %s Phase"
}

L:SetOptionLocalization{
	WarnPhase		= "Zeige Warnung für nächste Phase",
	WarnPhaseSoon	= "Zeige Vorwarnung für nächste Phase",
	TimerPhase		= "Zeige Zeit bis nächste Phase",
	DemonIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(37676)
}

L:SetMiscLocalization{
	Human		= "Humanoide",
	Demon		= "Dämonen",
	YellDemon	= "Hinfort, unbedeutender Elf%.%s*Ich habe jetzt die Kontrolle!",
	YellPhase2	= "Nein... nein! Was habt Ihr getan? Ich bin der Meister! Hört Ihr? Ich! Ich... aaaaah! Ich kann ihn... nicht aufhalten..."
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
	Caribdis	= "Tiefenwächterin Caribdis",
	Tidalvess	= "Tiefenwächter Flutvess",
	Sharkkis	= "Tiefenwächter Haikis"
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
	SpecWarnMurlocs	= "Murlocs kommen!",
}

L:SetTimerLocalization{
	TimerMurlocs	= "Murlocs"
}

L:SetOptionLocalization{
	WarnMurlocs		= "Zeige Warnung, wenn Murlocs erscheinen",
	SpecWarnMurlocs	= "Zeige Spezialwarnung, wenn Murlocs erscheinen",
	TimerMurlocs	= "Zeige Zeit bis Murlocs erscheinen",
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
	WarnElemental		= "Besudelter Elementar bald (%s)",
	WarnStrider			= "Schreiter bald (%s)",
	WarnNaga			= "Naga bald (%s)",
	WarnShield			= "Schildgenerator %d/4 zerstört",
	WarnLoot			= ">%s< hat den Besudelten Kern",
	SpecWarnElemental	= "Besudelter Elementar bald!",
	SpecWarnCore		= "DU hast den Besudelten Kern!"
}

L:SetTimerLocalization{
	TimerElemental		= "Nächster Elementar (%d)",
	TimerStrider		= "Nächster Schreiter (%d)",
	TimerNaga			= "Nächster Naga (%d)"
}

L:SetOptionLocalization{
	WarnElemental		= "Zeige Vorwarnung für nächsten Besudelter Elementar",
	WarnStrider			= "Zeige Vorwarnung für nächsten Schreiter",
	WarnNaga			= "Zeige Vorwarnung für nächsten Naga",
	WarnShield			= "Zeige Warnung für zerstörte Schildgeneratoren in Phase 2",
	WarnLoot			= "Spieler mit Besudelten Kern ansagen",
	TimerElemental		= "Zeige Zeit bis nächster Besudelter Elementar",
	TimerStrider		= "Zeige Zeit bis nächster Schreiter",
	TimerNaga			= "Zeige Zeit bis nächster Naga",
	SpecWarnElemental	= "Zeige Spezialwarnung, wenn Besudelter Elementar kommt",
	SpecWarnCore		= "Zeige Spezialwarnung, wenn du einen Besudelten Kern bekommst",
	RangeFrame			= "Zeige Abstandsfenster (10m)",
	ChargeIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(38280),
	LootIcon			= "Setze Zeichen auf Spieler mit einem Besudelten Kern"
}

L:SetMiscLocalization{
	DBM_VASHJ_YELL_PHASE2				= "Die Zeit ist gekommen! Lasst keinen am Leben!"
}
