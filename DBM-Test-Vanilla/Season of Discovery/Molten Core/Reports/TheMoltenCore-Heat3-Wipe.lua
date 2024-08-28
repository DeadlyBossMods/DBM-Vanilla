DBM.Test:Report[[
Test: SoD/MC/TheMoltenCore/Heat-3/Wipe
Mod:  DBM-Raids-Vanilla/MoltenCore

Findings:
	Unused event registration: SPELL_AURA_APPLIED 460890 (Melt Armor)
	Unused event registration: SPELL_AURA_APPLIED_DOSE 460890 (Melt Armor)
	Unused event registration: SPELL_AURA_REMOVED 460898 (Heart of Ash)
	Announce for spell ID 460883 (Meteor) is triggered by event SPELL_CAST_SUCCESS 462778 (Meteor)
	Announce for spell ID 460883 (Meteor) is triggered by event SPELL_CAST_SUCCESS 462779 (Meteor)
	Announce for spell ID 460883 (Meteor) is triggered by event SPELL_CAST_SUCCESS 462780 (Meteor)
	Announce for spell ID 460898 (Heart of Ash) is triggered by event SPELL_AURA_APPLIED 460895 (Heart of Cinder)
	SpecialWarning for spell ID 460898 (Heart of Ash) is triggered by event SPELL_AURA_APPLIED 460895 (Heart of Cinder)
	Yell for spell ID 460898 (Heart of Ash) is triggered by event SPELL_AURA_REMOVED 460895 (Heart of Cinder)

Unused objects:
	[Announce] Melt Armor on >%s< (%d), type=stack, spellId=460890

Timers:
	Heart of Ash, time=35.00, type=cd, spellId=460898, triggerDeltas = 0.00, 22.35, 32.38, 35.61, 45.37
		[  0.00] ENCOUNTER_START: 3018, The Molten Core, 226, 20, 0
		[ 22.35] SPELL_AURA_APPLIED: [Dps13->Dps13: Heart of Ash] Player-1-00000019, Dps13, 0x512, Player-1-00000019, Dps13, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
			 Triggered 2x, delta times: 22.35, 67.99
		[ 54.73] SPELL_AURA_APPLIED: [Dps10->Dps10: Heart of Ash] Player-1-00000015, Dps10, 0x512, Player-1-00000015, Dps10, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		[135.71] SPELL_AURA_APPLIED: [Dps9->Dps9: Heart of Ash] Player-1-00000014, Dps9, 0x512, Player-1-00000014, Dps9, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0

Announces:
	Boss energy at %d%%, type=nil, spellId=<none>, triggerDeltas = 143.55, 22.67, 21.29
		[143.55] UNIT_POWER_UPDATE: target, 0
			 Triggered 3x, delta times: 143.55, 22.67, 21.29
	Meteor, type=spell, spellId=460883, triggerDeltas = 12.61, 21.08, 11.35, 16.16, 12.96, 11.33, 19.43, 17.83, 13.98, 21.63, 17.80
		[ 12.61] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
			 Triggered 7x, delta times: 12.61, 21.08, 11.35, 16.16, 12.96, 11.33, 19.43
		[122.75] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462778, Meteor, 0, 0
			 Triggered 2x, delta times: 122.75, 13.98
		[158.36] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462779, Meteor, 0, 0
		[176.16] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462780, Meteor, 0, 0
	Heart of Ash on >%s<, type=target, spellId=460898, triggerDeltas = 22.35, 32.38, 35.61, 45.37
		[ 22.35] SPELL_AURA_APPLIED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
			 Triggered 2x, delta times: 22.35, 32.38
		[ 90.34] SPELL_AURA_APPLIED: [Dps6->Dps6: Heart of Cinder] Player-1-00000010, Dps6, 0x512, Player-1-00000010, Dps6, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		[135.71] SPELL_AURA_APPLIED: [Tank1->Tank1: Heart of Cinder] Player-1-00000011, Tank1, 0x512, Player-1-00000011, Tank1, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
	Conjure Flame, type=spell, spellId=462619, triggerDeltas = 30.47, 25.88, 35.59
		[ 30.47] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
			 Triggered 3x, delta times: 30.47, 25.88, 35.59

Special warnings:
	Heart of Ash - move to >%s<, type=moveto, spellId=460898, triggerDeltas = 22.35, 32.38
		[ 22.35] SPELL_AURA_APPLIED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
			 Triggered 2x, delta times: 22.35, 32.38

Yells:
	{rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=460898
		[ 22.35] Scheduled at 22.35 by SPELL_AURA_APPLIED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
			 Triggered 3x, delta times: 22.35, 2.00, 2.00
		[ 54.73] Scheduled at 54.73 by SPELL_AURA_APPLIED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
			 Triggered 2x, delta times: 54.73, 2.00
	Clear, type=yell, spellId=460898
		[ 27.38] SPELL_AURA_REMOVED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
			 Triggered 2x, delta times: 27.38, 30.38

Voice pack sounds:
	VoicePack/bombyou
		[ 22.35] SPELL_AURA_APPLIED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
			 Triggered 2x, delta times: 22.35, 32.38

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 3018, The Molten Core, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 460890 460898 460895, SPELL_AURA_APPLIED_DOSE 460890, SPELL_AURA_REMOVED 460898 460895, SPELL_CAST_SUCCESS 462619 460883 462778 462779 462780, UNIT_POWER_UPDATE boss1 boss2 boss3 boss4 boss5 target focus
		StartTimer: 20.0, Heart of Ash
	[ 12.61] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 22.35] SPELL_AURA_APPLIED: [Dps13->Dps13: Heart of Ash] Player-1-00000019, Dps13, 0x512, Player-1-00000019, Dps13, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[ 22.35] SPELL_AURA_APPLIED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps13, PlayerName
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 22.35 (+0.00)
			ShowYell: {rt1}{rt1}{rt1}
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 24.35 (+2.00)
			ShowYell: {rt1}{rt1}{rt1}
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 26.35 (+4.00)
			ShowYell: {rt1}{rt1}{rt1}
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 28.35 (+6.00)
			Unscheduled by SPELL_AURA_REMOVED at 27.38
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 30.35 (+8.00)
			Unscheduled by SPELL_AURA_REMOVED at 27.38
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 32.35 (+10.00)
			Unscheduled by SPELL_AURA_REMOVED at 27.38
		PlaySound: VoicePack/bombyou
		ShowSpecialWarning: Heart of Ash - move to Dps13
	[ 27.38] SPELL_AURA_REMOVED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowYell: Clear
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 22.35
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 22.35
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 22.35
	[ 30.47] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[ 33.69] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 45.04] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 54.73] SPELL_AURA_APPLIED: [Dps10->Dps10: Heart of Ash] Player-1-00000015, Dps10, 0x512, Player-1-00000015, Dps10, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[ 54.73] SPELL_AURA_APPLIED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps10, PlayerName
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 54.73 (+0.00)
			ShowYell: {rt1}{rt1}{rt1}
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 56.73 (+2.00)
			ShowYell: {rt1}{rt1}{rt1}
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 58.73 (+4.00)
			Unscheduled by SPELL_AURA_REMOVED at 57.76
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 60.73 (+6.00)
			Unscheduled by SPELL_AURA_REMOVED at 57.76
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 62.73 (+8.00)
			Unscheduled by SPELL_AURA_REMOVED at 57.76
		ScheduleTask: yell460898icontarget:Schedule(1.0) at 64.73 (+10.00)
			Unscheduled by SPELL_AURA_REMOVED at 57.76
		PlaySound: VoicePack/bombyou
		ShowSpecialWarning: Heart of Ash - move to Dps10
	[ 56.35] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[ 57.76] SPELL_AURA_REMOVED: [Healer1->Healer1: Heart of Cinder] Player-1-00000005, Healer1, 0x511, Player-1-00000005, Healer1, 0x511, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowYell: Clear
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 54.73
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 54.73
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 54.73
		UnscheduleTask: yell460898icontarget:Schedule(1.0) scheduled by ScheduleTask at 54.73
	[ 61.20] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 74.16] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 85.49] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[ 90.34] SPELL_AURA_APPLIED: [Dps13->Dps13: Heart of Ash] Player-1-00000019, Dps13, 0x512, Player-1-00000019, Dps13, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[ 90.34] SPELL_AURA_APPLIED: [Dps6->Dps6: Heart of Cinder] Player-1-00000010, Dps6, 0x512, Player-1-00000010, Dps6, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps13, Dps6
	[ 91.94] SPELL_CAST_SUCCESS: [The Molten Core: Conjure Flame] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462619, Conjure Flame, 0, 0
		ShowAnnounce: Conjure Flame
	[104.92] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 460883, Meteor, 0, 0
		ShowAnnounce: Meteor
	[122.75] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462778, Meteor, 0, 0
		ShowAnnounce: Meteor
	[135.71] SPELL_AURA_APPLIED: [Dps9->Dps9: Heart of Ash] Player-1-00000014, Dps9, 0x512, Player-1-00000014, Dps9, 0x512, 460898, Heart of Ash, 0, DEBUFF, 0
		StartTimer: 35.0, Heart of Ash
	[135.71] SPELL_AURA_APPLIED: [Tank1->Tank1: Heart of Cinder] Player-1-00000011, Tank1, 0x512, Player-1-00000011, Tank1, 0x512, 460895, Heart of Cinder, 0, DEBUFF, 0
		ShowAnnounce: Heart of Ash on Dps9, Tank1
	[136.73] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462778, Meteor, 0, 0
		ShowAnnounce: Meteor
	[143.55] UNIT_POWER_UPDATE: target, 0
		ShowAnnounce: Boss energy at 50%
	[158.36] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462779, Meteor, 0, 0
		ShowAnnounce: Meteor
	[166.22] UNIT_POWER_UPDATE: target, 0
		ShowAnnounce: Boss energy at 75%
	[176.16] SPELL_CAST_SUCCESS: [The Molten Core: Meteor] Creature-0-1-409-1-227939-000000000A, The Molten Core, 0xa48, "", nil, 0x0, 462780, Meteor, 0, 0
		ShowAnnounce: Meteor
	[187.51] UNIT_POWER_UPDATE: target, 0
		ShowAnnounce: Boss energy at 100%
	[229.62] ENCOUNTER_END: 3018, The Molten Core, 226, 20, 0, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 460898 460895
]]
