local L

---------------------------
--  Hydross the Unstable --
---------------------------
L = DBM:GetModLocalization("Hydross")

L:SetGeneralLocalization{
	name = "Hydross the Unstable"
}

L:SetWarningLocalization{
	WarnMark 		= "%s : %s",
	WarnPhase		= "%s Phase",
	SpecWarnMark	= "%s : %s",
}

L:SetTimerLocalization{
	TimerMark	= "Next %s : %s"
}

L:SetOptionLocalization{
	WarnMark		= "Show warning for Marks",
	WarnPhase		= "Show warning for next phase",
	SpecWarnMark	= "Show warning when Marks debuff damage over 100%",
	TimerMark		= "Show timer for next Marks",
	RangeFrame		= "Show range frame (10 yards)"
}

L:SetMiscLocalization{
	Frost	= "Frost",
	Nature	= "Nature"
}

-----------------------
--  The Lurker Below --
-----------------------
L = DBM:GetModLocalization("LurkerBelow")

L:SetGeneralLocalization{
	name = "The Lurker Below"
}

L:SetWarningLocalization{
	WarnSubmerge		= "Submerged",
	WarnSubmergeSoon	= "Submerge in 10 sec",
	WarnEmerge			= "Emerged",
	WarnEmergeSoon		= "Emerge in 10 sec"
}

L:SetTimerLocalization{
	TimerSubmerge		= "Sumberge",
	TimerEmerge			= "Emerge"
}

L:SetOptionLocalization{
	WarnSubmerge		= "Show warning when submerge",
	WarnSubmergeSoon	= "Show pre-warning for submerge",
	WarnEmerge			= "Show warning when emerge",
	WarnEmergeSoon		= "Show pre-warning for emerge",
	TimerSubmerge		= "Show time for submerge",
	TimerEmerge			= "Show time for emerge"
}

L:SetMiscLocalization{
	Spout	= "%s takes a deep breath!"
}

--------------------------
--  Leotheras the Blind --
--------------------------
L = DBM:GetModLocalization("Leotheras")

L:SetGeneralLocalization{
	name = "Leotheras the Blind"
}

L:SetWarningLocalization{
	WarnPhase		= "%s Phase",
	WarnPhaseSoon	= "%s Phase in 5 sec"
}

L:SetTimerLocalization{
	TimerPhase	= "Next %s Phase"
}

L:SetOptionLocalization{
	WarnPhase		= "Show warning for next phase",
	WarnPhaseSoon	= "Show pre-warning for next phase",
	TimerPhase		= "Show time for next phase",
	DemonIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(37676)
}

L:SetMiscLocalization{
	Human		= "Human",
	Demon		= "Demon",
	YellDemon	= "Be gone, trifling elf%.%s*I am in control now!",
	YellPhase2	= "No... no! What have you done? I am the master! Do you hear me? I am... aaggh! Can't... contain him."
}

-----------------------------
--  Fathom-Lord Karathress --
-----------------------------
L = DBM:GetModLocalization("Fathomlord")

L:SetGeneralLocalization{
	name = "Fathom-Lord Karathress"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
	YellPull	= "Guards, attention! We have visitors....",
	Caribdis	= "Fathom-Guard Caribdis",
	Tidalvess	= "Fathom-Guard Tidalvess",
	Sharkkis	= "Fathom-Guard Sharkkis"
}

--------------------------
--  Morogrim Tidewalker --
--------------------------
L = DBM:GetModLocalization("Tidewalker")

L:SetGeneralLocalization{
	name = "Morogrim Tidewalker"
}

L:SetWarningLocalization{
	WarnMurlocs		= "Murlocs",
	SpecWarnMurlocs	= "Murlocs Coming!",
}

L:SetTimerLocalization{
	TimerMurlocs	= "Murlocs"
}

L:SetOptionLocalization{
	WarnMurlocs		= "Show warning when Murlocs spawning",
	SpecWarnMurlocs	= "Show special warning when Murlocs spawning",
	TimerMurlocs	= "Show timer for Murlocs spawning",
	GraveIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(38049)
}

L:SetMiscLocalization{
}

-----------------
--  Lady Vashj --
-----------------
L = DBM:GetModLocalization("Vashj")

L:SetGeneralLocalization{
	name = "Lady Vashj"
}

L:SetWarningLocalization{
	WarnElemental		= "Tainted Elemental Soon (%s)",
	WarnStrider			= "Strider Soon (%s)",
	WarnNaga			= "Naga Soon (%s)",
	WarnShield			= "Shield %d/4 down",
	WarnLoot			= "Tainted Core on >%s<",
	SpecWarnElemental	= "Tainted Elemental Soon!",
	SpecWarnCore		= "Tainted Core on YOU!"
}

L:SetTimerLocalization{
	TimerElemental		= "Next Elemental (%d)",
	TimerStrider		= "Next Strider (%d)",
	TimerNaga			= "Next Naga (%d)"
}

L:SetOptionLocalization{
	WarnElemental		= "Show pre-warning for next Tainted Elemental",
	WarnStrider			= "Show pre-warning for next Strider",
	WarnNaga			= "Show pre-warning for next Naga",
	WarnShield			= "Show warning for Phase 2 shield down",
	WarnLoot			= "Show warning for Tainted Core loot",
	TimerElemental		= "Show time for next Tainted Elemental",
	TimerStrider		= "Show time for next Strider",
	TimerNaga			= "Show time for next Naga",
	SpecWarnElemental	= "Show special warning when Tainted Elemental coming",
	SpecWarnCore		= "Show special warning if you receive a Tainted Core",
	RangeFrame			= "Show range frame (10 yards)",
	ChargeIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(38280),
	LootIcon			= "Set icon on players with a Tainted Core"
}

L:SetMiscLocalization{
	DBM_VASHJ_YELL_PHASE2	= "The time is now! Leave none standing!"
}