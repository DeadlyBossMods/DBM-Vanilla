if GetLocale() ~= "deDE" then return end
local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "Der Prophet Skeram"
}

L:SetOptionLocalization{
	SetIconOnMC		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(785)
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
L:SetWarningLocalization{
	WarnWound	= "%s auf >%s< (%s)"
}
L:SetOptionLocalization{
	WarnWound = DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(25646)
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
	WarnShatter	= "Verkünde Zerspringen Status",
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
L:SetWarningLocalization{
	WarnAcid	= "%s auf >%s< (%s)"
}
L:SetOptionLocalization{
	WarnAcid	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(26180)
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
	WarnClawTentacle		= "Klauententakel erscheinen", -- not implemented: unused (r335)
	WarnGiantEyeTentacle	= "Riesiges Augententakel erscheint", -- not implemented: unused (r335)
	WarnGiantClawTentacle	= "Riesiges Klauententakel erscheint", -- not implemented: unused (r335)
	WarnWeakened			= "Rüstung geschwächt für 45 Sekunden!"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "Augententakel",
	TimerClawTentacle		= "Klauententakel",
	TimerGiantEyeTentacle	= "Riesiges Augententakel", -- not implemented: missing spell id (r335)
	TimerGiantClawTentacle	= "Riesiges Klauententakel", -- not implemented: missing spell id (r335)
	TimerWeakened			= "Rüstung geschwächt"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "Zeige Warnung, wenn Augententakel erscheinen",
	WarnClawTentacle		= "NICHT IMPLEMENTIERT! Zeige Warnung, wenn Klauententakel erscheinen", -- not implemented: unused (r335)
	WarnGiantEyeTentacle	= "NICHT IMPLEMENTIERT! Zeige Warnung, wenn Riesiges Augententakel erscheint", -- not implemented: unused (r335)
	WarnGiantClawTentacle	= "NICHT IMPLEMENTIERT! Zeige Warnung, wenn Riesiges Klauententakel erscheint", -- not implemented: unused (r335)
	WarnWeakened			= "Zeige Warnung, wenn die Rüstung von C'Thun geschwächt ist",
	TimerEyeTentacle		= "Zeige Zeit bis Augententakel erscheinen",
	TimerClawTentacle		= "Zeige Zeit bis Klauententakel erscheinen",
	TimerGiantEyeTentacle	= "NICHT IMPLEMENTIERT! Zeige Zeit bis Riesiges Augententakel erscheint", -- not implemented: missing spell id (r335)
	TimerGiantClawTentacle	= "NICHT IMPLEMENTIERT! Zeige Zeit bis Riesiges Klauententakel erscheint", -- not implemented: missing spell id (r335)
	TimerWeakened			= "Dauer der geschwächten Rüstung von C'Thun anzeigen",
	RangeFrame	= "Zeige Abstandsfenster (10m)"
}
L:SetMiscLocalization{
	Weakened 	= "C'Thun ist geschwächt!",
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
	WarnEmerge			= "Auftauchen",
	WarnSubmergeSoon	= "Abtauchen bald",
	WarnEmergeSoon		= "Auftauchen bald"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Abtauchen",
	TimerEmerge			= "Auftauchen"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Zeige Warnung für Abtauchen",
	WarnSubmergeSoon	= "Zeige Vorwarnung für Abtauchen",
	TimerSubmerge		= "Zeige Zeit bis Abtauchen",
	WarnEmerge			= "Zeige Warnung für Auftauchen",
	WarnEmergeSoon		= "Zeige Vorwarnung für Auftauchen",
	TimerEmerge			= "Zeige Zeit bis Auftauchen"
}