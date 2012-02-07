if GetLocale() ~= "deDE" then return end
local L

-----------------
--  Najentus  --
-----------------
L = DBM:GetModLocalization("Najentus")

L:SetGeneralLocalization{
	name = "Oberster Kriegsfürst Naj'entus"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	SpineIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(39837),
	RangeFrame	= "Zeige Abstandsfenster (10m)",
	InfoFrame	= "Zeige Infofenster für Gesundheit (<8800 Lebenspunkte)"
}

L:SetMiscLocalization{
	HealthInfo	= "Gesundheitsinfo"
}

----------------
-- Supremus --
----------------
L = DBM:GetModLocalization("Supremus")

L:SetGeneralLocalization{
	name = "Supremus"
}

L:SetWarningLocalization{
	WarnPhase		= "%sphase",
	WarnPhaseSoon	= "%sphase in 10 Sek",
	WarnKite		= "Blick auf >%s<"
}

L:SetTimerLocalization{
	TimerPhase		= "Nächste %sphase"
}

L:SetOptionLocalization{
	WarnPhase		= "Zeige Warnung für nächste Phase",
	WarnPhaseSoon	= "Zeige Vorwarnung für nächste Phase",
	WarnKite		= "Verkünde verfolgte Ziele",
	TimerPhase		= "Zeige Zeit bis nächste Phase",
	KiteIcon		= "Setze Zeichen auf das verfolgte Ziel",
	KiteWhisper		= "Verfolgtes Ziel anflüstern (benötigt Schlachtzugleitung)"
}

L:SetMiscLocalization{
	PhaseKite		= "schlägt wütend auf den Boden!",
	PhaseTank		= "Der Boden beginnt aufzubrechen!",
	ChangeTarget	= "wählt ein neues Ziel!",
	KiteWhisper		= "Du wirst verfolgt - Lauf weg!",
	Kite			= "Kite",
	Tank			= "Tank"
}

-------------------------
--  Shape of Akama  --
-------------------------
L = DBM:GetModLocalization("Akama")

L:SetGeneralLocalization{
	name = "Akamas Schemen"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
}

-------------------------
--  Teron Gorefiend  --
-------------------------
L = DBM:GetModLocalization("TeronGorefiend")

L:SetGeneralLocalization{
	name = "Teron Blutschatten"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
	TimerVengefulSpirit		= "Geist : %s"
}

L:SetOptionLocalization{
	TimerVengefulSpirit		= "Dauer der Rachsüchtigen Geister anzeigen",
	CrushIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(40243)
}

L:SetMiscLocalization{
}

----------------------------
--  Gurtogg Bloodboil  --
----------------------------
L = DBM:GetModLocalization("Bloodboil")

L:SetGeneralLocalization{
	name = "Gurtogg Siedeblut"
}

L:SetWarningLocalization{
	WarnRageEnd		= "Teufelswut Ende",
}

L:SetTimerLocalization{
	TimerRageEnd	= "Teufelswut Ende"
}

L:SetOptionLocalization{
	WarnRageEnd		= "Zeige Warnung, wenn $spell:40604 endet",
	TimerRageEnd	= "Dauer von $spell:40604 anzeigen"
}

L:SetMiscLocalization{
}

--------------------------
--  Essence Of Souls  --
--------------------------
L = DBM:GetModLocalization("Souls")

L:SetGeneralLocalization{
	name = "Reliquiar der Seelen"
}

L:SetWarningLocalization{
	WarnEnrage		= "Raserei",
	WarnEnrageSoon	= "Raserei bald",
	WarnEnrageEnd	= "Raserei vorbei - Nächste in 32 Sek",
	WarnMana		= "Null Mana in 30 Sek"
}

L:SetTimerLocalization{
	TimerEnrage		= "Raserei",
	TimerNextEnrage	= "Nächste Raserei",
	TimerMana		= "Null Mana"
}

L:SetOptionLocalization{
	WarnEnrage		= "Zeige Warnung für Raserei",
	WarnEnrageSoon	= "Zeige Vorwarnung für Raserei",
	WarnEnrageEnd	= "Zeige Warnung, wenn Raserei endet",
	WarnMana		= "Zeige Warnung für 0 Mana in Phase 2",
	TimerEnrage		= "Dauer von Raserei anzeigen",
	TimerNextEnrage	= "Zeige Zeit bis nächste Raserei",
	TimerMana		= "Zeige Zeit bis 0 Mana in Phase 2",
	SpiteWhisper	= "Ziele von $spell:41376 anflüstern (benötigt Schlachtzugleitung)",
	DrainIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41303),
	SpiteIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41376)
}

L:SetMiscLocalization{
	Pull			= "Auf Euch warten nur Schmerz und Leid!",
	Enrage			= "%s gerät in Raserei!",
	Phase2			= "Ihr könnt alles haben, was Ihr wollt... doch es hat einen Preis.",
	Phase2d			= "Shi shi rikk rukadare shi tichar kar x gular",
	Phase3			= "Seid auf der Hut, ich lebe!",
	SpiteWhisper	= "Bosheit auf dir!",
	Suffering		= "Essenz des Leidens",
	Desire			= "Essenz der Begierde",
	Anger			= "Essenz des Zorns"
}

-----------------------
--  Mother Shahraz --
-----------------------
L = DBM:GetModLocalization("Shahraz")

L:SetGeneralLocalization{
	name = "Mutter Shahraz"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	FAIcons		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41001),
	FAWhisper	= "Ziele von $spell:41001 anflüstern (benötigt Schlachtzugleitung)"
}

L:SetMiscLocalization{
	FAWhisper	= "Verhängnisvolle Affäre auf dir!"
}

----------------------
--  Illidari Council  --
----------------------
L = DBM:GetModLocalization("Council")

L:SetGeneralLocalization{
	name = "Der Rat der Illidari"
}

L:SetWarningLocalization{
	WarnFadeSoon	= "Veras ist in 5 Sek wieder da",
	WarnFaded		= "Veras ist wieder da",
	WarnDevAura		= "Hingabeaura für 30 Sek",
	WarnResAura		= "Widerstandsaura für 30 Sek",
	Immune			= "Malande - %s für 15 Sek"
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	WarnFadeSoon	= "Zeige Warnung 5 Sekunden bevor $spell:41476 des Schurken endet",
	WarnFaded		= "Zeige Warnung, wenn $spell:41476 des Schurken endet",
	WarnDevAura		= "Zeige Warnung für $spell:41452",
	WarnResAura		= "Zeige Warnung für $spell:41453",
	Immune			= "Zeige Spezialwarnung, wenn Malande gegen magische oder körperliche Angriffe immun wird",
	PoisonIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41485),
	PoisonWhisper	= "Ziele von $spell:41485 anflüstern (benötigt Schlachtzugleitung)"
}

L:SetMiscLocalization{
	Gathios			= "Gathios der Zerschmetterer",
	Malande			= "Lady Malande",
	Zerevor			= "Hochnethermant Zerevor",
	Veras			= "Veras Schwarzschatten",
	Melee			= "Körperliche Immunität",
	Spell			= "Magieimmunität",
	PoisonWhisper	= "Tödliches Gift auf dir!"
}

-------------------------
--  Illidan Stormrage --
-------------------------
L = DBM:GetModLocalization("Illidan")

L:SetGeneralLocalization{
	name = "Illidan Sturmgrimm"
}

L:SetWarningLocalization{
	WarnPhase2Soon	= "Phase 2 bald",
	WarnPhase4Soon	= "Phase 4 bald",
	WarnHuman		= "Normalform",
	WarnHumanSoon	= "Normalform bald",
	WarnDemon		= "Dämonenform",
	WarnDemonSoon	= "Dämonenform bald"
}

L:SetTimerLocalization{
	TimerCombatStart	= "Kampfbeginn",
	TimerNextHuman		= "Normalform",
	TimerNextDemon		= "Dämonenform",
	TimerPhase4			= "Phasenübergang"
}

L:SetOptionLocalization{
	WarnPhase2Soon	= "Zeige Vorwarnung für Übergang in Phase 2 (bei ~75%)",
	WarnPhase4Soon	= "Zeige Vorwarnung für Übergang in Phase 4 (bei ~35%)",
	WarnHuman		= "Zeige Warnung für Normalform",
	WarnHumanSoon	= "Zeige Vorwarnung für Normalform",
	WarnDemon		= "Zeige Warnung für Dämonenform",
	WarnDemonSoon	= "Zeige Vorwarnung für Dämonenform",
	TimerCombatStart= "Zeige Zeit bis Kampfbeginn",
	TimerNextHuman	= "Zeige Zeit bis nächste Normalform",
	TimerNextDemon	= "Zeige Zeit bis nächste Dämonenform",
	TimerPhase4		= "Dauer des Übergangs in Phase 4 anzeigen",
	ParasiteIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41917),
	ParasiteWhisper	= "Ziele von $spell:41917 anflüstern (benötigt Schlachtzugleitung)",
	RangeFrame		= "Zeige Abstandsfenster (10m) in Phase 3 und 4"
}

L:SetMiscLocalization{
	Pull			= "Akama. Euer falsches Spiel überrascht mich nicht. Ich hätte Euch und Eure missgestalteten Brüder schon vor langer Zeit abschlachten sollen.",
	Eyebeam			= "Blickt in die Augen des Verräters!",
	Demon			= "Erzittert vor der Macht des Dämonen!",
	Phase4			= "War's das schon, Sterbliche? Ist das alles, was Ihr zu bieten habt?",
	ParasiteWhisper	= "Schädlicher Schattengeist auf dir!"
}
