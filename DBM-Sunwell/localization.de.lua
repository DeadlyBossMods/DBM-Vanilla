if GetLocale() ~= "deDE" then return end
local L

---------------
--  Kalecgos --
---------------
L = DBM:GetModLocalization("Kal")

L:SetGeneralLocalization{
	name = "Kalecgos"
}

L:SetWarningLocalization{
	WarnPortal			= "Portal #%d : >%s< (Gruppe %d)",
	SpecWarnWildMagic	= "Wilde Magie - %s!"
}

L:SetTimerLocalization{
	TimerNextPortal		= "Portal (%d)"
}

L:SetOptionLocalization{
	WarnPortal			= "Zeige Warnung für Ziel von $spell:46021",
	SpecWarnWildMagic	= "Spezialwarnung für Wilde Magie",
	TimerNextPortal		= "Zeige Timer für Portale",
	RangeFrame			= "Zeige Abstandsfenster (10m)",
	ShowFrame			= "Zeige Spektralreichfenster",
	FrameClassColor		= "Benutze Klassenfarben in Spektralreichfenster",
	FrameUpwards		= "Erweitere Spektralreichfenster nach oben",
	FrameLocked			= "Setze Spektralreichfenster auf gesperrt (nicht verschiebbar)"
}

L:SetMiscLocalization{
	Demon				= "Sathrovarr der Verderber",
	Heal				= "Heilung +100%",
	Haste				= "Zauberzeit +100%",
	Hit					= "Trefferchance Nah-/Fernkampf -50%",
	Crit				= "Kritischer Schaden +100%",
	Aggro				= "BEDROHUNG +100%",
	Mana				= "Zauber-/Fähigkeitskosten -50%",
	FrameTitle			= "Spektralreich",
	FrameLock			= "Sperre Fenster",
	FrameClassColor		= "Benutze Klassenfarben",
	FrameOrientation	= "Erweitere nach oben",
	FrameHide			= "Verberge Fenster",
	FrameClose			= "Schließen"
}

----------------
--  Brutallus --
----------------
L = DBM:GetModLocalization("Brutallus")

L:SetGeneralLocalization{
	name = "Brutallus"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	BurnIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(46394),
	BurnWhisper		= "Ziele von $spell:46394 anflüstern (benötigt Schlachtzugleitung)"
}

L:SetMiscLocalization{
	Pull			= "Ah, mehr Lämmer zum Schlachten!",
	BurnWhisper		= "Brand auf dir!"
}

--------------
--  Felmyst --
--------------
L = DBM:GetModLocalization("Felmyst")

L:SetGeneralLocalization{
	name = "Teufelsruch"
}

L:SetWarningLocalization{
	WarnPhase		= "%sphase",
	WarnPhaseSoon	= "%sphase in 10 Sek"
}

L:SetTimerLocalization{
	TimerPhase		= "Nächste %sphase"
}

L:SetOptionLocalization{
	WarnPhase		= "Zeige Warnung für nächste Phase",
	WarnPhaseSoon	= "Zeige Vorwarnung für nächste Phase",
	TimerPhase		= "Zeige Zeit bis nächste Phase",
	VaporIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45392),
	EncapsIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45665),
	YellOnEncaps	= "Schreie bei $spell:45665 auf dir"
}

L:SetMiscLocalization{
	Air				= "Luft",
	Ground			= "Boden",
	YellEncaps		= "Einschließen auf mir! Rennt weg!",
	AirPhase		= "Ich bin stärker als je zuvor!",
	Breath			= "%s holt tief Luft."
}

-----------------------
--  The Eredar Twins --
-----------------------
L = DBM:GetModLocalization("Twins")

L:SetGeneralLocalization{
	name = "Eredarzwillinge"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	NovaIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45329),
	ConflagIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45333),
	RangeFrame		= "Zeige Abstandsfenster (10m)",
	NovaWhisper		= "Ziel von $spell:45329 anflüstern (benötigt Schlachtzugleitung)",
	ConflagWhisper	= "Ziel von $spell:45333 anflüstern (benötigt Schlachtzugleitung)",
}

L:SetMiscLocalization{
	NovaWhisper		= "Schattennova auf dir!",
	ConflagWhisper	= "Großbrand auf dir!",
	Nova			= "Sacrolash zielt mit Schattennova auf (.+)%.",
	Conflag			= "Alythess zielt mit Großbrand auf (.+)%.",
	Sacrolash		= "Lady Sacrolash",
	Alythess		= "Großhexenmeisterin Alythess"
}

------------
--  M'uru --
------------
L = DBM:GetModLocalization("Muru")

L:SetGeneralLocalization{
	name = "M'uru"
}

L:SetWarningLocalization{
	WarnHuman		= "Humanoide (%d)",
	WarnHumanSoon	= "Humanoide in 5 Sek (%d)",
	WarnVoid		= "Leerenschildwache (%d)",
	WarnVoidSoon	= "Leerenschildwache in 5 Sek (%d)",
	WarnFiend		= "Finstere Scheusale erschienen"
}

L:SetTimerLocalization{
	TimerHuman		= "Nächste Humanoide (%s)",
	TimerVoid		= "Nächste Leerenschildwache (%s)",
	TimerPhase		= "Entropius"
}

L:SetOptionLocalization{
	WarnHuman		= "Zeige Warnung für Humanoide",
	WarnHumanSoon	= "Zeige Vorwarnung für Humanoide",
	WarnVoid		= "Zeige Warnung für Leerenschildwache",
	WarnVoidSoon	= "Zeige Vorwarnung für Leerenschildwache",
	WarnFiend		= "Zeige Warnung für Finstere Scheusale in Phase 2",
	TimerHuman		= "Zeige Zeit bis Humanoide erscheinen",
	TimerVoid		= "Zeige Zeit bis Leerenschildwache erscheint",
	TimerPhase		= "Dauer des Übergangs in Phase 2 anzeigen"
}

L:SetMiscLocalization{
	Entropius		= "Entropius"
}

----------------
--  Kil'jeden --
----------------
L = DBM:GetModLocalization("Kil")

L:SetGeneralLocalization{
	name = "Kil'jaeden"
}

L:SetWarningLocalization{
	WarnDarkOrb		= "Schildkugeln erschienen",
	WarnBlueOrb		= "Drachenkugel bereit",
	SpecWarnDarkOrb	= "Schildkugeln erschienen!",
	SpecWarnBlueOrb	= "Drachenkugel bereit!"
}

L:SetTimerLocalization{
	TimerBlueOrb	= "Drachenkugelaktivierung"
}

L:SetOptionLocalization{
	WarnDarkOrb		= "Zeige Warnung für Schildkugeln",
	WarnBlueOrb		= "Zeige Warnung für Drachenkugeln",
	SpecWarnDarkOrb	= "Spezialwarnung für Schildkugeln",
	SpecWarnBlueOrb	= "Spezialwarnung für Drachenkugeln",
	TimerBlueOrb	= "Zeige Zeit bis Drachenkugeln bereit sind",
	RangeFrame		= "Zeige Abstandsfenster (10m)",
	BloomIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(45641),
	YellOnBloom		= "Schreie bei $spell:45641 auf dir",
	BloomWhisper	= "Ziele von $spell:45641 anflüstern (benötigt Schlachtzugleitung)"
}

L:SetMiscLocalization{
	YellPull		= "Die Entbehrlichen sind dahin - so sei es! Jetzt werde ich dort erfolgreich sein, wo Sargeras versagt hat! Ich werde diese jämmerliche Welt ausbluten lassen und meinen Platz als wahrer Meister der Brennenden Legion einnehmen! Das Ende ist gekommen! Lasst uns diese Welt dem Erdboden gleichmachen!",
	YellBloom		= "Feuerblüte auf mir!",
	BloomWhisper	= "Feuerblüte auf dir!",
	OrbYell1		= "Ich werde die Kugeln mit meiner Macht erfüllen! Seid bereit!",--needs to be verified (wowhead-captured translation)
	OrbYell2		= "Eine weitere Kugel ist von meiner Macht erfüllt! Benutzt sie, schnell!",
	OrbYell3		= "Eine weitere Kugel ist bereit! Sputet Euch!",--needs to be verified (wowhead-captured translation)
	OrbYell4		= "Ich habe getan, was ich konnte! Die Macht liegt in Euren Händen!"

}
