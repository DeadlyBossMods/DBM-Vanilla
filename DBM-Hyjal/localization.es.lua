if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end

local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization{
	name = "Ira Fríoinvierno"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	IceBoltIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(31249)
}

L:SetMiscLocalization{
}

-----------------
--  Anetheron  --
-----------------
L = DBM:GetModLocalization("Anetheron")

L:SetGeneralLocalization{
	name = "Anetheron"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
}

----------------
--  Kazrogal  --
----------------
L = DBM:GetModLocalization("Kazrogal")

L:SetGeneralLocalization{
	name = "Kaz'rogal"
}

L:SetWarningLocalization{
	WarnMark = "Marca #%d"
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	WarnMark = "Show warning for $spell:31447"--Translate
}

L:SetMiscLocalization{
}

---------------
--  Azgalor  --
---------------
L = DBM:GetModLocalization("Azgalor")

L:SetGeneralLocalization{
	name = "Azgalor"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	DoomIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(31347)
}

L:SetMiscLocalization{
}

------------------
--  Archimonde  --
------------------
L = DBM:GetModLocalization("Archimonde")

L:SetGeneralLocalization{
	name = "Archimonde"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	YellOnBurst	= "Enviar un mensaje de chat cuando te haga Ráfaga de aire.",
	BurstIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(32014)
}

L:SetMiscLocalization{
	YellBurst	= "¡Ráfaga de aire viene!"
}

----------------
-- WaveTimers --
----------------
L = DBM:GetModLocalization("HyjalWaveTimers")

L:SetGeneralLocalization{
	name 		= "Avisos de trash"
}
L:SetWarningLocalization{
	WarnWave	= "%s",
	WarnWaveSoon= "Nueva oleada pronto"
}
L:SetTimerLocalization{
	TimerWave	= "Siguiente oleada"
}
L:SetOptionLocalization{
	WarnWave		= "Avisar cuando salga una nueva oleada",
	WarnWaveSoon	= "Avisar cuando falte poco para nueva oleada",
	DetailedWave	= "Aviso detallado cuando venga una nueva oleada (Que monstruos)",
	TimerWave		= "Mostrar tiempo para siguiente oleada"
}
L:SetMiscLocalization{
	HyjalZoneName	= "La Cima Hyjal",
	Thrall			= "Thrall",
	Jaina			= "Lady Jaina Valiente",
	RageWinterchill	= "Ira Fríoinvierno",
	Anetheron		= "Anetheron",
	Kazrogal		= "Kazrogal",
	Azgalor			= "Azgalor",
	WaveCheck		= "Oleada actual = (%d+) de 8",
	WarnWave_0		= "Oleada %s/8",
	WarnWave_1		= "Oleada %s/8 - %s %s",
	WarnWave_2		= "Oleada %s/8 - %s %s y %s %s",
	WarnWave_3		= "Oleada %s/8 - %s %s, %s %s y %s %s",
	WarnWave_4		= "Oleada %s/8 - %s %s, %s %s, %s %s y %s %s",
	WarnWave_5		= "Oleada %s/8 - %s %s, %s %s, %s %s, %s %s y %s %s",
	RageGossip		= "Mis compañeros y yo estamos contigo, Lady Valiente.",
	AnetheronGossip	= "Estamos listos para cualquier cosa que Archimonde nos mande, Lady Valiente.",
	KazrogalGossip	= "Estoy contigo, Thrall.",
	AzgalorGossip	= "No tenemos nada que temer.",
	Ghoul			= "Necrófagos",
	Abomination		= "Abominaciones",
	Necromancer		= "Nigromantes",
	Banshee			= "Almas en pena",
	Fiend			= "Malignos de cripta",
	Gargoyle		= "Gargolas",
	Wyrm			= "Vermis de escarcha",
	Stalker			= "Acechadores viles",
	Infernal		= "Infernales"
}
