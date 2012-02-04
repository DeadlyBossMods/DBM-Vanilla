if GetLocale() ~= "deDE" then return end
local L

-------------------
--  Anub'Rekhan  --
-------------------
L = DBM:GetModLocalization("Anub'Rekhan")

L:SetGeneralLocalization({
	name = "Anub'Rekhan"
})

L:SetWarningLocalization({
	SpecialLocust		= "Heuschreckenschwarm",
	WarningLocustFaded	= "Heuschreckenschwarm Ende"
})

L:SetOptionLocalization({
	SpecialLocust		= "Zeige Spezialwarnung für $spell:28785",
	WarningLocustFaded	= "Zeige Warnung, wenn $spell:28785 endet",
	ArachnophobiaTimer	= "Zeige Timer für Erfolg 'Arachnophobie'"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Arachnophobie"
})

----------------------------
--  Grand Widow Faerlina  --
----------------------------
L = DBM:GetModLocalization("Faerlina")

L:SetGeneralLocalization({
	name = "Großwitwe Faerlina"
})

L:SetWarningLocalization({
	WarningEmbraceExpire	= "Umarmung endet in 5 Sek",
	WarningEmbraceExpired	= "Umarmung Ende"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "Zeige Vorwarnung für das Ende von $spell:28732",
	WarningEmbraceExpired	= "Zeige Warnung, wenn $spell:28732 endet"
})

---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("Maexxna")

L:SetGeneralLocalization({
	name = "Maexxna"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "Maexxnaspinnlinge in 5 Sek",
	WarningSpidersNow	= "Maexxnaspinnlinge erschienen"
})

L:SetTimerLocalization({
	TimerSpider	= "Nächste Maexxnaspinnlinge"
})

L:SetOptionLocalization({
	WarningSpidersSoon	= "Zeige Vorwarnung für Maexxnaspinnlinge",
	WarningSpidersNow	= "Zeige Warnung für Maexxnaspinnlinge",
	TimerSpider			= "Zeige Zeit bis nächste Maexxnaspinnlinge erscheinen"
})

L:SetMiscLocalization({
	YellWebWrap	= "Ich bin eingenetzt! Hilfe!",
	ArachnophobiaTimer	= "Arachnophobie"
})

------------------------------
--  Noth the Plaguebringer  --
------------------------------
L = DBM:GetModLocalization("Noth")

L:SetGeneralLocalization({
	name = "Noth der Seuchenfürst"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Teleportiert",
	WarningTeleportSoon	= "Teleport in 20 Sek"
})

L:SetTimerLocalization({
	TimerTeleport		= "Teleport",
	TimerTeleportBack	= "Teleport zurück"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Zeige Warnung für Teleport",
	WarningTeleportSoon	= "Zeige Vorwarnung für Teleport",
	TimerTeleport		= "Zeige Zeit bis sich Noth auf den Balkon teleportiert",
	TimerTeleportBack	= "Zeige Zeit bis sich Noth zurück teleportiert"
})

--------------------------
--  Heigan the Unclean  --
--------------------------
L = DBM:GetModLocalization("Heigan")

L:SetGeneralLocalization({
	name = "Heigan der Unreine"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Teleportiert",
	WarningTeleportSoon	= "Teleport in %d Sek"
})

L:SetTimerLocalization({
	TimerTeleport	= "Teleport"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Zeige Warnung für Teleport",
	WarningTeleportSoon	= "Zeige Vorwarnung für Teleport",
	TimerTeleport		= "Zeige Zeit bis Teleport"
})

---------------
--  Loatheb  --
---------------
L = DBM:GetModLocalization("Loatheb")

L:SetGeneralLocalization({
	name = "Loatheb"
})

L:SetWarningLocalization({
	WarningHealSoon	= "Heilung in 3 Sek möglich",
	WarningHealNow	= "Jetzt heilen"
})

L:SetOptionLocalization({
	WarningHealSoon		= "Zeige Vorwarnung für 3-Sekunden-Heilfenster",
	WarningHealNow		= "Zeige Warnung für 3-Sekunden-Heilfenster"
})

-----------------
--  Patchwerk  --
-----------------
L = DBM:GetModLocalization("Patchwerk")

L:SetGeneralLocalization({
	name = "Flickwerk"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1			= "Flickwerk spielen möchte!",
	yell2			= "Kel’Thuzad macht Flickwerk zu seinem Abgesandten des Kriegs!"
})

-----------------
--  Grobbulus  --
-----------------
L = DBM:GetModLocalization("Grobbulus")

L:SetGeneralLocalization({
	name = "Grobbulus"
})

L:SetOptionLocalization({
	SpecialWarningInjection		= "Zeige Spezialwarnung, wenn du von $spell:28169 betroffen bist",
	SetIconOnInjectionTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(28169)
})

L:SetWarningLocalization({
	SpecialWarningInjection	= "Mutagene Injektion auf dir"
})

L:SetTimerLocalization({
})

-------------
--  Gluth  --
-------------
L = DBM:GetModLocalization("Gluth")

L:SetGeneralLocalization({
	name = "Gluth"
})

----------------
--  Thaddius  --
----------------
L = DBM:GetModLocalization("Thaddius")

L:SetGeneralLocalization({
	name = "Thaddius"
})

L:SetMiscLocalization({
	Yell	= "Stalagg zerquetschen!",
	Emote	= "%s überlädt!",
	Emote2	= "Teslaspule überlädt!",
	Boss1	= "Feugen",
	Boss2	= "Stalagg",
	Charge1 = "negativ",
	Charge2 = "positiv"
})

L:SetOptionLocalization({
	WarningChargeChanged	= "Zeige Spezialwarnung, wenn deine Polarität gewechselt hat",
	WarningChargeNotChanged	= "Zeige Spezialwarnung, wenn deine Polarität nicht gewechselt hat",
	ArrowsEnabled			= "Zeige Pfeile (normale \"2-Camps\"-Strategie)",
	ArrowsRightLeft			= "Zeige Links-/Rechtspfeil für die \"4-Camps\"-Strategie\n(zeige Linkspfeil bei Polaritätsänderung, Rechtspfeil bei keiner Änderung)",
	ArrowsInverse			= "Umgedrehte \"4-Camps\"-Strategie\n(zeige Rechtspfeil bei Polaritätsänderung, Linkspfeil bei keiner Änderung)"
})

L:SetWarningLocalization({
	WarningChargeChanged	= "Polarität geändert zu %s",
	WarningChargeNotChanged	= "Polarität hat sich nicht geändert"
})

L:SetOptionCatLocalization({
	Arrows	= "Pfeile"
})

----------------------------
--  Instructor Razuvious  --
----------------------------
L = DBM:GetModLocalization("Razuvious")

L:SetGeneralLocalization({
	name = "Instrukteur Razuvious"
})

L:SetMiscLocalization({
	Yell1 = "Lasst keine Gnade walten!",
	Yell2 = "Die Zeit des Übens ist vorbei! Zeigt mir, was ihr gelernt habt!",
	Yell3 = "Befolgt meine Befehle!",
	Yell4 = "Streckt sie nieder... oder habt ihr ein Problem damit?"
})

L:SetOptionLocalization({
	WarningShieldWallSoon	= "Zeige Vorwarnung, wenn $spell:29061 endet"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "Knochenbarriere endet in 5 Sekunden"
})

----------------------------
--  Gothik the Harvester  --
----------------------------
L = DBM:GetModLocalization("Gothik")

L:SetGeneralLocalization({
	name = "Gothik der Ernter"
})

L:SetOptionLocalization({
	TimerWave			= "Zeige Zeit bis nächste Welle",
	TimerPhase2			= "Zeige Zeit bis Phase 2",
	WarningWaveSoon		= "Warne, wenn bald eine neue Welle kommt",
	WarningWaveSpawned	= "Warne, wenn eine neue Welle kommt",
	WarningRiderDown	= "Zeige Warnung, wenn ein Unerbittlicher Reiter stirbt",
	WarningKnightDown	= "Zeige Warnung, wenn ein Unerbittlicher Todesritter stirbt"
})

L:SetTimerLocalization({
	TimerWave	= "Welle %d",
	TimerPhase2	= "Phase 2"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "Welle %d: %s in 3 Sek",
	WarningWaveSpawned	= "Welle %d: %s erschienen",
	WarningRiderDown	= "Reiter tot",
	WarningKnightDown	= "Ritter tot",
	WarningPhase2		= "Phase 2"
})

L:SetMiscLocalization({
	yell			= "Ihr Narren habt euren eigenen Untergang heraufbeschworen.",
	WarningWave1	= "%d %s",
	WarningWave2	= "%d %s und %d %s",
	WarningWave3	= "%d %s, %d %s und %d %s",
	Trainee			= "Lehrlinge",
	Knight			= "Ritter",
	Rider			= "Reiter"
})

---------------------
--  Four Horsemen  --
---------------------
L = DBM:GetModLocalization("Horsemen")

L:SetGeneralLocalization({
	name = "Die vier Reiter"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "Zeige Vorwarnung für Mal",
	WarningMarkNow				= "Zeige Warnung für Mal",
	SpecialWarningMarkOnPlayer	= "Zeige Spezialwarnung, wenn sich ein Mal mehr als 4-mal auf dir stapelt"
})

L:SetTimerLocalization({
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Mal %d in 3 Sekunden",
	WarningMarkNow				= "Mal %d",
	SpecialWarningMarkOnPlayer	= "%s: %s"
})

L:SetMiscLocalization({
	Korthazz	= "Than Korth'azz",
	Rivendare	= "Baron Totenschwur",
	Blaumeux	= "Lady Blaumeux",
	Zeliek		= "Sir Zeliek"
})

-----------------
--  Sapphiron  --
-----------------
L = DBM:GetModLocalization("Sapphiron")

L:SetGeneralLocalization({
	name = "Saphiron"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon	= "Zeige Vorwarnung, wenn Saphiron bald abhebt",
	WarningAirPhaseNow	= "Zeige Warnung, wenn Saphiron abhebt",
	WarningLanded		= "Zeige Warnung, wenn Saphiron landet",
	TimerAir			= "Zeige Zeit bis nächste Luftphase",
	TimerLanding		= "Zeige Zeit bis nächste Bodenphase",
	TimerIceBlast		= "Zeige Zeit bis $spell:28524",
	WarningDeepBreath	= "Zeige Spezialwarnung für $spell:28524",
	WarningIceblock		= "Schreie, wenn du ein Eisblock bist"
})

L:SetMiscLocalization({
	EmoteBreath			= "%s holt tief Luft.",
	WarningYellIceblock	= "Ich bin ein Eisblock!"
})

L:SetWarningLocalization({
	WarningAirPhaseSoon	= "Luftphase in 10 Sek",
	WarningAirPhaseNow	= "Luftphase",
	WarningLanded		= "Bodenphase",
	WarningDeepBreath	= "Frostatem",
})

L:SetTimerLocalization({
	TimerAir		= "Nächste Luftphase",
	TimerLanding	= "Nächste Bodenphase",
	TimerIceBlast	= "Frostatem"   
})

------------------
--  Kel'Thuzad  --
------------------

L = DBM:GetModLocalization("Kel'Thuzad")

L:SetGeneralLocalization({
	name = "Kel'Thuzad"
})

L:SetOptionLocalization({
	TimerPhase2			= "Zeige Zeit bis Phase 2",
	specwarnP2Soon		= "Zeige Spezialwarnung 10 Sekunden bevor Kel'Thuzad angreift",
	warnAddsSoon		= "Zeige Vorwarnung für Wächter von Eiskrone",
	SetIconOnMC			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(28410),
	SetIconOnManaBomb	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(27819),
	SetIconOnFrostTomb	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(27808),
	ShowRange			= "Zeige Abstandsfenster, wenn Phase 2 startet"
})

L:SetMiscLocalization({
	Yell = "Lakaien, Diener, Soldaten der eisigen Finsternis! Folgt dem Ruf von Kel'Thuzad!"
})

L:SetWarningLocalization({
	specwarnP2Soon	= "Kel'Thuzad greift in 10 Sekunden an",
	warnAddsSoon	= "Wächter von Eiskrone bald"
})

L:SetTimerLocalization({
	TimerPhase2	= "Phase 2"
})

