if GetLocale() ~= "deDE" then return end
local L

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
	Phase2Emote	= "Kugel der Herrschaft verliert Energie und schaltet sich ab!",
	YellPull 	= "Eindringlinge sind in die Brutstätte vorgestoßen! Schlagt Alarm! Beschützt die Eier um jeden Preis!"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name = "Vaelastrasz der Verdorbene"
}

L:SetTimerLocalization{
	TimerCombatStart	= "Kampfbeginn"
}

L:SetOptionLocalization{
	TimerCombatStart	= "Zeige Zeit bis Kampfbeginn"
}

L:SetMiscLocalization{
	Event				= "Zu spät, Freunde! Nefarius üble Macht wirkt bereits... Ich habe mich nicht... nicht mehr unter Kontrolle.."
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name = "Brutwächter Dreschbringer"
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
	WarnBreathSoon	= "Atem bald",
	WarnBreath		= "%s",
	WarnPhase2Soon	= "Phase 2 bald"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s CD"
}
L:SetOptionLocalization{
	WarnBreathSoon	= "Zeige Vorwarnung für die Atem des Chromaggus",
	WarnBreath		= "Zeige Warnung, wenn Chromaggus einen seiner Atem wirkt",
	TimerBreathCD	= "Abklingzeit der Atem anzeigen",
	WarnPhase2Soon	= "Verkünde baldigen Beginn von Phase 2"
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
	WarnClassCallSoon	= "Klassenruf bald",
	WarnClassCall		= "%s Ruf",
	WarnPhaseSoon		= "Phase %s bald",
	WarnPhase			= "Phase %s"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s Ruf"
}
L:SetOptionLocalization{
	TimerClassCall		= "Dauer der Klassenrufe anzeigen",
	WarnClassCallSoon	= "Zeige Vorwarnung für Klassenrufe",
	WarnClassCall		= "Verkünde Klassenrufe",
	WarnPhaseSoon		= "Verkünde baldigen Phasenwechsel",
	WarnPhase			= "Verkünde Phasenwechsel"
}
L:SetMiscLocalization{
	YellPull	= "Lasst die Spiele beginnen!",
	YellP2		= "Sehr gut, meine Diener. Der Mut der Sterblichen scheint zu schwinden! Nun lasst uns sehen, wie sie sich gegen den wahren Herrscher des Schwarzfels behaupten werden!",
	YellP3		= "Unmöglich! Erhebt Euch, meine Diener! Kämpft erneut für Euren Meister!",
	YellShaman	= "Schamane, zeigt mir was eure Totems können!",
	YellPaladin	= "Paladine... ich habe gehört, dass Ihr viele Leben habt. Zeigt es mir.",
	YellDruid	= "Druiden und ihre lächerliche Gestaltwandlung. Zeigt mal was Ihr könnt!",
	YellPriest	= "Priester! Wenn Ihr weiterhin so heilt, können wir es auch gerne etwas interessanter gestalten!",
	YellWarrior	= "Krieger, Ich bin mir sicher, dass ihr kräftiger als das zuschlagen könnt!",
	YellRogue	= "Schurken? Kommt aus den Schatten und zeigt Euch!",
	YellWarlock	= "Hexenmeister, ihr solltet nicht mit Magie spielen, die ihr nicht versteht. Seht ihr was ich meine?", --needs to be verified (current translation source: rpguides)
	YellHunter	= "Jäger und ihre lästigen Knallbüchsen!",
	YellMage	= "Auch Magier? Ihr solltet vorsichtiger sein, wenn Ihr mit Magie spielt...",
	YellDK		= "Todesritter... kommt hierher!"
}