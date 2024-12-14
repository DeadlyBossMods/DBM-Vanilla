DBM.Test:Report[[
Test: SoD/WorldBosses/Ysondre/Kill
Mod:  DBM-Azeroth/YsondreVanilla

Findings:
	Unused event registration: SPELL_AURA_APPLIED 24818 (Noxious Breath)
	Unused event registration: SPELL_AURA_APPLIED_DOSE 24818 (Noxious Breath)
	Unused event registration: SPELL_CAST_SUCCESS 24818 (Noxious Breath)
	Timer for spell ID 24814 (Seeping Fog) is triggered by event SPELL_CAST_SUCCESS 24813 (Seeping Fog)

Unused objects:
	[Announce] Noxious Breath on >%s< (%d), type=stack, spellId=24818
	[Timer] Divergent Lightning, time=0.00, type=cast, spellId=1214136

Timers:
	Seeping Fog, time=16.00, type=cd, spellId=24814, triggerDeltas = 30.76, 0.00, 60.25, 0.00, 61.54, 0.00, 61.47, 0.00, 61.52, 0.00, 61.55, 0.00
		[ 30.76] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0
			 Triggered 6x, delta times: 30.76, 60.25, 61.54, 61.47, 61.52, 61.55
		[ 30.76] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24813, Seeping Fog, 0, 0
			 Triggered 6x, delta times: 30.76, 60.25, 61.54, 61.47, 61.52, 61.55
	Lightning Wave, time=13.40, type=cd, spellId=24819, triggerDeltas = 382.46
		[382.46] UNIT_SPELLCAST_SUCCEEDED: target, Cast-3-1-2832-2-24819-00000003BF, 24819, Ysondre, 3, 0, Tank1, 0

Announces:
	Lightning Wave, type=spell, spellId=24819, triggerDeltas = 382.46
		[382.46] UNIT_SPELLCAST_SUCCEEDED: target, Cast-3-1-2832-2-24819-00000003BF, 24819, Ysondre, 3, 0, Tank1, 0
	Divergent Lightning on >%s<, type=target, spellId=1214136, triggerDeltas = 29.15, 23.08, 25.85, 32.38, 37.24, 24.26, 71.20, 27.52, 38.92, 25.87, 43.75
		[ 29.15] SPELL_AURA_APPLIED: [Ysondre->Dps9: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000014, Dps9, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
			 Triggered 5x, delta times: 29.15, 23.08, 58.23, 37.24, 95.46
		[ 78.08] SPELL_AURA_APPLIED: [Ysondre->Dps6: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000010, Dps6, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
			 Triggered 2x, delta times: 78.08, 257.39
		[171.96] SPELL_AURA_APPLIED: [Ysondre->Dps8: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000012, Dps8, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		[270.68] SPELL_AURA_APPLIED: [Ysondre->Healer3: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000013, Healer3, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		[309.60] SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
		[379.22] SPELL_AURA_APPLIED: [Ysondre->Dps5: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000008, Dps5, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0

Special warnings:
	Seeping Fog - dodge attack, type=dodge, spellId=24814, triggerDeltas = 30.76
		[ 30.76] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0
	Divergent Lightning - soak it, type=soak, spellId=1214136, triggerDeltas = 29.14, 23.09, 25.85, 32.38, 37.24, 24.26, 71.20, 27.52, 38.92, 25.87, 43.75
		[ 29.14] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
			 Triggered 11x, delta times: 29.14, 23.09, 25.85, 32.38, 37.24, 24.26, 71.20, 27.52, 38.92, 25.87, 43.75

Yells:
	%d, type=shortfade, spellId=1214136
		[174.96] Scheduled at 171.96 by SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
			 Triggered 5x, delta times: 174.96, 1.00, 1.00, 1.00, 1.00
		[273.68] Scheduled at 270.68 by SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
			 Triggered 5x, delta times: 273.68, 1.00, 1.00, 1.00, 1.00
		[312.60] Scheduled at 309.60 by SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
			 Triggered 5x, delta times: 312.60, 1.00, 1.00, 1.00, 1.00
		[338.47] Scheduled at 335.47 by SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
			 Triggered 5x, delta times: 338.47, 1.00, 1.00, 1.00, 1.00
		[382.22] Scheduled at 379.22 by SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
			 Triggered 5x, delta times: 382.22, 1.00, 1.00, 1.00, 1.00
	Divergent Lightning on PlayerName, type=yell, spellId=1214136
		[171.96] SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
			 Triggered 5x, delta times: 171.96, 98.72, 38.92, 25.87, 43.75

Voice pack sounds:
	VoicePack/watchstep
		[ 30.76] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 3114, Ysondre, 9, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 24814 24813 24818 1214136, SPELL_AURA_APPLIED 24818 1214136, SPELL_AURA_APPLIED_DOSE 24818, UNIT_SPELLCAST_SUCCEEDED boss1 boss2 boss3 boss4 boss5 target focus
	[ 29.14] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[ 29.15] SPELL_AURA_APPLIED: [Ysondre->Dps9: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000014, Dps9, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Healer1, Dps4, Dps9
	[ 30.76] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0
		AntiSpam: SpecWarnFog
			Filtered: 11x SPELL_CAST_SUCCESS at 30.76, 91.01, 91.01, 152.55, 152.55, 214.02, 214.02, 275.54, 275.54, 337.09, 337.09
		ShowSpecialWarning: Seeping Fog - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 16.0, Seeping Fog
	[ 30.76] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24813, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[ 52.23] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[ 52.23] SPELL_AURA_APPLIED: [Ysondre->Dps9: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000014, Dps9, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Healer1, Dps6, Dps9
	[ 78.08] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[ 78.08] SPELL_AURA_APPLIED: [Ysondre->Dps6: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000010, Dps6, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Healer1, Dps1, Dps6
	[ 91.01] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[ 91.01] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24813, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[110.46] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[110.46] SPELL_AURA_APPLIED: [Ysondre->Dps9: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000014, Dps9, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Healer1, Dps1, Dps9
	[147.70] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[147.70] SPELL_AURA_APPLIED: [Ysondre->Dps9: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000014, Dps9, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Dps6, Dps7, Dps9
	[152.55] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[152.55] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24813, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[171.96] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[171.96] SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowYell: Divergent Lightning on PlayerName
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(1.0) at 178.96 (+7.00)
			ShowYell: 1
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(2.0) at 177.96 (+6.00)
			ShowYell: 2
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(3.0) at 176.96 (+5.00)
			ShowYell: 3
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(4.0) at 175.96 (+4.00)
			ShowYell: 4
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(5.0) at 174.96 (+3.00)
			ShowYell: 5
	[171.96] SPELL_AURA_APPLIED: [Ysondre->Dps8: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000012, Dps8, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on PlayerName, Tank2, Dps8
	[214.02] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[214.02] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24813, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[243.16] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[243.16] SPELL_AURA_APPLIED: [Ysondre->Dps9: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000014, Dps9, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Dps5, Tank2, Dps9
	[270.68] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[270.68] SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowYell: Divergent Lightning on PlayerName
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(1.0) at 277.68 (+7.00)
			ShowYell: 1
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(2.0) at 276.68 (+6.00)
			ShowYell: 2
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(3.0) at 275.68 (+5.00)
			ShowYell: 3
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(4.0) at 274.68 (+4.00)
			ShowYell: 4
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(5.0) at 273.68 (+3.00)
			ShowYell: 5
	[270.68] SPELL_AURA_APPLIED: [Ysondre->Healer3: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000013, Healer3, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Healer1, PlayerName, Healer3
	[275.54] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[275.54] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24813, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[309.60] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[309.60] SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Dps1, Dps3, PlayerName
		ShowYell: Divergent Lightning on PlayerName
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(1.0) at 316.60 (+7.00)
			ShowYell: 1
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(2.0) at 315.60 (+6.00)
			ShowYell: 2
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(3.0) at 314.60 (+5.00)
			ShowYell: 3
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(4.0) at 313.60 (+4.00)
			ShowYell: 4
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(5.0) at 312.60 (+3.00)
			ShowYell: 5
	[335.47] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[335.47] SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowYell: Divergent Lightning on PlayerName
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(1.0) at 342.47 (+7.00)
			ShowYell: 1
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(2.0) at 341.47 (+6.00)
			ShowYell: 2
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(3.0) at 340.47 (+5.00)
			ShowYell: 3
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(4.0) at 339.47 (+4.00)
			ShowYell: 4
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(5.0) at 338.47 (+3.00)
			ShowYell: 5
	[335.47] SPELL_AURA_APPLIED: [Ysondre->Dps6: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000010, Dps6, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Dps2, PlayerName, Dps6
	[337.09] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24814, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[337.09] SPELL_CAST_SUCCESS: [Ysondre: Seeping Fog] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 24813, Seeping Fog, 0, 0
		StartTimer: 16.0, Seeping Fog
	[379.22] SPELL_CAST_SUCCESS: [Ysondre: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, "", nil, 0x0, 1214136, Divergent Lightning, 0, 0
		ShowSpecialWarning: Divergent Lightning - soak it
	[379.22] SPELL_AURA_APPLIED: [Ysondre->Healer2: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000006, Healer2, 0x511, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowYell: Divergent Lightning on PlayerName
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(1.0) at 386.22 (+7.00)
			ShowYell: 1
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(2.0) at 385.22 (+6.00)
			ShowYell: 2
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(3.0) at 384.22 (+5.00)
			ShowYell: 3
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(4.0) at 383.22 (+4.00)
			ShowYell: 4
		ScheduleTask: yell1214136shortfade:ScheduleCountdown(5.0) at 382.22 (+3.00)
			ShowYell: 5
	[379.22] SPELL_AURA_APPLIED: [Ysondre->Dps5: Divergent Lightning] Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, Player-1-00000008, Dps5, 0x512, 1214136, Divergent Lightning, 0, DEBUFF, 0
		ShowAnnounce: Divergent Lightning on Dps3, PlayerName, Dps5
	[382.46] UNIT_SPELLCAST_SUCCEEDED: target, Cast-3-1-2832-2-24819-00000003BF, 24819, Ysondre, 3, 0, Tank1, 0
		AntiSpam: 2
		ShowAnnounce: Lightning Wave
		StartTimer: 13.4, Lightning Wave
	[396.45] UNIT_DIED: [->Ysondre] "", nil, 0x0, Creature-0-1-2832-1-235232-0000000002, Ysondre, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
]]
