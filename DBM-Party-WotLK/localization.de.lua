if GetLocale() ~= "deDE" then return end
local L

local spell				= "%s"
local debuff			= "%s: >%s<"
local spellCD			= "%s CD"
local spellSoon			= "%s bald"
local optionWarning		= "Zeige Warnung für %s"
local optionPreWarning	= "Zeige Vorwarnung für %s"
local optionSpecWarning	= "Zeige Spezialwarnung für %s"
local optionTimerCD		= "Abklingzeit von %s anzeigen"
local optionTimerDur	= "Dauer von %s anzeigen"
local optionTimerCast	= "Wirkzeit von %s anzeigen"

----------------------------------
--  Ahn'Kahet: The Old Kingdom  --
----------------------------------
--  Prince Taldaram  --
-----------------------
L = DBM:GetModLocalization("Taldaram")

L:SetGeneralLocalization({
	name = "Prinz Taldaram"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------
--  Elder Nadox  --
-------------------
L = DBM:GetModLocalization("Nadox")

L:SetGeneralLocalization({
	name = "Urahne Nadox"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------------
--  Jedoga Shadowseeker  --
---------------------------
L = DBM:GetModLocalization("JedogaShadowseeker")

L:SetGeneralLocalization({
	name = "Jedoga Schattensucher"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------
--  Herald Volazj  --
---------------------
L = DBM:GetModLocalization("Volazj")

L:SetGeneralLocalization({
	name = "Herold Volazj"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------
--  Amanitar  --
----------------
L = DBM:GetModLocalization("Amanitar")

L:SetGeneralLocalization({
	name = "Amanitar"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------
--  Azjol-Nerub  --
---------------------------------
--  Krik'thir the Gatewatcher  --
---------------------------------
L = DBM:GetModLocalization("Krikthir")

L:SetGeneralLocalization({
	name = "Krik'thir der Torwächter"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------
--  Hadronox  --
----------------
L = DBM:GetModLocalization("Hadronox")

L:SetGeneralLocalization({
	name = "Hadronox"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  Anub'arak (Party)  --
-------------------------
L = DBM:GetModLocalization("Anubarak")

L:SetGeneralLocalization({
	name = "Anub'arak (Gruppe)"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------------------------
--  Caverns of Time: Old Stratholme  --
---------------------------------------
--  Meathook  --
----------------
L = DBM:GetModLocalization("Meathook")

L:SetGeneralLocalization({
	name = "Fleischhaken"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------------
--  Salramm the Fleshcrafter  --
--------------------------------
L = DBM:GetModLocalization("SalrammTheFleshcrafter")

L:SetGeneralLocalization({
	name = "Salramm der Fleischformer"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  Chrono-Lord Epoch  --
-------------------------
L = DBM:GetModLocalization("ChronoLordEpoch")

L:SetGeneralLocalization({
	name = "Chronolord Epoch"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------
--  Mal'Ganis  --
-----------------
L = DBM:GetModLocalization("MalGanis")

L:SetGeneralLocalization({
	name = "Mal'Ganis"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	Outro	= "Eure Reise hat erst begonnen, junger Prinz. Sammelt Eure Streitmacht und folgt mir in das arktische Land Nordend. Dort werden wir unsere Rechnung begleichen. Dort wird sich Euer wahres Schicksal offenbaren."
})

-------------------
--  Wave Timers  --
-------------------
L = DBM:GetModLocalization("StratWaves")

L:SetGeneralLocalization({
	name = "Wellen (HdZ 4)"
})

L:SetWarningLocalization({
	WarningWaveNow = "Welle %d: %s erschienen"
})

L:SetTimerLocalization({
	TimerWaveIn		= "Nächste Welle (6)",
	TimerRoleplay	= "Eröffnungsrollenspiel"
})

L:SetOptionLocalization({
	WarningWaveNow	= optionWarning:format("neue Welle"),
	TimerWaveIn		= "Zeige Zeit bis die nächste Wellengruppe nach dem ersten Boss kommt",
	TimerRoleplay	= "Dauer des Eröffnungsrollenspiels anzeigen"
})

L:SetMiscLocalization({
	Meathook	= "Fleischhaken",
	Salramm		= "Salramm der Fleischformer",
	Devouring	= "Verschlingender Ghul",
	Enraged		= "Aufgebrachter Ghul",
	Necro		= "Totenbeschwörer",
	Fiend		= "Gruftbestie",
	Stalker		= "Grabschleicher",
	Abom		= "Flickwerkkonstrukt",
	Acolyte		= "Akolyth",
	Wave1		= "%d %s",
	Wave2		= "%d %s und %d %s",
	Wave3		= "%d %s, %d %s und %d %s",
	Wave4		= "%d %s, %d %s, %d %s und %d %s",
	WaveBoss	= "%s",
	WaveCheck	= "Geißelwelle = (%d+)/10",
	Roleplay	= "Wie schön, dass Ihr es geschafft habt, Uther.",
	Roleplay2	= "Alle sind bereit. Vergesst nicht, diese Leute sind alle infiziert und werden bald sterben. Wir müssen Stratholme säubern, um den Rest Lordaerons vor der Geißel zu schützen. Los jetzt."
})

------------------------
--  Drak'Tharon Keep  --
------------------------
--  Trollgore  --
-----------------
L = DBM:GetModLocalization("Trollgore")

L:SetGeneralLocalization({
	name = "Trollgrind"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------
--  Novos the Summoner  --
--------------------------
L = DBM:GetModLocalization("NovosTheSummoner")

L:SetGeneralLocalization({
	name = "Novos der Beschwörer"
})

L:SetWarningLocalization({
	WarnCrystalHandler	= "Kristallwirker erschienen (%d verbleiben)"
})

L:SetTimerLocalization({
	timerCrystalHandler	= "Kristallwirker erscheint"
})

L:SetOptionLocalization({
	WarnCrystalHandler	= "Zeige Warnung, wenn ein Kristallwirker erscheint",
	timerCrystalHandler	= "Zeige Zeit bis nächster Kristallwirker erscheint"
})

L:SetMiscLocalization({
	YellPull		= "Was ihr spürt, ist euer Ende, das naht.",
	HandlerYell		= "Verstärkt meine Verteidigung! Schnell, verdammt!",
	Phase2			= "Sicher seht ihr, dass alles vergebens ist!",
	YellKill		= "Eure Mühen... sind umsonst."
})

-----------------
--  King Dred  --
-----------------
L = DBM:GetModLocalization("KingDred")

L:SetGeneralLocalization({
	name = "König Dred"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------------------
--  The Prophet Tharon'ja  --
-----------------------------
L = DBM:GetModLocalization("ProphetTharonja")

L:SetGeneralLocalization({
	name = "Der Prophet Tharon'ja"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------
--  Gundrak  --
----------------
--  Slad'ran  --
----------------
L = DBM:GetModLocalization("Sladran")

L:SetGeneralLocalization({
	name = "Slad'ran"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------
--  Moorabi  --
---------------
L = DBM:GetModLocalization("Moorabi")

L:SetGeneralLocalization({
	name = "Moorabi"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  Drakkari Colossus  --		
-------------------------
L = DBM:GetModLocalization("BloodstoneAnnihilator")

L:SetGeneralLocalization({
	name = "Koloss der Drakkari"
})

L:SetWarningLocalization({
	WarningElemental	= "Elementarphase",
	WarningStone		= "Kolossphase"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	WarningElemental	= "Zeige Warnung für Elementarphase",
	WarningStone		= "Zeige Warnung für Kolossphase"	
})

-----------------
--  Gal'darah  --
-----------------
L = DBM:GetModLocalization("Galdarah")

L:SetGeneralLocalization({
	name = "Gal'darah"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  Eck the Ferocious  --
-------------------------
L = DBM:GetModLocalization("Eck")

L:SetGeneralLocalization({
	name = "Der wilde Eck"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------
--  Halls of Lightning  --
--------------------------
--  General Bjarngrim  --
-------------------------
L = DBM:GetModLocalization("Gjarngrin")

L:SetGeneralLocalization({
	name = "General Bjarngrim"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------
--  Ionar  --
-------------
L = DBM:GetModLocalization("Ionar")

L:SetGeneralLocalization({
	name = "Ionar"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	SetIconOnOverloadTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(52658)
})

---------------
--  Volkhan  --
---------------
L = DBM:GetModLocalization("Volkhan")

L:SetGeneralLocalization({
	name = "Volkhan"
})

L:SetWarningLocalization({
	WarningStomp	= spell
})

L:SetTimerLocalization({
	TimerStompCD	= spellCD
})

L:SetOptionLocalization({
	WarningStomp	= optionWarning:format(GetSpellInfo(52237)),
	TimerStompCD	= optionTimerCD:format(GetSpellInfo(52237))
})

--------------
--  Kronus  --
--------------
L = DBM:GetModLocalization("Kronus")

L:SetGeneralLocalization({
	name = "Loken"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------------
--  Halls of Stone  --
-----------------------
--  Maiden of Grief  --
-----------------------
L = DBM:GetModLocalization("MaidenOfGrief")

L:SetGeneralLocalization({
	name = "Maid der Trauer"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------
--  Krystallus  --
------------------
L = DBM:GetModLocalization("Krystallus")

L:SetGeneralLocalization({
	name = "Krystallus"
})

L:SetWarningLocalization({
	WarningShatter	= spell
})

L:SetTimerLocalization({
	TimerShatterCD	= spellCD
})

L:SetOptionLocalization({
	WarningShatter	= optionWarning:format(GetSpellInfo(50810)),
	TimerShatterCD	= optionTimerCD:format(GetSpellInfo(50810))
})

------------------------------
--  Sjonnir the Ironshaper  --
------------------------------
L = DBM:GetModLocalization("SjonnirTheIronshaper")

L:SetGeneralLocalization({
	name = "Sjonnir der Eisenformer"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------------------
--  Brann Bronzebeard Escort Event  --
--------------------------------------
L = DBM:GetModLocalization("BrannBronzebeard")

L:SetGeneralLocalization({
	name = "Tribunal der Zeitalter"
})

L:SetWarningLocalization({
	WarningPhase	= "Phase %d"
})

L:SetTimerLocalization({
	timerEvent	= "Zeit verbleibend"
})

L:SetOptionLocalization({
	WarningPhase	= optionWarning:format("Phasenwechsel"),
	timerEvent		= "Dauer des Ereignisses anzeigen"
})

L:SetMiscLocalization({
	Pull	= "Haltet jetzt die Augen offen! Ich werde die Sache hier im Handumdrehen...",
	Phase1	= "Sicherheitsverletzung. Setze Analyse historischer Archive auf niedrige Priorität. Leite Gegenmaßnahmen ein.",
	Phase2	= "Bedrohungsindexgrenze überschritten. Himmelsarchiv abgebrochen. Alarmstufe erhöht.",
	Phase3	= "Kritischer Bedrohungsindex. Leerenanalyse umgeleitet. Initialisiere Säuberungsprotokoll.",
	Kill	= "Alarm: Sicherungssysteme deaktiviert. Beginne Speichersäuberung und..."
})

-----------------
--  The Nexus  --
-----------------
--  Anomalus  --
----------------
L = DBM:GetModLocalization("Anomalus")

L:SetGeneralLocalization({
	name = "Anomalus"
})

L:SetWarningLocalization({
})

L:SetOptionLocalization({
})

-------------------------------
--  Ormorok the Tree-Shaper  --
-------------------------------
L = DBM:GetModLocalization("OrmorokTheTreeShaper")

L:SetGeneralLocalization({
	name = "Ormorok der Baumformer"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------------------
--  Grand Magus Telestra  --
----------------------------
L = DBM:GetModLocalization("GrandMagusTelestra")

L:SetGeneralLocalization({
	name = "Großmagistrix Telestra"
})

L:SetWarningLocalization({
	WarningSplitSoon	= "Aufspaltung bald",
	WarningSplitNow		= "Aufspaltung",		
	WarningMerge		= "Fusion"		
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	WarningSplitSoon	= optionPreWarning:format("Aufspaltung"),
	WarningSplitNow		= optionWarning:format("Aufspaltung"),	
	WarningMerge		= optionWarning:format("Fusion"),
})

L:SetMiscLocalization({
	SplitTrigger1		= "Es ist genug von mir für alle da.",
	SplitTrigger2		= "Ich teile mehr aus, als ihr verkraften könnt",
	MergeTrigger		= "Nun bringen wir's zu Ende!"
})

-------------------
--  Keristrasza  --
-------------------
L = DBM:GetModLocalization("Keristrasza")

L:SetGeneralLocalization({
	name = "Keristrasza"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------------------------
--  Commander Kolurg/Stoutbeard  --
-----------------------------------
L = DBM:GetModLocalization("Commander")

local commander = "Eingefrorener Kommandant"
if UnitFactionGroup("player") == "Alliance" then
	commander = "Kommandant Kolurg"
elseif UnitFactionGroup("player") == "Horde" then
	commander = "Kommandant Starkbart"
end

L:SetGeneralLocalization({
	name = commander
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------
--  The Oculus  --
-------------------------------
--  Drakos the Interrogator  --
-------------------------------
L = DBM:GetModLocalization("DrakosTheInterrogator")

L:SetGeneralLocalization({
	name = "Drakos der Befrager"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	MakeitCountTimer	= "Zeige Timer für Erfolg 'Jagt ihn!'"
})

L:SetMiscLocalization({
	MakeitCountTimer	= "Jagt ihn!"
})

----------------------
--  Mage-Lord Urom  --
----------------------
L = DBM:GetModLocalization("MageLordUrom")

L:SetGeneralLocalization({
	name = "Magierlord Urom"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	CombatStart		= "Arme, blinde Narren!"
})

--------------------------
--  Varos Cloudstrider  --
--------------------------
L = DBM:GetModLocalization("VarosCloudstrider")

L:SetGeneralLocalization({
	name = "Varos Wolkenwanderer"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------------
--  Ley-Guardian Eregos  --
---------------------------
L = DBM:GetModLocalization("LeyGuardianEregos")

L:SetGeneralLocalization({
	name = "Leywächter Eregos"
})

L:SetWarningLocalization({
	WarningShiftEnd	= "Planarverschiebung endet"		
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	WarningShiftEnd	= optionWarning:format("Ende der "..GetSpellInfo(51162))
})

L:SetMiscLocalization({
	MakeitCountTimer	= "Jagt ihn!"
})

--------------------
--  Utgarde Keep  --
-----------------------
--  Prince Keleseth  --
-----------------------
L = DBM:GetModLocalization("Keleseth")

L:SetGeneralLocalization({
	name = "Prinz Keleseth"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------------
--  Skarvald the Constructor  --
--  & Dalronn the Controller  --
--------------------------------
L = DBM:GetModLocalization("ConstructorAndController")

L:SetGeneralLocalization({
	name = "Skarvald & Dalronn"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------------------
--  Ingvar the Plunderer  --
----------------------------
L = DBM:GetModLocalization("IngvarThePlunderer")

L:SetGeneralLocalization({
	name = "Ingvar der Brandschatzer"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	YellCombatEnd	= "Nein! Ich bin... besser, Ich bin..."
})

------------------------
--  Utgarde Pinnacle  --
--------------------------
--  Skadi the Ruthless  --
--------------------------
L = DBM:GetModLocalization("SkadiTheRuthless")

L:SetGeneralLocalization({
	name = "Skadi der Skrupellose"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	CombatStart		= "Welche Hunde wagen es, hier einzudringen? Auf sie, meine Brüder! Ein Fest für den, der mir ihre Köpfe bringt!",
	Phase2			= "Ihr räudigen Halunken! Eure Leichen werden feine Appetithappen für meinen neuen Drachen abgeben!"
})

-------------------
--  King Ymiron  --
-------------------
L = DBM:GetModLocalization("Ymiron")

L:SetGeneralLocalization({
	name = "König Ymiron"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  Svala Sorrowgrave  --
-------------------------
L = DBM:GetModLocalization("SvalaSorrowgrave")

L:SetGeneralLocalization({
	name = "Svala Grabesleid"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
	timerRoleplay		= "Svala Grabesleid aktiv"
})

L:SetOptionLocalization({
	timerRoleplay		= "Zeige Dauer des Rollenspiels bevor Svala Grabesleid aktiv wird"
})

L:SetMiscLocalization({
	SvalaRoleplayStart	= "Mein Meister! Ich tat, was Ihr verlangtet, und ersuche Euch um Euren Segen!"
})

-----------------------
--  Gortok Palehoof  --
-----------------------
L = DBM:GetModLocalization("GortokPalehoof")

L:SetGeneralLocalization({
	name = "Gortok Bleichhuf"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------------
--  The Violet Hold  --
-----------------------
--  Cyanigosa  --
-----------------
L = DBM:GetModLocalization("Cyanigosa")

L:SetGeneralLocalization({
	name = "Cyanigosa"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
	TimerCombatStart		= "Kampfbeginn"
})

L:SetOptionLocalization({
	TimerCombatStart		= "Zeige Zeit bis Kampfbeginn"
})

L:SetMiscLocalization({
	CyanArrived	= "Eine beherzte Verteidigung, aber diese Stadt muss dem Erdboden gleichgemacht werden. Ich werde Malygos' Befehle persönlich ausführen!"
})

--------------
--  Erekem  --
--------------
L = DBM:GetModLocalization("Erekem")

L:SetGeneralLocalization({
	name = "Erekem"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------
--  Ichoron  --
---------------
L = DBM:GetModLocalization("Ichoron")

L:SetGeneralLocalization({
	name = "Ichoron"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------
--  Lavanthor  --
-----------------
L = DBM:GetModLocalization("Lavanthor")

L:SetGeneralLocalization({
	name = "Lavanthor"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------
--  Moragg  --
--------------
L = DBM:GetModLocalization("Moragg")

L:SetGeneralLocalization({
	name = "Moragg"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------
--  Xevozz  --
--------------
L = DBM:GetModLocalization("Xevoss")

L:SetGeneralLocalization({
	name = "Xevozz"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------------
--  Zuramat the Obliterator  --
-------------------------------
L = DBM:GetModLocalization("Zuramat")

L:SetGeneralLocalization({
	name = "Zuramat der Vernichter"
})

L:SetWarningLocalization({
	SpecialWarningVoidShifted 	= spell:format(GetSpellInfo(54343)),
	SpecialShroudofDarkness 	= spell:format(GetSpellInfo(59745))
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	SpecialWarningVoidShifted	= optionSpecWarning:format(GetSpellInfo(54343)),
	SpecialShroudofDarkness		= optionSpecWarning:format(GetSpellInfo(59745))
})

---------------------
--  Portal Timers  --
---------------------
L = DBM:GetModLocalization("PortalTimers")

L:SetGeneralLocalization({
	name = "Portaltimer"
})

L:SetWarningLocalization({
	WarningPortalSoon	= "Neues Portal bald",
	WarningPortalNow	= "Portal %d",
	WarningBossNow		= "Boss kommt"
})

L:SetTimerLocalization({
	TimerPortalIn	= "Portal %d", 
})

L:SetOptionLocalization({
	WarningPortalNow		= optionWarning:format("neues Portal"),
	WarningPortalSoon		= optionPreWarning:format("neues Portal"),
	WarningBossNow			= optionWarning:format("neuen Boss"),
	TimerPortalIn			= "Zeige Timer für nächstes Portal (nach einem Boss)",
	ShowAllPortalTimers		= "Zeige Timer für alle Portale (ungenau)"
})

L:SetMiscLocalization({
	Sealbroken	= "Wir haben das Gefängnistor durchbrochen! Der Weg nach Dalaran ist frei! Jetzt können wir den Nexuskrieg endlich beenden!",
	WavePortal	= "Geöffnete Portale: (%d+)/18"
})

-----------------------------
--  Trial of the Champion  --
-----------------------------
--  The Black Knight  --
------------------------
L = DBM:GetModLocalization("BlackKnight")

L:SetGeneralLocalization({
	name = "Der Schwarze Ritter"
})

L:SetWarningLocalization({
	warnExplode			= "Ghulexplosion - Lauf weg!"
})

L:SetTimerLocalization{
	TimerCombatStart	= "Kampfbeginn"
}

L:SetOptionLocalization({
	TimerCombatStart		= "Zeige Zeit bis Kampfbeginn",
	warnExplode				= "Zeige Warnung, wenn Ghuldiener kurz vor dem Explodieren ist",
	AchievementCheck		= "Verkünde Fehlschlag des Erfolgs 'Ich hab' schon Schlimmeres gesehen' an Gruppe",
	SetIconOnMarkedTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(67823)
})

L:SetMiscLocalization({
	Pull				= "Gut gemacht. Ihr habt Euch heute bewiesen-",
	AchievementFailed	= ">> ERFOLG FEHLGESCHLAGEN: %s wurde von Ghulexplosion getroffen <<",
	YellCombatEnd		= "Meine Glückwünsche, Champions. In Prüfungen sowohl geplant als auch unerwartet habt Ihr triumphiert."	-- can also be "Nein! Ich darf nicht... wieder... versagen..."
})

-----------------------
--  Grand Champions  --
-----------------------
L = DBM:GetModLocalization("GrandChampions")

L:SetGeneralLocalization({
	name = "Großchampions"
})

L:SetWarningLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	YellCombatEnd	= "Gut gekämpft! Eure nächste Herausforderung kommt aus den eigenen Reihen des Kreuzzugs. Ihr werdet Euch gegen ihre eindrucksvolle Tapferkeit beweisen müssen."
})

----------------------------------
--  Argent Confessor Paletress  --
----------------------------------
L = DBM:GetModLocalization("Confessor")

L:SetGeneralLocalization({
	name = "Argentumbeichtpatin Blondlocke"
})

L:SetWarningLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	YellCombatEnd	= "Exzellente Arbeit!"
})

-----------------------
--  Eadric the Pure  --
-----------------------
L = DBM:GetModLocalization("EadricthePure")

L:SetGeneralLocalization({
	name = "Eadric der Reine"
})

L:SetWarningLocalization({
	specwarnRadiance		= "Strahlen - Schau weg!"
})

L:SetOptionLocalization({
	specwarnRadiance		= "Zeige Spezialwarnung für $spell:66935",
	SetIconOnHammerTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(66940)
})

L:SetMiscLocalization({
	YellCombatEnd	= "Ich ergebe mich! Exzellente Arbeit. Darf ich jetzt wegrennen?"
})

--------------------
--  Pit of Saron  --
---------------------
--  Ick and Krick  --
---------------------
L = DBM:GetModLocalization("Ick")

L:SetGeneralLocalization({
	name = "Ick und Krick"
})

L:SetWarningLocalization({
	warnPursuit			= "Verfolgung auf >%s<",
	specWarnPursuit		= "Du wirst verfolgt - Lauf weg!"
})

L:SetOptionLocalization({
	warnPursuit				= "Verkünde verfolgte Ziele",
	specWarnPursuit			= "Zeige Spezialwarnung, wenn du verfolgt wirst",
	SetIconOnPursuitTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(68987)
})

L:SetMiscLocalization({
	IckPursuit	= "%s jagt Euch!",
	Barrage	= "%s fängt an, schnell explosive Minen herbeizuzaubern!"
})
----------------------------
--  Forgemaster Garfrost  --
----------------------------
L = DBM:GetModLocalization("ForgemasterGarfrost")

L:SetGeneralLocalization({
	name = "Schmiedemeister Garfrost"
})

L:SetWarningLocalization({
	warnSaroniteRock			= "Saronitbrocken auf >%s<",
	specWarnSaroniteRock		= "Saronit werfen auf dich - Lauf!",
	specWarnSaroniteRockNear	= "Saronit werfen in deine Nähe - Lauf!",
	specWarnPermafrost			= "%s: %s"
})

L:SetOptionLocalization({
	warnSaroniteRock			= "Verkünde Ziele von $spell:70851",
	specWarnSaroniteRock		= "Zeige Spezialwarnung, wenn du von $spell:70851 betroffen bist",
	specWarnSaroniteRockNear	= "Zeige Spezialwarnung, wenn jemand in deiner Nähe von $spell:70851\nbetroffen ist",
	specWarnPermafrost			= "Zeige Spezialwarnung, wenn $spell:70336 zu hoch stapelt",
	AchievementCheck			= "Verkünde Warnungen für den Erfolg 'Elfer raus!' an Gruppe",
	SetIconOnSaroniteRockTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(70851)
})

L:SetMiscLocalization({
	SaroniteRockThrow	= "%s schleudert Euch einen massiven Saronitstein entgegen!",
	AchievementWarning	= "Warnung: %s hat %d Stapel von Permafrost",
	AchievementFailed	= ">> ERFOLG FEHLGESCHLAGEN: %s hat %d Stapel von Permafrost <<"
})

----------------------------
--  Scourgelord Tyrannus  --
----------------------------
L = DBM:GetModLocalization("ScourgelordTyrannus")

L:SetGeneralLocalization({
	name = "Geißelfürst Tyrannus"
})

L:SetWarningLocalization({
	specWarnHoarfrost		= "Raureif auf dir",
	specWarnHoarfrostNear	= "Raureif in deiner Nähe - Lauf!"
})

L:SetTimerLocalization{
	TimerCombatStart	= "Kampfbeginn"
}

L:SetOptionLocalization({
	specWarnHoarfrost			= "Zeige Spezialwarnung, wenn du von $spell:69246 betroffen bist",
	specWarnHoarfrostNear		= "Zeige Spezialwarnung, wenn jemand in deiner Nähe von $spell:69246 betroffen ist",
	TimerCombatStart			= "Zeige Zeit bis Kampfbeginn",
	SetIconOnHoarfrostTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(69246)
})

L:SetMiscLocalization({
	CombatStart	= "Ach, Ihr tapferen, tapferen Helden, Euer kleiner Aufstand endet hier. Hört Ihr das Geklapper von Stahl und Knochen aus dem Tunnel hinter Euch? Das ist das Geräusch Eures Todes.",
	HoarfrostTarget	= "Der Frostwyrm Raufang wendet sich (%S+) zu und bereitet einen eisigen Angriff vor!",
	YellCombatEnd	= "Unmöglich... Raufang... warne..."
})

----------------------
--  Forge of Souls  --
----------------------
--  Bronjahm  --
----------------
L = DBM:GetModLocalization("Bronjahm")

L:SetGeneralLocalization({
	name = "Bronjahm"
})

L:SetWarningLocalization({
	specwarnSoulstorm	= "Seelensturm - Lauf rein!"
})

L:SetOptionLocalization({
	specwarnSoulstorm	= "Zeige Spezialwarnung, wenn $spell:68872 gewirkt wird (zum Reinlaufen)"
})

-------------------------
--  Devourer of Souls  --
-------------------------
L = DBM:GetModLocalization("DevourerofSouls")

L:SetGeneralLocalization({
	name = "Verschlinger der Seelen"
})

L:SetWarningLocalization({
	specwarnMirroredSoul	= "Schadensstop",
	specwarnWailingSouls	= "Klagende Seelen - Lauf hinter den Boss!"
})

L:SetOptionLocalization({
	specwarnMirroredSoul	= "Zeige Spezialwarnung für Schadensstop bei $spell:69051",
	specwarnWailingSouls	= "Zeige Spezialwarnung, wenn $spell:68899 gewirkt wird",
	SetIconOnMirroredTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(69051)
})


---------------------------
--  Halls of Reflection  --
---------------------------
--  Wave Timers  --
-------------------
L = DBM:GetModLocalization("HoRWaveTimer")

L:SetGeneralLocalization({
	name = "Wellentimer"
})

L:SetWarningLocalization({
	WarnNewWaveSoon	= "Neue Welle bald",
	WarnNewWave		= "%s kommt"
})

L:SetTimerLocalization({
	TimerNextWave	= "Nächste Welle"
})

L:SetOptionLocalization({
	WarnNewWave			= "Zeige Warnung für neuen Boss",
	WarnNewWaveSoon		= "Zeige Vorwarnung für neue Welle nach dem ersten Boss",
	ShowAllWaveWarnings	= "Zeige Warnungen für alle Wellen",
	TimerNextWave		= "Zeige Zeit bis die nächste Wellengruppe nach dem ersten Boss kommt",
	ShowAllWaveTimers	= "Zeige Vorwarnung und Timer für alle Wellen (ungenau)"
})

L:SetMiscLocalization({
	Falric		= "Falric",
	WaveCheck	= "Geisterwelle = (%d+)/10"
})

--------------
--  Falric  --
--------------
L = DBM:GetModLocalization("Falric")

L:SetGeneralLocalization({
	name = "Falric"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
})

--------------
--  Marwyn  --
--------------
L = DBM:GetModLocalization("Marwyn")

L:SetGeneralLocalization({
	name = "Marwyn"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
})

-----------------------
--  Lich King Event  --
-----------------------
L = DBM:GetModLocalization("LichKingEvent")

L:SetGeneralLocalization({
	name = "Arthas entflohen"
})

L:SetWarningLocalization({
	WarnWave1		= "6 Tobende Ghule, 1 Auferstandener Hexendoktor kommen",--6 Ghoul, 1 WitchDocter
	WarnWave2		= "6 Tobende Ghule, 2 Auferstandene Hexendoktoren, 1 Schwerfällige Monstrosität kommen",--6 Ghoul, 2 WitchDocter, 1 Abom
	WarnWave3		= "6 Tobende Ghule, 2 Auferstandene Hexendoktoren, 2 Schwerfällige Monstrositäten kommen",--6 Ghoul, 2 WitchDocter, 2 Abom
	WarnWave4		= "12 Tobende Ghule, 4 Auferstandene Hexendoktoren, 3 Schwerfällige Monstrositäten kommen"--12 Ghoul, 3 WitchDocter, 3 Abom
})

L:SetTimerLocalization({
	achievementEscape	= "Zeit zur Flucht"
})

L:SetOptionLocalization({
	ShowWaves	= "Zeige Warnung für Monsterwellen"
})

L:SetMiscLocalization({
	Ghoul			= "Tobender Ghul",--creature id 36940. Not sure how to use these in function above to simplify locals though. :\
	Abom			= "Schwerfällige Monstrosität",--creature id 37069
	WitchDoctor		= "Auferstandener Hexendoktor",--creature id 36941
	ACombatStart	= "Seine Macht ist zu groß. Wir müssen diesen Ort sofort verlassen! Meine Magie kann ihn nur kurze Zeit halten. Beeilt Euch, Helden!",
	HCombatStart	= "Er ist... zu mächtig. Schnell, Helden... kommt! Wir müssen fliehen. Ich werde mein Möglichstes tun, um ihn solange es geht an Ort und Stelle zu halten.",
	Wave1			= "Es gibt kein Entkommen!",
	Wave2			= "Ergebt Euch der Grabeskälte!",
	Wave3			= "Eine weitere Sackgasse!",
	Wave4			= "Wie lange könnt Ihr Euch noch wehren?",
	YellCombatEnd	= "FEUER... FREI!"
})
