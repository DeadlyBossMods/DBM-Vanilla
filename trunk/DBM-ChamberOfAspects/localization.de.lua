if GetLocale() ~= "deDE" then return end
local L

----------------------------
--  The Obsidian Sanctum  --
----------------------------
--  Shadron  --
---------------
L = DBM:GetModLocalization("Shadron")

L:SetGeneralLocalization({
	name = "Shadron"
})

----------------
--  Tenebron  --
----------------
L = DBM:GetModLocalization("Tenebron")

L:SetGeneralLocalization({
	name = "Tenebron"
})

----------------
--  Vesperon  --
----------------
L = DBM:GetModLocalization("Vesperon")

L:SetGeneralLocalization({
	name = "Vesperon"
})

------------------
--  Sartharion  --
------------------
L = DBM:GetModLocalization("Sartharion")

L:SetGeneralLocalization({
	name = "Sartharion"
})

L:SetWarningLocalization({
	WarningTenebron			= "Tenebron kommt",
	WarningShadron			= "Shadron kommt",
	WarningVesperon			= "Vesperon kommt",
	WarningFireWall			= "Feuerwand",
	WarningVesperonPortal	= "Vesperons Portal",
	WarningTenebronPortal	= "Tenebrons Portal",
	WarningShadronPortal	= "Shadrons Portal"
})

L:SetTimerLocalization({
	TimerTenebron	= "Tenebron kommt",
	TimerShadron	= "Shadron kommt",
	TimerVesperon	= "Vesperon kommt"
})

L:SetOptionLocalization({
	AnnounceFails			= "Verkünde Spieler im SZ-Chat, die bei Feuerwand und Schattenspalt\nscheitern (benötigt aktivierte Mitteilungen und Leiter-/Assistentenstatus)",
	TimerTenebron			= "Zeige Zeit bis Tenebron in den Kampf eingreift",
	TimerShadron			= "Zeige Zeit bis Shadron in den Kampf eingreift",
	TimerVesperon			= "Zeige Zeit bis Vesperon in den Kampf eingreift",
	WarningFireWall			= "Zeige Spezialwarnung für Feuerwand",
	WarningTenebron			= "Verkünde das Eingreifen von Tenebron in den Kampf",
	WarningShadron			= "Verkünde das Eingreifen von Shadron in den Kampf",
	WarningVesperon			= "Verkünde das Eingreifen von Vesperon in den Kampf",
	WarningTenebronPortal	= "Zeige Spezialwarnung für Tenebrons Portal",
	WarningShadronPortal	= "Zeige Spezialwarnung für Shadrons Portal",
	WarningVesperonPortal	= "Zeige Spezialwarnung für Vesperons Portal"
})

L:SetMiscLocalization({
	Wall			= "Die Lava um %s brodelt!",
	Portal			= "%s beginnt, ein Portal des Zwielichts zu öffnen!",
	NameTenebron	= "Tenebron",
	NameShadron		= "Shadron",
	NameVesperon	= "Vesperon",
	FireWallOn		= "Feuerwand: %s",
	VoidZoneOn		= "Schattenspalt: %s",
	VoidZones		= "Fehler bei Schattenspalt (dieser Versuch): %s",
	FireWalls		= "Fehler bei Feuerwand (dieser Versuch): %s"
})

------------------------
--  The Ruby Sanctum  --
------------------------
--  Baltharus the Warborn  --
-----------------------------
L = DBM:GetModLocalization("Baltharus")

L:SetGeneralLocalization({
	name = "Baltharus der Kriegsjünger"
})

L:SetWarningLocalization({
	WarningSplitSoon	= "Aufspaltung bald"
})

L:SetOptionLocalization({
	WarningSplitSoon	= "Zeige Vorwarnung für Aufspaltung",
	RangeFrame			= "Zeige Abstandsfenster (12m)",
	SetIconOnBrand		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(74505)
})

L:SetMiscLocalization({
})

-------------------------
--  Saviana Ragefire  --
-------------------------
L = DBM:GetModLocalization("Saviana")

L:SetGeneralLocalization({
	name = "Saviana Flammenschlund"
})

L:SetWarningLocalization({
	SpecialWarningTranq		= "Wutanfall - Einlullen/Beruhigen!"
})

L:SetOptionLocalization({
	SpecialWarningTranq		= "Zeige Spezialwarnung für $spell:78722",
	RangeFrame				= "Zeige Abstandsfenster (10m)",
	BeaconIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(74453)
})

L:SetMiscLocalization{
}

--------------------------
--  General Zarithrian  --
--------------------------
L = DBM:GetModLocalization("Zarithrian")

L:SetGeneralLocalization({
	name = "General Zarithrian"
})

L:SetWarningLocalization({
	WarnAdds	= "Neue Adds",
	warnCleaveArmor	= "%s auf >%s< (%s)"		-- Cleave Armor on >args.destName< (args.amount)
})

L:SetTimerLocalization({
	TimerAdds	= "Neue Adds"
})

L:SetOptionLocalization({
	WarnAdds		= "Verkünde neue Adds",
	TimerAdds		= "Zeige Zeit bis neue Adds erscheinen",
	warnCleaveArmor	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(74367, GetSpellInfo(74367) or "unbekannt")
})

L:SetMiscLocalization({
	SummonMinions	= "Äschert sie ein, Lakaien!"
})

-------------------------------------
--  Halion the Twilight Destroyer  --
-------------------------------------
L = DBM:GetModLocalization("Halion")

L:SetGeneralLocalization({
	name = "Halion der Zwielichtzerstörer"
})

L:SetWarningLocalization({
	WarnPhase2Soon		= "Phase 2 bald",
	WarnPhase3Soon		= "Phase 3 bald",
	TwilightCutterCast	= "Wirkt Zwielichtschnitter: 5 sec"
})

L:SetOptionLocalization({
	WarnPhase2Soon			= "Zeige Vorwarnung für Phase 2 (bei ~79%)",
	WarnPhase3Soon			= "Zeige Vorwarnung für Phase 3 (bei ~54%)",
	TwilightCutterCast		= "Zeige Warnung, wenn $spell:77844 gewirkt wird",
	AnnounceAlternatePhase	= "Zeige auch Warnungen/Timer für Phasen, in denen du dich nicht befindest",
	SoundOnConsumption		= "Spiele Sound, wenn du von $spell:74562 oder $spell:74792\nbetroffen bist",
	SetIconOnConsumption	= "Setze Zeichen auf Ziele von $spell:74562 und $spell:74792",
	YellOnConsumption		= "Schreie, wenn du von $spell:74562 oder $spell:74792\nbetroffen bist",
	WhisperOnConsumption	= "Ziele von $spell:74562 und $spell:74792 anflüstern\n(benötigt Schlachtzugleitung)"
})

L:SetMiscLocalization({
	Halion					= "Halion",
	MeteorCast				= "Die Himmel brennen!",
	Phase2					= "Ihr werdet im Reich des Zwielichts nur Leid finden! Tretet ein, wenn ihr es wagt!",
	Phase3					= "Ich bin das Licht und die Dunkelheit! Zittert, Sterbliche, vor dem Herold Todesschwinges!",
	twilightcutter			= "Die kreisenden Sphären pulsieren vor dunkler Energie!",
	YellCombustion			= "Feurige Einäscherung auf mir!",
	WhisperCombustion		= "Feurige Einäscherung auf dir! Lauf zur Wand!",
	YellConsumption			= "Seelenverzehrung auf mir!",
	WhisperConsumption		= "Seelenverzehrung auf dir! Lauf zur Wand!",
	Kill					= "Genießt euren Sieg, Sterbliche, denn es war euer letzter. Bei der Rückkehr des Meisters wird diese Welt brennen!"
})