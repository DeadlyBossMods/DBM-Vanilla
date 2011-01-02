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
	name = "Käfer-Trio"
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
	WarnWound = DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(25646, GetSpellInfo(25646) or "unknown")
}
--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "Viscidus"
}
L:SetWarningLocalization{
	WarnFreeze	= "Freeze: %d/3",
	WarnShatter	= "Shatter: %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Announce Freeze status",
	WarnShatter	= "Announce Shatter status",
}
L:SetMiscLocalization{
	Phase4 	= "begins to crack", --translate
	Phase5 	= "looks ready to shatter", --translate
	Phase6 	= "Explodes." --translate
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
	WarnAcid	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(26180, GetSpellInfo(26180) or "unknown")
	}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "Zwillings Imperatoren"
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
L:SetOptionLocalization{
	RangeFrame	= "Show range frame"
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "Ouro"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Submerge",
	WarnEmerge			= "Emerge",
	WarnSubmergeSoon	= "Submerge soon",
	WarnEmergeSoon		= "Emerge soon"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submerge",
	TimerEmerge			= "Emerge"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Show warning for submerge",
	WarnSubmergeSoon	= "Show pre-warning for submerge",
	TimerSubmerge		= "Show timer for submerge",
	WarnEmerge			= "Show warning for emerge",
	WarnEmergeSoon		= "Show pre-warning for emerge",
	TimerEmerge			= "Show timer for emerge"
}