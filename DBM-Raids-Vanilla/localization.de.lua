if GetLocale() ~= "deDE" then return end
local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "Der Prophet Skeram"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "Adel der Silithiden"
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
	WarnShatter	= "Verkünde Zerspringen Status"
}
L:SetMiscLocalization{
	Slow	= "wird langsamer",
	Freezing= "friert ein",
	Frozen	= "ist tiefgefroren",
	Phase4 	= "geht die Puste aus",
	Phase5 	= "ist kurz davor, zu zerspringen",
	Phase6 	= "Explodes." --translate (trigger)
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "Prinzessin Huhuran"
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
L:SetWarningLocalization{
	WarnEyeTentacle			= "Augententakel erscheinen",
	WarnClawTentacle2		= "Klauententakel erscheinen",
	WarnGiantEyeTentacle	= "Riesiges Augententakel erscheinen",
	WarnGiantClawTentacle	= "Riesiges Klauententakel erscheinen",
	SpecWarnWeakened		= "C'Thun ist geschwächt!"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "Nächstes Augententakel",
	TimerClawTentacle		= "Nächstes Klauententakel",
	TimerGiantEyeTentacle	= "Nächstes Riesiges Augententakel",
	TimerGiantClawTentacle	= "Nächstes Riesiges Klauententakel",
	TimerWeakened			= "Schwäche endet"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "Zeige Warnung, wenn Augententakel erscheinen",
	WarnClawTentacle2		= "Zeige Warnung, wenn Klauententakel erscheinen",
	WarnGiantEyeTentacle	= "Zeige Warnung, wenn Riesiges Augententakel erscheinen",
	WarnGiantClawTentacle	= "Zeige Warnung, wenn Riesiges Klauententakel erscheinen",
	SpecWarnWeakened		= "Spezialwarnung, wenn C'Thun geschwächt ist",
	TimerEyeTentacle		= "Zeige Zeit bis die nächsten Augententakel erscheinen",
	TimerClawTentacle		= "Zeige Zeit bis die nächsten Klauententakel erscheinen",
	TimerGiantEyeTentacle	= "Zeige Zeit bis die nächsten Riesiges Augententakel erscheinen",
	TimerGiantClawTentacle	= "Zeige Zeit bis die nächsten Riesiges Klauententakel erscheinen",
	TimerWeakened			= "Dauer der Schwäche von C'Thun anzeigen",
	RangeFrame				= "Zeige Abstandsfenster (10m)"
}
L:SetMiscLocalization{
	Stomach		= "Magen von C'Thun",
	Eye			= "Auge von C'Thun",
	FleshTent	= "Fleischtentakel",
	Weakened 	= "C'Thun ist geschwächt!",
	NotValid	= "AQ40 teilweise gelöscht. % s optionale Bosse bleiben erhalten."
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
	WarnEmerge			= "Auftauchen"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Abtauchen",
	TimerEmerge			= "Auftauchen"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Zeige Warnung für Abtauchen",
	TimerSubmerge		= "Zeige Zeit bis Abtauchen",
	WarnEmerge			= "Zeige Warnung für Auftauchen",
	TimerEmerge			= "Zeige Zeit bis Auftauchen"
}

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "Kurinnaxx"
}
------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "General Rajaxx"
}
L:SetWarningLocalization{
	WarnWave	= "Welle %s"
}
L:SetOptionLocalization{
	WarnWave	= "Zeige Meldung für nächste Angriffswelle"
}
L:SetMiscLocalization{
	Wave12		= "Hier kommen sie. Bleibt am Leben, Welpen.",
	Wave12Alt	= "Erinnerst du dich daran, Rajaxx, wann ich dir das letzte Mal sagte, ich würde dich töten?",
	Wave3		= "Die Zeit der Vergeltung ist gekommen! Lasst uns die Herzen unserer Feinde mit Dunkelheit füllen!",
	Wave4		= "Wir werden nicht länger hinter verbarrikadierten Toren und Mauern aus Stein ausharren! Die Rache wird unser sein! Selbst die Drachen werden im Angesicht unseres Zornes erzittern!",
	Wave5		= "Wir kennen keine Furcht! Und wir werden unseren Feinden den Tod bringen!",
	Wave6		= "Staghelm wird winseln und um sein Leben betteln, genau wie sein räudiger Sohn! Eintausend Jahre der Ungerechtigkeit werden heute enden!",
	Wave7		= "Fandral! Deine Zeit ist gekommen! Geh und verstecke dich im Smaragdgrünen Traum, und bete, dass wir dich nie finden werden!",
	Wave8		= "Unverschämter Narr! Ich werde Euch höchstpersönlich töten!"
}

----------
-- Moam --
----------
L = DBM:GetModLocalization("Moam")

L:SetGeneralLocalization{
	name 		= "Moam"
}

----------
-- Buru --
----------
L = DBM:GetModLocalization("Buru")

L:SetGeneralLocalization{
	name 		= "Buru der Verschlinger"
}
L:SetWarningLocalization{
	WarnPursue		= "Verfolgung auf >%s<",
	SpecWarnPursue	= "Du wirst verfolgt",
	WarnDismember	= "%s auf >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "Verkünde Ziele von Verfolgung",
	SpecWarnPursue	= "Spezialwarnung, wenn du verfolgt wirst"
}
L:SetMiscLocalization{
	PursueEmote 	= "behält %S* im Blickfeld!"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "Ayamiss der Jäger"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "Ossirian der Narbenlose"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "Verkünde Schwächen",
	TimerVulnerable	= "Dauer der Schwächen anzeigen"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "AQ20 Trash"
}

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "Feuerkralle der Ungezähmte"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "Adds erscheinen"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "Zeige Zeit bis die ersten Adds erscheinen"
}
L:SetMiscLocalization{
	Phase2Emote	= "flieht während die kontrollierenden Kräfte der Kugel schwinden.",
	YellPull 	= "Eindringlinge sind in die Brutstätte vorgestoßen! Schlagt Alarm! Beschützt die Eier um jeden Preis!"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name				= "Vaelastrasz der Verdorbene"
}

L:SetMiscLocalization{
	Event				= "Zu spät, Freunde! Nefarius üble Macht wirkt bereits... Ich habe mich nicht... nicht mehr unter Kontrolle.."
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "Brutwächter Dreschbringer"
}

L:SetMiscLocalization{
	Pull	= "Euresgleichen sollte nicht hier sein! Ich werde Euch vernichten!"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "Feuerschwinge"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "Schattenschwinge"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "Flammenmaul"
}

----------------
--  Ebonroc and Flamegor  --
----------------
L = DBM:GetModLocalization("EbonrocandFlamegor")

L:SetGeneralLocalization{
	name = "Schattenschwinge und Flammenmaul"
}

L:SetTimerLocalization{
	TimerBrandCD	= "Brandmal"
}
L:SetOptionLocalization{
	TimerBrandCD	= "Zeige Timer für Cooldown von Brandmal"
}

L:SetMiscLocalization{
	Ebonroc		= "Schattenschwinge",
	Flamegor	= "Flammenmaul"
}

-----------------------
--  Vulnerabilities  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("BWLTrash")

L:SetGeneralLocalization{
	name = "Todeskrallenwache"--FIXME
}
L:SetWarningLocalization{
	WarnVulnerable = "%sverwundbarkeit"
}
L:SetOptionLocalization{
	WarnVulnerable = "Zeige Warnung für Zauberverwundbarkeit"
}
L:SetMiscLocalization{
	Fire = "Feuer",
	Nature = "Natur",
	Frost = "Frost",
	Shadow = "Schatten",
	Arcane = "Arkan",
	Holy = "Heilig"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "Chromaggus"
}
L:SetWarningLocalization{
	WarnBreath = "%s",
	WarnVulnerable = "Verwundbarkeit: %s"
}
L:SetTimerLocalization{
	TimerBreathCD = "Abklingzeit der %s",
	TimerBreath = "%s Zauber",
	TimerVulnCD = "Abklingzeit der Verwundbarkeit"
}
L:SetOptionLocalization{
	WarnBreath = "Zeige Warnung, wenn Chromaggus einen seiner Atem wirkt",
	WarnVulnerableNew = "Zeige Warnung für Zauberverwundbarkeit",
	TimerBreathCD = "Abklingzeit des Atem anzeigen",
	TimerBreath = "Zeige Atem Zauber",
	TimerVulnCD = "Zeige Abklingzeit der Verwundbarkeit"
}
L:SetMiscLocalization{
	Breath1 = "Erster Atem",
	Breath2 = "Zweiter Atem",
	VulnEmote = "%s weicht zurück, als die Haut schimmert.",
	Vuln = "Verwundbarkeit",
	Fire = "Feuer",
	Nature = "Natur",
	Frost = "Frost",
	Shadow = "Schatten",
	Arcane = "Arkan",
	Holy = "Heilig"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "Nefarian"
}
L:SetWarningLocalization{
	WarnAddsLeft = "%d ausstehende Tötungen",
	WarnClassCall = "%s Ruf",
	specwarnClassCall = "Klassenruf auf Dir!"
}
L:SetTimerLocalization{
	TimerClassCall = "%s Ruf endet"
}
L:SetOptionLocalization{
	TimerClassCall = "Dauer der Klassenrufe anzeigen",
	WarnAddsLeft = "Kündige verbleibend Tötungen an bis 2 Phase ausgelöst ist.",
	WarnClassCall = "Verkünde Klassenrufe",
	specwarnClassCall = "Zeige besondere Warnung wenn Du von einem Klassenruf betroffen bist"
}
L:SetMiscLocalization{
	YellP2		= "Sehr gut, meine Diener. Der Mut der Sterblichen scheint zu schwinden! Nun lasst uns sehen, wie sie sich gegen den wahren Herrscher des Schwarzfels behaupten werden!",
	YellP3		= "Unmöglich! Erhebt Euch, meine Diener! Kämpft erneut für Euren Meister!",
	YellShaman	= "Schamane, zeigt mir was eure Totems können!",
	YellPaladin	= "Paladine... ich habe gehört, dass Ihr viele Leben habt. Zeigt es mir.",
	YellDruid	= "Druiden und ihre lächerliche Gestaltwandlung. Zeigt mal was Ihr könnt!",
	YellPriest	= "Priester! Wenn Ihr weiterhin so heilt, können wir es auch gerne etwas interessanter gestalten!",
	YellWarrior	= "Krieger, Ich bin mir sicher, dass ihr kräftiger als das zuschlagen könnt!",
	YellRogue	= "Schurken? Kommt aus den Schatten und zeigt Euch!",
	YellWarlock	= "Hexenmeister, Ihr solltet nicht mit Magie spielen, die Ihr nicht versteht. Seht Ihr was ich meine?",--needs to be verified (wowhead-captured translation)
	YellHunter	= "Jäger und ihre lästigen Knallbüchsen!",
	YellMage	= "Auch Magier? Ihr solltet vorsichtiger sein, wenn Ihr mit Magie spielt...",
	YellDK		= "Todesritter... kommt hierher!",
	YellMonk	= "Mönche, macht Euch dieses Herumrollen denn nicht schwindlig?"--needs to be verified (wowhead-captured translation)
}

L = DBM:GetModLocalization("SoDBWLTrials")

L:SetGeneralLocalization{
	name = "Season of Discovery Trials"
}
L:SetWarningLocalization{
	SpecWarnBothBombs		= "Blau und Grün auf >%s<",
	SpecWarnBothBombsYou	= "Blau und Grün auf DIR",
}
L:SetTimerLocalization{
	TimerBombs				= DBM_COMMON_L.BOMBS
}
L:SetOptionLocalization{
	SpecWarnBothBombs		= "Zeige Special Warning wenn Blau und Grün beide auf dem selben Spieler sind.",
	SpecWarnBothBombsYou	= "Zeige Special Warning wenn Blau und Grün beide auf dir sind.",
	TimerBombs				= "Zeige Timer für die Bomben"
}

L:SetMiscLocalization{
	-- Used in options
	BlueTrial = "Blau",
	GreenTrial = "Grün",
	GreenAndBlue = "Blau und Grün auf dem selben Spieler",
}

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
	name = "Garr"
}

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization{
	name = "Baron Geddon"
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

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "Ragnaros"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Abtauchen",
	WarnEmerge			= "Auftauchen"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Abtauchen",
	TimerEmerge			= "Auftauchen"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Zeige Warnung für Abtauchen",
	TimerSubmerge		= "Zeige Zeit bis Abtauchen",
	WarnEmerge			= "Zeige Warnung für Auftauchen",
	TimerEmerge			= "Zeige Zeit bis Auftauchen"
}
L:SetMiscLocalization{
	Submerge	= "KOMMT HERBEI, MEINE DIENER! VERTEIDIGT EUREN HERRN!",
	Pull		= "Unverschämte Welpen! Ihr seid sehenden Auges dem Tod in die Arme gelaufen! Seht her, der Meister regt sich!"
}

----------------------
--  The Molten Core --
----------------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "Der geschmolzene Kern"
}

L:SetOptionLocalization{
	YellHeartCleared	= "Zeige Sprechblase wenn Herz der Asche/Glut entfernt wurde.",
	WarnBossPower		= "Zeige Warnungen wenn der Boss 50%, 75%, 90% und 100% Energielevel erreicht"
}

L:SetWarningLocalization{
	WarnBossPower		= "Energie bei %d%%"
}


-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "Hohepriester Venoxis"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "Hohepriesterin Jeklik"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "Hohepriesterin Mar'li"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "Hohepriester Thekal"
}

L:SetWarningLocalization({
	WarnSimulKill	= "Erster Diener tot: Auferstehung in ~ 15 Sekunden"
})

L:SetTimerLocalization({
	TimerSimulKill	= "Auferstehung"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Kündigen Sie den ersten Mob an, bald die Auferstehung",
	TimerSimulKill	= "Zeige Timer für die Priesterauferstehung"
})

L:SetMiscLocalization({
	PriestDied	= "%s stirbt.",
	YellPhase2	= "Shirvallah, erfülle mich mit deinem Zorn!",
	YellKill	= "Hakkar kontrolliert mich nicht länger! Endlich Frieden!",
	Thekal		= "Hohepriester Thekal",
	Zath		= "Zelot Zath",
	LorKhan		= "Zelot Lor'Khan"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "Hohepriesterin Arlokk"
}

-------------------
--  Hakkar  --
-------------------
L = DBM:GetModLocalization("Hakkar")

L:SetGeneralLocalization{
	name = "Hakkar"
}

-------------------
--  Bloodlord  --
-------------------
L = DBM:GetModLocalization("Bloodlord")

L:SetGeneralLocalization{
	name = "Blutfürst Mandokir"
}
L:SetMiscLocalization{
	Bloodlord 	= "Blutfürst Mandokir",
	Ohgan		= "Ohgan",
	GazeYell	= "Ich behalte Euch im Auge"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "Rand des Wahnsinns"
}
L:SetMiscLocalization{
	Hazzarah = "Hazza'rah",
	Renataki = "Renataki",
	Wushoolay = "Wushoolay",
	Grilek = "Gri'lek"
}

-------------------
--  Gahz'ranka  --
-------------------
L = DBM:GetModLocalization("Gahzranka")

L:SetGeneralLocalization{
	name = "Gahz'ranka"
}

-------------------
--  Jindo  --
-------------------
L = DBM:GetModLocalization("Jindo")

L:SetGeneralLocalization{
	name = "Jin'do der Verhexer"
}

L:SetMiscLocalization{
	Ghosts = "Geister"
}

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("OnyxiaVanilla")

L:SetGeneralLocalization{
	name = "Onyxia"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "Welpen erscheinen bald"
}

L:SetTimerLocalization{
	TimerWhelps	= "Welpen erscheinen"
}

L:SetOptionLocalization{
	TimerWhelps				= "Zeige Zeit bis Welpen erscheinen",
	WarnWhelpsSoon			= "Zeige Vorwarnung für Erscheinen der Welpen",
	SoundWTF3				= "Spiele witzige Sounds eines legendären Classic-Onyxia-Schlachtzuges"
}

L:SetMiscLocalization{
   Breath = "%s atmet tief ein...",
	YellPull = "Was für ein Zufall. Normalerweise muss ich meinen Unterschlupf verlassen, um etwas zu essen.",
	YellP2 = "Diese sinnlose Anstrengung langweilt mich. Ich werde Euch alle von oben verbrennen!",
	YellP3 = "Mir scheint, dass Ihr noch eine Lektion braucht, sterbliche Wesen!",
	SoDWarning = "Willkommen in %s. DBM wird während dem Kampf einige witzige Sounds aus einem legendären Classic Raid spielen. Wer keinen Spaß versteht kann das im DBM UI deaktivieren: /dbm eingeben und die Einstellungen für Onyxia unter Raids -> Classic öffnen.",
}

-------------------
--  Anub'Rekhan  --
-------------------
L = DBM:GetModLocalization("AnubRekhanVanilla")

L:SetGeneralLocalization({
	name = "Anub'Rekhan"
})

L:SetOptionLocalization({
	ArachnophobiaTimer	= "Zeige Timer für Erfolg 'Arachnophobie'"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Arachnophobie",
	Pull1				= "Rennt! Das bringt das Blut in Wallung!",
	Pull2				= "Nur einmal kosten..."
})

----------------------------
--  Grand Widow Faerlina  --
----------------------------
L = DBM:GetModLocalization("FaerlinaVanilla")

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

L:SetMiscLocalization({
	Pull					= "Kniet nieder, Wurm!"
})

---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("MaexxnaVanilla")

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
	ArachnophobiaTimer	= "Arachnophobie"
})

------------------------------
--  Noth the Plaguebringer  --
------------------------------
L = DBM:GetModLocalization("NothVanilla")

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

L:SetMiscLocalization({
	Pull				= "Sterbt, Eindringling!",
	Adds				= "summons forth Skeletal Warriors!",--translate (trigger)
	AddsTwo				= "raises more skeletons!"--translate (trigger)
})

--------------------------
--  Heigan the Unclean  --
--------------------------
L = DBM:GetModLocalization("HeiganVanilla")

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

L:SetMiscLocalization({
	Pull				= "Ihr gehört mir..."
})

---------------
--  Loatheb  --
---------------
L = DBM:GetModLocalization("LoathebVanilla")

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
L = DBM:GetModLocalization("PatchwerkVanilla")

L:SetGeneralLocalization({
	name = "Flickwerk"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1			= "Flickwerk spielen möchte!",
	yell2			= "Kel’thuzad macht Flickwerk zu seinem Abgesandten von Krieg!"
})

-----------------
--  Grobbulus  --
-----------------
L = DBM:GetModLocalization("GrobbulusVanilla")

L:SetGeneralLocalization({
	name = "Grobbulus"
})

-------------
--  Gluth  --
-------------
L = DBM:GetModLocalization("GluthVanilla")

L:SetGeneralLocalization({
	name = "Gluth"
})

----------------
--  Thaddius  --
----------------
L = DBM:GetModLocalization("ThaddiusVanilla")

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
	WarningChargeChanged	= "Spezialwarnung, wenn deine Polarität gewechselt hat",
	WarningChargeNotChanged	= "Spezialwarnung, wenn deine Polarität nicht gewechselt hat",
	AirowsEnabled			= "Zeige Pfeile (normale \"2-Camps\"-Strategie)",
	ArrowsRightLeft			= "Zeige Links-/Rechtspfeil für die \"4-Camps\"-Strategie<br/>(Linkspfeil bei Polaritätsänderung, Rechtspfeil bei keiner Änderung)",
	ArrowsInverse			= "Umgedrehte \"4-Camps\"-Strategie<br/>(Rechtspfeil bei Polaritätsänderung, Linkspfeil bei keiner Änderung)"
})

L:SetWarningLocalization({
	WarningChargeChanged	= "Polarität geändert zu %s",
	WarningChargeNotChanged	= "Polarität hat sich nicht geändert"
})

----------------------------
--  Instructor Razuvious  --
----------------------------
L = DBM:GetModLocalization("RazuviousVanilla")

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
L = DBM:GetModLocalization("GothikVanilla")

L:SetGeneralLocalization({
	name = "Gothik der Seelenjäger"
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
L = DBM:GetModLocalization("HorsemenVanilla")

L:SetGeneralLocalization({
	name = "Die vier Reiter"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "Zeige Vorwarnung für Mal",
	SpecialWarningMarkOnPlayer	= "Spezialwarnung, wenn sich ein Mal mehr als 4-mal auf dir stapelt"
})

L:SetTimerLocalization({
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Mal %d in 3 Sekunden",
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
L = DBM:GetModLocalization("SapphironVanilla")

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
	WarningDeepBreath	= "Spezialwarnung für $spell:28524"
})

L:SetMiscLocalization({
	EmoteBreath			= "%s holt tief Luft."
})

L:SetWarningLocalization({
	WarningAirPhaseSoon	= "Luftphase in 10 Sek",
	WarningAirPhaseNow	= "Luftphase",
	WarningLanded		= "Bodenphase",
	WarningDeepBreath	= "Frostatem"
})

L:SetTimerLocalization({
	TimerAir		= "Nächste Luftphase",
	TimerLanding	= "Nächste Bodenphase",
	TimerIceBlast	= "Frostatem"
})

------------------
--  Kel'Thuzad  --
------------------

L = DBM:GetModLocalization("KelThuzadVanilla")

L:SetGeneralLocalization({
	name = "Kel'Thuzad"
})

L:SetOptionLocalization({
	TimerPhase2			= "Zeige Zeit bis Phase 2",
	specwarnP2Soon		= "Spezialwarnung 10 Sekunden bevor Kel'Thuzad angreift",
	warnAddsSoon		= "Zeige Vorwarnung für Wächter von Eiskrone"
})

L:SetMiscLocalization({
	Yell = "Diener, Jünger, Soldaten der eisigen Finsternis! Folgt dem Ruf von Kel'Thuzad!"
})

L:SetWarningLocalization({
	specwarnP2Soon	= "Kel'Thuzad greift in 10 Sekunden an",
	warnAddsSoon	= "Wächter von Eiskrone bald"
})

L:SetTimerLocalization({
	TimerPhase2	= "Phase 2"
})

--------------------
--  SoD Hardmode  --
--------------------

L = DBM:GetModLocalization("SoD_NaxxHardmode")

L:SetGeneralLocalization({
	name = "SoD Hardmode"
})

L:SetOptionLocalization({
	AutomateEmote		= "Emote für Marschbefehle automatisch ausführen",
	AffixTimer			= "Zeige Timer für Hardmode Affixe",
	WarnEggs			= "Zeige Warnungen für explodierende Eier",
	SpecWarnOrders		= "Zeige Spezialwarnung wenn DBM es nicht schafft Marschbefehle zu automatisieren"
})

L.MarchingOrderTranslationComplete = false
L:SetMiscLocalization({
	Affixes				= "Affixe",
	ConstructAffix		= "Blitzbombe",
	SpiderAffix			= "Explodierende Eier",
	UnsupportedLocale	= [[Willkommen im ermächtigten Militärquartier!
Die Hardmode Mechanik wählt zufällige Spieler aus und befiehlt diesen ein ausgewähltes Emote auszuführen.
DBM versucht das vollständig zu automatisieren, aber unsere Unterstützung für die Sprache %s ist unvollständig.
Du kannst helfen! Teile den genauen Text (Screenshots, Videos, Transcriptor logs) den die Hardmode Mechanik benutzt mit uns auf discord.gg/deadlybossmods.
]],
	AutomatedEmote		= "DBM hat das Emote %s für Marschbefehle automatisiert.",
	AutomatedEmoteGuess	= "DBM hat das Emote %s für Marschbefehle automatisiert, aber wir sind uns nicht sicher ob das richtig war. Falls das Emote falsch war sag uns Bescheid auf discord.gg/deadlybossmods",
	-- List of emotes may not be complete, let me know if I missed one
	OrderDance			= "TANZT für mich!",
	OrderSalute			= "SALUTIERT, Made!",
	GuessOrderRoar		= "BRÜLLT",
	GuessOrderBow		= "VERBEUGT",
	GuessOrderPray		= "BETET",
	GuessOrderKneel		= "KNIET",
})

L:SetWarningLocalization({
	WarnEggs		= "Eggs spawned",
	SpecWarnOrders	= "Marching Order: %s"
})

L:SetTimerLocalization({
	AffixTimer	= "Affix"
})


---------------------------
--  Season of Discovery  --
---------------------------

---------------------------
--  Blackfathom Deeps  --
---------------------------

------------------
--  Baron Aquanis  --
------------------
L = DBM:GetModLocalization("BaronAuanisSoD")

L:SetGeneralLocalization({
	name = "Baron Aquanis"
})

L:SetMiscLocalization({
	Water		= "Wasser"
})

------------------
--  Ghamoo-ra  --
------------------
L = DBM:GetModLocalization("GhamooraSoD")

L:SetGeneralLocalization({
	name = "Ghamoo-ra"
})

------------------
--  Lady Sarevess  --
------------------
L = DBM:GetModLocalization("LadySarevessSoD")

L:SetGeneralLocalization({
	name = "Lady Sarevess"
})

------------------
--  Gelihast  --
------------------
L = DBM:GetModLocalization("GelihastSoD")

L:SetGeneralLocalization({
	name = "Gelihast"
})

L:SetTimerLocalization{
	TimerImmune = "Immunität endet"
}

L:SetOptionLocalization({
	TimerImmune	= "Zeige Timer für die Immunität zwischen den Phasen."
})

------------------
--  Lorgus Jett  --
------------------
L = DBM:GetModLocalization("LorgusJettSoD")

L:SetGeneralLocalization({
	name = "Lorgus Jett"
})

L:SetWarningLocalization({
	warnPriestRemaining		= "%s Priesterinnen übrig"
})

L:SetOptionLocalization({
	warnPriestRemaining	= "Zeige Warnung für Anzahl verbleibender Priesterinnen"
})

------------------
--  Twilight Lord Kelris  --
------------------
L = DBM:GetModLocalization("TwilightLordKelrisSoD")

L:SetGeneralLocalization({
	name = "Twilight-Lord Kelris"
})

------------------
--  Aku'mai  --
------------------
L = DBM:GetModLocalization("AkumaiSoD")

L:SetGeneralLocalization({
	name = "Aku'mai"
})

------------------
--  Gnomeregan  --
------------------

---------------------------
--  Crowd Pummeler 9-60  --
---------------------------
L = DBM:GetModLocalization("CrowdPummellerSoD")

L:SetGeneralLocalization({
	name = "Meuteverprügler 9-60"
})

---------------
--  Grubbis  --
---------------
L = DBM:GetModLocalization("GrubbisSoD")

L:SetGeneralLocalization({
	name = "Grubbis"
})

L:SetMiscLocalization({
	FirstPull = "In ganz Gnomeregan speien Lüftungsschächten noch immer aktiv radioaktives Material aus.",
	Pull = "Oh nein! Solche Erschütterungen können nur eins bedeuten...",
})

----------------------------
--  Electrocutioner 6000  --
----------------------------
L = DBM:GetModLocalization("ElectrocutionerSoD")

L:SetGeneralLocalization({
	name = "Elektrokutor 6000"
})

-----------------------
--  Viscous Fallout  --
-----------------------
L = DBM:GetModLocalization("ViscousFalloutSoD")

L:SetGeneralLocalization({
	name = "Verflüssigte Ablagerung"
})

----------------------------
--  Mechanical Menagerie  --
----------------------------
L = DBM:GetModLocalization("MechanicalMenagerieSoD")

L:SetGeneralLocalization({
	name = "Mechanische Menagerie"
})

L:SetMiscLocalization{
	Sheep		= "Schaf",
	Whelp		= "Drachenwelpe",
	Squirrel	= "Eichhörnchen",
	Chicken		= "Huhn"
}


-----------------------------
--  Mekgineer Thermaplugg  --
-----------------------------
L = DBM:GetModLocalization("ThermapluggSoD")

L:SetGeneralLocalization({
	name = "Robogenieur Thermaplugg"
})

L:SetTimerLocalization{
	timerTankCD = "Ritzelfeuerschlag"
}

L:SetOptionLocalization({
	timerTankCD	= "Zeige Timer für Cooldown von Ritzelfeuerschlag auf den Maintank in Phase 4 (Tank wechseln)"
})

------------------
--  Sunken Temple  --
------------------
L = DBM:GetModLocalization("STTrashSoD")

L:SetGeneralLocalization{
	name = "Tempel Trash"
}



---------------------------
--  Atal'alarion  --
---------------------------
L = DBM:GetModLocalization("AtalalarionSoD")

L:SetGeneralLocalization({
	name = "Atal'alarion"
})

---------------------------
--  Festering Rotslime  --
---------------------------
L = DBM:GetModLocalization("FesteringRotslimeSoD")

L:SetGeneralLocalization({
	name = "Schwärender Faulschleim"
})

---------------------------
--  Atal'ai Defenders  --
---------------------------
L = DBM:GetModLocalization("AtalaiDefendersSoD")

L:SetGeneralLocalization({
	name = "Verteidiger der Atal'ai"
})

L:SetOptionLocalization({
	SetIconsOnGhosts = "Setze Icons auf Geisterbosse"
})

---------------------------
--  Dreamscythe and Weaver  --
---------------------------
L = DBM:GetModLocalization("DreamscytheAndWeaverSoD")

L:SetGeneralLocalization({
	name = "Traumsense und Wirker"
})
---------------------------
--  Avatar of Hakkar  --
---------------------------
L = DBM:GetModLocalization("AvatarofHakkarSoD")

L:SetGeneralLocalization({
	name = "Avatar von Hakkar"
})
---------------------------
--  Jammal'an and Ogom  --
---------------------------
L = DBM:GetModLocalization("JammalanAndOgomSoD")

L:SetGeneralLocalization({
	name = "Jammal'an und Ogom"
})
---------------------------
--  Morphaz and Hazzas  --
---------------------------
L = DBM:GetModLocalization("MorphazandHazzasSoD")

L:SetGeneralLocalization({
	name = "Morphaz und Hazzas"
})
---------------------------
--  Shade of Eranikus  --
---------------------------
L = DBM:GetModLocalization("ShadeofEranikusSoD")

L:SetGeneralLocalization({
	name = "Eranikus' Schemen"
})
