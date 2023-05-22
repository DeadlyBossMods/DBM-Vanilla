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
	Wave3		= "Die Zeit der Vergeltung ist gekommen! Lasst uns die Herzen unserer Feinde mit Dunkelheit erfüllen!",
	Wave4		= "Wir werden nicht länger hinter verbarrikadierten Toren und Mauern aus Stein ausharren! Die Rache wird unser sein! Selbst die Drachen werden im Angesicht unseres Zornes erzittern!",
	Wave5		= "Wir kennen keine Furcht! Und wir werden unseren Feinden den Tod bringen!",
	Wave6		= "Hirschhaupt wird winseln und um sein Leben betteln, genau wie sein räudiger Sohn! Eintausend Jahre der Ungerechtigkeit werden heute enden!",
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
	PursueEmote 	= "%s behält %s im Blickfeld!"
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

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "Chromaggus"
}
L:SetWarningLocalization{
	WarnBreath		= "%s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s CD"
}
L:SetOptionLocalization{
	WarnBreath		= "Zeige Warnung, wenn Chromaggus einen seiner Atem wirkt",
	TimerBreathCD	= "Abklingzeit der Atem anzeigen"
}
L:SetMiscLocalization{
	Breath1	= "Erster Atem",
	Breath2	= "Zweiter Atem"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "Nefarian"
}
L:SetWarningLocalization{
	WarnClassCall		= "%s Ruf"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s Ruf endet"
}
L:SetOptionLocalization{
	TimerClassCall		= "Dauer der Klassenrufe anzeigen",
	WarnClassCall		= "Verkünde Klassenrufe"
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
