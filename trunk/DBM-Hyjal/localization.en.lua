local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization{
	name = "Rage Winterchill"
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
	WarnMark = "Mark of Kaz'rogal (%d)"
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	WarnMark = "Show warning for $spell:31447"
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
	YellOnBurst	= "Yell on $spell:32014",
	BurstIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(32014)
}

L:SetMiscLocalization{
	YellBurst	= "Air Burst on ME!"
}

----------------
-- WaveTimers --
----------------
L = DBM:GetModLocalization("HyjalWaveTimers")

L:SetGeneralLocalization{
	name 		= "Wave Features"
}
L:SetWarningLocalization{
	WarnWave	= "%s",
	WarnWaveSoon= "New wave soon"
}
L:SetTimerLocalization{
	TimerWave	= "Next wave"
}
L:SetOptionLocalization{
	WarnWave		= "Warn when a new wave is incoming",
	WarnWaveSoon	= "Warn when a new wave is incoming soon",
	DetailedWave	= "Detailed warning when a new wave is incoming (which mobs)",
	TimerWave		= "Show a timer for next wave"
}
L:SetMiscLocalization{
	HyjalZoneName	= "Hyjal Summit",
	Thrall			= "Thrall",
	Jaina			= "Lady Jaina Proudmoore",
	RageWinterchill	= "Rage Winterchill",
	Anetheron		= "Anetheron",
	Kazrogal		= "Kazrogal",
	Azgalor			= "Azgalor",
	WaveCheck		= "Current Wave = (%d+) of 8",
	WarnWave_0		= "Wave %s/8",
	WarnWave_1		= "Wave %s/8 - %s %s",
	WarnWave_2		= "Wave %s/8 - %s %s and %s %s",
	WarnWave_3		= "Wave %s/8 - %s %s, %s %s and %s %s",
	WarnWave_4		= "Wave %s/8 - %s %s, %s %s, %s %s and %s %s",
	WarnWave_5		= "Wave %s/8 - %s %s, %s %s, %s %s, %s %s and %s %s",
	RageGossip		= "My companions and I are with you, Lady Proudmoore.",
	AnetheronGossip	= "We are ready for whatever Archimonde might send our way, Lady Proudmoore.",
	KazrogalGossip	= "I am with you, Thrall.",
	AzgalorGossip	= "We have nothing to fear.",
	Ghoul			= "Ghouls",
	Abomination		= "Abominations",
	Necromancer		= "Necromancers",
	Banshee			= "Banshees",
	Fiend			= "Crypt Fiends",
	Gargoyle		= "Gargoyles",
	Wyrm			= "Frost Wyrm",
	Stalker			= "Fel Stalkers",
	Infernal		= "Infernals"
}
