local L

-----------------
--  Najentus  --
-----------------
L = DBM:GetModLocalization("Najentus")

L:SetGeneralLocalization{
	name = "High Warlord Naj'entus"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	SpineIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(39837),
	RangeFrame	= "Show range frame (10)",
	InfoFrame	= "Show info frame for health (<8.8k hp)"
}

L:SetMiscLocalization{
	HealthInfo	= "Health Info"
}

----------------
-- Supremus --
----------------
L = DBM:GetModLocalization("Supremus")

L:SetGeneralLocalization{
	name = "Supremus"
}

L:SetWarningLocalization{
	WarnPhase		= "%s Phase",
	WarnPhaseSoon	= "%s Phase in 10",
	WarnKite		= "Gaze on >%s<"
}

L:SetTimerLocalization{
	TimerPhase		= "Next %s phase"
}

L:SetOptionLocalization{
	WarnPhase		= "Show warning for next phase",
	WarnPhaseSoon	= "Show pre-warning for next phase",
	WarnKite		= "Announce Kite targets",
	TimerPhase		= "Show time for next phase",
	KiteIcon		= "Set icon on Kite target",
	KiteWhisper		= "Send whisper to Kite target (requires Raid Leader)"
}

L:SetMiscLocalization{
	PhaseKite		= "punches the ground in anger!",
	PhaseTank		= "The ground begins to crack open!",
	ChangeTarget	= "acquires a new target",
	KiteWhisper		= "Kite on You! Run away!",
	Kite			= "Kite",
	Tank			= "Tank"
}

-------------------------
--  Shape of Akama  --
-------------------------
L = DBM:GetModLocalization("Akama")

L:SetGeneralLocalization{
	name = "Shade of Akama"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
}

-------------------------
--  Teron Gorefiend  --
-------------------------
L = DBM:GetModLocalization("TeronGorefiend")

L:SetGeneralLocalization{
	name = "Teron Gorefiend"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
	TimerVengefulSpirit		= "Ghost : %s"
}

L:SetOptionLocalization{
	TimerVengefulSpirit		= "Show timer for Ghost durations",
	CrushIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(40243)
}

L:SetMiscLocalization{
}

----------------------------
--  Gurtogg Bloodboil  --
----------------------------
L = DBM:GetModLocalization("Bloodboil")

L:SetGeneralLocalization{
	name = "Gurtogg Bloodboil"
}

L:SetWarningLocalization{
	WarnRageEnd		= "Fel Rage End",
}

L:SetTimerLocalization{
	TimerRageEnd	= "Fel Rage End"
}

L:SetOptionLocalization{
	WarnRageEnd		= "Show warning for $spell:40604 ends",
	TimerRageEnd	= "Show timer for $spell:40604 ends"
}

L:SetMiscLocalization{
}

--------------------------
--  Essence Of Souls  --
--------------------------
L = DBM:GetModLocalization("Souls")

L:SetGeneralLocalization{
	name = "Essence of Souls"
}

L:SetWarningLocalization{
	WarnEnrage		= "Enrage",
	WarnEnrageSoon	= "Enrage Soon",
	WarnEnrageEnd	= "Enrage Over - Next in 32 sec",
	WarnMana		= "Zero Mana in 30 sec"
}

L:SetTimerLocalization{
	TimerEnrage		= "Enrage",
	TimerNextEnrage	= "Next Enrage",
	TimerMana		= "Mana 0"
}

L:SetOptionLocalization{
	WarnEnrage		= "Show warning for Enrage",
	WarnEnrageSoon	= "Show pre-warning for Enrage",
	WarnEnrageEnd	= "Show warning when Enrage ends",
	WarnMana		= "Show warning from zero mana in Phase 2",
	TimerEnrage		= "Show timer for Enrage",
	TimerNextEnrage	= "Show timer for next Enrage",
	TimerMana		= "Show timer for zero mana in Phase 2",
	SpiteWhisper	= "Send whisper to $spell:41376 targets (requires Raid Leader)",
	DrainIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41303),
	SpiteIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41376)
}

L:SetMiscLocalization{
	Pull			= "Pain and suffering are all that await you!",
	Enrage			= "%s becomes enraged!",
	SpiteWhisper	= "Spite on you!",
	Suffering		= "Essence of Suffering",
	Desire			= "Essence of Desire",
	Anger			= "Essence of Anger"
}

-----------------------
--  Mother Shahraz --
-----------------------
L = DBM:GetModLocalization("Shahraz")

L:SetGeneralLocalization{
	name = "Mother Shahraz"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	FAIcons		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41001),
	FAWhisper	= "Send whisper to $spell:41001 targets (requires Raid Leader)"
}

L:SetMiscLocalization{
	FAWhisper	= "Fatal Attraction on you!"
}

----------------------
--  Illidari Council  --
----------------------
L = DBM:GetModLocalization("Council")

L:SetGeneralLocalization{
	name = "Illidari Council"
}

L:SetWarningLocalization{
	WarnFadeSoon	= "Vanish fades in 5 sec",
	WarnFaded		= "Vanish faded",
	WarnDevAura		= "Devotion Aura for 30 sec",
	WarnResAura		= "Resistance Aura for 30 sec",
	Immune			= "Malande - %s immune for 15 sec"
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	WarnFadeSoon	= "Show warning 5 seconds before $spell:41476 fades",
	WarnFaded		= "Show warning when $spell:41476 fades",
	WarnDevAura		= "Show warning for $spell:41452",
	WarnResAura		= "Show warning for $spell:41453",
	Immune			= "Show warning when Manalde becomes spell or melee immune",
	PoisonIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41485),
	PoisonWhisper	= "Send whisper to $spell:41485 targets (requires Raid Leader)"
}

L:SetMiscLocalization{
	Gathios			= "Gathios the Shatterer",
	Malande			= "Lady Malande",
	Zerevor			= "High Nethermancer Zerevor",
	Veras			= "Veras Darkshadow",
	Melee			= "Melee",
	Spell			= "Spell",
	PoisonWhisper	= "Deadly Poison on you!"
}

-------------------------
--  Illidan Stormrage --
-------------------------
L = DBM:GetModLocalization("Illidan")

L:SetGeneralLocalization{
	name = "Illidan Stormrage"
}

L:SetWarningLocalization{
	WarnPhase2Soon	= "Phase 2 soon",
	WarnPhase4Soon	= "Phase 4 soon",
	WarnHuman		= "Human Phase",
	WarnHumanSoon	= "Human Phase Soon",
	WarnDemon		= "Demon Phase",
	WarnDemonSoon	= "Demon Phase Soon"
}

L:SetTimerLocalization{
	TimerCombatStart	= "Combat starts",
	TimerNextHuman		= "Next Human Phase",
	TimerNextDemon		= "Next Demon Phase",
	TimerPhase4			= "Phase transition"
}

L:SetOptionLocalization{
	WarnPhase2Soon	= "Show pre-warning for Phase 2 transition (at ~75%)",
	WarnPhase4Soon	= "Show pre-warning for Phase 4 transition (at ~35%)",
	WarnHuman		= "Show warning for Human Phase",
	WarnHumanSoon	= "Show pre-warning for Human Phase",
	WarnDemon		= "Show warning for Demon Phase",
	WarnDemonSoon	= "Show pre-warning for Demon Phase",
	TimerCombatStart= "Show time for start of combat",
	TimerNextHuman	= "Show time for Next Human Phase",
	TimerNextDemon	= "Show time for Demon Human Phase",
	TimerPhase4		= "Show time for Phase 4 transition",
	ParasiteIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41917),
	ParasiteWhisper	= "Send whisper to $spell:41917 targets (requires Raid Leader)",
	RangeFrame		= "Show range frame (10 yards) in Phase 3 and 4"
}

L:SetMiscLocalization{
	Pull			= "Akama. Your duplicity is hardly surprising. I should have slaughtered you and your malformed brethren long ago.",
	Eyebeam			= "Stare into the eyes of the Betrayer!",
	Demon			= "Behold the power... of the demon within!",
	Phase4			= "Is this it, mortals? Is this all the fury you can muster?",
	ParasiteWhisper	= "Shadowfiends on you!"
}
