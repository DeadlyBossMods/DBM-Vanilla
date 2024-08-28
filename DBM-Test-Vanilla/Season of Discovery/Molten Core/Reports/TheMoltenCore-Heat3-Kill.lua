DBM.Test:Report[[
Test: SoD/MC/TheMoltenCore/Heat-3/Kill
Mod:  DBM-Raids-Vanilla/MoltenCore

Findings:
	Unused event registration: SPELL_AURA_APPLIED 460890 (Melt Armor)
	Unused event registration: SPELL_AURA_APPLIED_DOSE 460890 (Melt Armor)
	Unused event registration: SPELL_AURA_REMOVED 460898 (Heart of Ash)
	Unused event registration: SPELL_CAST_SUCCESS 462779 (Meteor)
	Unused event registration: SPELL_CAST_SUCCESS 462780 (Meteor)
	Unused event registration: UNIT_POWER_UPDATE
	Announce for spell ID 460883 (Meteor) is triggered by event SPELL_CAST_SUCCESS 462778 (Meteor)
	Announce for spell ID 460898 (Heart of Ash) is triggered by event SPELL_AURA_APPLIED 460895 (Heart of Cinder)
	SpecialWarning for spell ID 460898 (Heart of Ash) is triggered by event SPELL_AURA_APPLIED 460895 (Heart of Cinder)
	Yell for spell ID 460898 (Heart of Ash) is triggered by event SPELL_AURA_REMOVED 460895 (Heart of Cinder)

Unused objects:
	[Announce] Boss energy at %d%%, type=nil, spellId=<none>
	[Announce] Melt Armor on >%s< (%d), type=stack, spellId=460890

Timers:
	Heart of Ash, time=35.00, type=cd, spellId=460898, triggerDeltas = 0.00, 24.65, 33.64, 33.94
		[  0.00] ENCOUNTER_START: 3018, The Molten Core, 226, 20, 0
		[ 24.65] SPELL_AURA_APPLIED: [Dps9->Dps9: Heart of Ash] Player-1-00000012, Dps9, 0x512, Player-1-00000012, Dps9, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
			 Triggered 2x, delta times: 24.65, 33.64
		[ 92.23] SPELL_AURA_APPLIED: [Tank1->Tank1: Heart of Ash] Player-1-00000011, Tank1, 0x512, Player-1-00000011, Tank1, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0

Announces:
	Meteor, type=spell, spellId=460883, triggerDeltas = 11.73, 14.54, 14.21, 14.57, 14.54, 16.20, 19.40, 19.44
		[ 11.73] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
			 Triggered 7x, delta times: 11.73, 14.54, 14.21, 14.57, 14.54, 16.20, 19.40
		[124.63] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 462778, Meteor, 0, 0
	Heart of Ash on >%s<, type=target, spellId=460898, triggerDeltas = 24.65, 33.64, 33.94
		[ 24.65] SPELL_AURA_APPLIED: [Dps8->Dps8: Heart of Cinder] Player-1-00000010, Dps8, 0x512, Player-1-00000010, Dps8, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
			 Triggered 2x, delta times: 24.65, 67.58
		[ 58.29] SPELL_AURA_APPLIED: [Dps5->Dps5: Heart of Cinder] Player-1-00000005, Dps5, 0x511, Player-1-00000005, Dps5, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
	Conjure Flame, type=spell, spellId=462619, triggerDeltas = 27.89, 35.24, 35.59
		[ 27.89] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
			 Triggered 3x, delta times: 27.89, 35.24, 35.59

Special warnings:
	Heart of Ash - move to >%s<, type=moveto, spellId=460898, triggerDeltas = 58.29
		[ 58.29] SPELL_AURA_APPLIED: [Dps5->Dps5: Heart of Cinder] Player-1-00000005, Dps5, 0x511, Player-1-00000005, Dps5, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0

Yells:
	{rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=460898
		[ 58.29] Scheduled at 58.29 by SPELL_AURA_APPLIED: [Dps5->Dps5: Heart of Cinder] Player-1-00000005, Dps5, 0x511, Player-1-00000005, Dps5, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
	Clear, type=yell, spellId=460898
		[ 59.32] SPELL_AURA_REMOVED: [Dps5->Dps5: Heart of Cinder] Player-1-00000005, Dps5, 0x511, Player-1-00000005, Dps5, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0

Voice pack sounds:
	VoicePack/bombyou
		[ 58.29] SPELL_AURA_APPLIED: [Dps5->Dps5: Heart of Cinder] Player-1-00000005, Dps5, 0x511, Player-1-00000005, Dps5, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 3018, The Molten Core, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 460890 460898 460895, SPELL_AURA_APPLIED_DOSE 460890, SPELL_AURA_REMOVED 460898 460895, SPELL_CAST_SUCCESS 462619 460883 462778 462779 462780, UNIT_POWER_UPDATE boss1 boss2 boss3 boss4 boss5 target focus
		StartTimer: 20.0, Heart of Ash
	[ 11.73] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 24.65] SPELL_AURA_APPLIED: [Dps9->Dps9: Heart of Ash] Player-1-00000012, Dps9, 0x512, Player-1-00000012, Dps9, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[ 24.65] SPELL_AURA_APPLIED: [Dps8->Dps8: Heart of Cinder] Player-1-00000010, Dps8, 0x512, Player-1-00000010, Dps8, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps9, Dps8
	[ 26.27] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 27.89] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[ 40.48] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 55.05] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 58.29] SPELL_AURA_APPLIED: [Dps9->Dps9: Heart of Ash] Player-1-00000012, Dps9, 0x512, Player-1-00000012, Dps9, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[ 58.29] SPELL_AURA_APPLIED: [Dps5->Dps5: Heart of Cinder] Player-1-00000005, Dps5, 0x511, Player-1-00000005, Dps5, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps9, PlayerName
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 58.29 (+0.00)
			ShowYell: {rt1}{rt1}{rt1}
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 60.29 (+2.00)
			Unscheduled by SPELL_AURA_REMOVED at 59.32
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 62.29 (+4.00)
			Unscheduled by SPELL_AURA_REMOVED at 59.32
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 64.29 (+6.00)
			Unscheduled by SPELL_AURA_REMOVED at 59.32
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 66.29 (+8.00)
			Unscheduled by SPELL_AURA_REMOVED at 59.32
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 68.29 (+10.00)
			Unscheduled by SPELL_AURA_REMOVED at 59.32
		PlaySound: VoicePack/bombyou
		ShowSpecialWarning: Heart of Ash - move to Dps9
	[ 59.32] SPELL_AURA_REMOVED: [Dps5->Dps5: Heart of Cinder] Player-1-00000005, Dps5, 0x511, Player-1-00000005, Dps5, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowYell: Clear
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 58.29
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 58.29
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 58.29
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 58.29
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 58.29
	[ 63.13] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[ 69.59] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 85.79] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 92.23] SPELL_AURA_APPLIED: [Tank1->Tank1: Heart of Ash] Player-1-00000011, Tank1, 0x512, Player-1-00000011, Tank1, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[ 92.23] SPELL_AURA_APPLIED: [Dps8->Dps8: Heart of Cinder] Player-1-00000010, Dps8, 0x512, Player-1-00000010, Dps8, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Tank1, Dps8
	[ 98.72] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[105.19] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[124.63] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, "", nil, 0x0, 462778, Meteor, 0, 0
		ShowAnnounce: Meteor
	[126.89] UNIT_DIED: [->The Molten Core] "", nil, 0x0, Creature-0-1-409-1-227939-0000000009, The Molten Core, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 460898 460895
]]
