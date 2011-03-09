if GetLocale() ~= "deDE" then return end

local L

------------------------
--  Rage Winterchill  --
------------------------
L = DBM:GetModLocalization("Rage")

L:SetGeneralLocalization{
	name = "Furor Winterfrost"
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
	WarnMark = "Mal #%d"
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
	YellOnBurst	= "Chat-Nachricht verschicken, wenn man Ziel von Windböe ist",
	BurstIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(32014)
}

L:SetMiscLocalization{
	YellBurst	= "Windböe kommt!"
}

----------------
-- WaveTimers --
----------------
L = DBM:GetModLocalization("HyjalWaveTimers")

L:SetGeneralLocalization{
	name 		= "Wave Features"--Translate
}
L:SetWarningLocalization{
	WarnWave	= "%s",
	WarnWaveSoon= "Nächste Welle kommt bald"
}
L:SetTimerLocalization{
	TimerWave	= "Next wave"--Translate
}
L:SetOptionLocalization{
	WarnWave		= "Warn when a new wave is incoming",--Translate
	WarnWaveSoon	= "Warn when a new wave is incoming soon",--Translate
	DetailedWave	= "Detailed warning when a new wave is incoming (which mobs)",--Translate
	TimerWave		= "Show a timer for next wave"--Translate
}
L:SetMiscLocalization{
	HyjalZoneName	= "Hyjalgipfel",
	Thrall			= "Thrall",
	Jaina			= "Lady Jaina Prachtmeer",
	RageWinterchill	= "Furor Winterfrost",
	Anetheron		= "Anetheron",
	Kazrogal		= "Kaz'rogal",
	Azgalor			= "Azgalor",
	WaveCheck		= "Derzeitige Welle = (%d+) von 8",
	WarnWave_0		= "Welle %s/8",
	WarnWave_1		= "Welle %s/8 - %s %s",
	WarnWave_2		= "Welle %s/8 - %s %s und %s %s",
	WarnWave_3		= "Welle %s/8 - %s %s, %s %s und %s %s",
	WarnWave_4		= "Welle %s/8 - %s %s, %s %s, %s %s und %s %s",
	WarnWave_5		= "Welle %s/8 - %s %s, %s %s, %s %s, %s %s und %s %s",
	RageGossip		= "Meine Gefährten und ich werden Euch zur Seite stehen, Lady Prachtmeer.",
	AnetheronGossip	= "Was auch immer Archimonde gegen uns ins Feld schicken mag, wir sind bereit, Lady Prachtmeer.",
	KazrogalGossip	= "Ich werde Euch zur Seite stehen, Thrall!",
	AzgalorGossip	= "Wir haben nichts zu befürchten.",
	Ghoul			= "Ghule",
	Abomination		= "Monstrositäten",
	Necromancer		= "Nekromanten",
	Banshee			= "Banshees",
	Fiend			= "Gruftscheusale",
	Gargoyle		= "Gargoyles",
	Wyrm			= "Frostwyrm",
	Stalker			= "Teufelspirscher",
	Infernal		= "Höllenbestien"
}
