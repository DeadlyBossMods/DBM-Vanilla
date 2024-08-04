DBM.Test:Report[[
Test: SoD/MC/Garr/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Garr-Classic

Findings:
	None

Unused objects:
	None

Timers:
	Antimagic Pulse, time=15.70, type=cd, spellId=19492, triggerDeltas = 0.00, 11.34, 17.80, 17.81, 19.42, 17.81, 17.79, 17.79, 16.17, 16.19, 16.17
		[  0.00] ENCOUNTER_START: 666, Garr, 226, 20, 0
		[ 11.34] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
			 Triggered 10x, delta times: 11.34, 17.80, 17.81, 19.42, 17.81, 17.79, 17.79, 16.17, 16.19, 16.17
	Summon Magmakin, time=5.00, type=cd, spellId=20506, triggerDeltas = 0.00, 4.85, 4.87, 4.85, 4.86, 4.85, 4.86, 6.50, 4.86, 6.45, 6.47, 4.86, 4.85, 4.86, 4.87, 6.47, 4.85, 6.47, 6.44, 6.48, 6.50, 6.47, 4.84, 6.46, 6.47, 4.87, 6.45, 6.49, 6.46, 6.47, 6.46, 6.45
		[  0.00] ENCOUNTER_START: 666, Garr, 226, 20, 0
		[  4.85] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
			 Triggered 31x, delta times: 4.85, 4.87, 4.85, 4.86, 4.85, 4.86, 6.50, 4.86, 6.45, 6.47, 4.86, 4.85, 4.86, 4.87, 6.47, 4.85, 6.47, 6.44, 6.48, 6.50, 6.47, 4.84, 6.46, 6.47, 4.87, 6.45, 6.49, 6.46, 6.47, 6.46, 6.45

Announces:
	Immolate on >%s<, type=target, spellId=15732, triggerDeltas = 2.65, 3.23, 1.29, 2.70, 11.36, 19.48, 5.69, 24.52, 15.33, 10.94
		[  2.65] Scheduled at 1.65 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-000000008A, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[  5.88] Scheduled at 4.88 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-0000000001, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[  7.17] Scheduled at 6.17 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-00000000B6, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[  9.87] Scheduled at 8.87 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-0000000001, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[ 21.23] Scheduled at 20.23 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-00000000B6, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[ 40.71] Scheduled at 39.71 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-000000008A, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[ 46.40] Scheduled at 45.40 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-00000000D8, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[ 70.92] Scheduled at 69.92 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-00000000D8, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[ 86.25] Scheduled at 85.25 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-000000008A, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		[ 97.19] Scheduled at 96.19 by SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-0000000001, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
	Antimagic Pulse, type=spell, spellId=19492, triggerDeltas = 11.34, 17.80, 17.81, 19.42, 17.81, 17.79, 17.79, 16.17, 16.19, 16.17
		[ 11.34] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
			 Triggered 10x, delta times: 11.34, 17.80, 17.81, 19.42, 17.81, 17.79, 17.79, 16.17, 16.19, 16.17

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 666, Garr, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 15732, SPELL_CAST_SUCCESS 19492 20506
		StartTimer: 4.9, Summon Magmakin
		StartTimer: 10.0, Antimagic Pulse
	[  1.65] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-000000008A, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 2.65 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[  4.85] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[  4.88] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-0000000001, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 5.88 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[  6.17] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-00000000B6, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 7.17 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[  8.87] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-0000000001, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 9.87 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[  9.72] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 11.34] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[ 14.57] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 19.43] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 20.23] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-00000000B6, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 21.23 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[ 24.28] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 29.14] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 29.14] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[ 35.64] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 39.71] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-000000008A, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 40.71 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[ 40.50] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 45.40] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-00000000D8, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 46.40 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[ 46.95] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 46.95] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[ 53.42] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 58.28] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 63.13] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 66.37] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[ 67.99] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 69.92] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-00000000D8, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 70.92 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[ 72.86] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 79.33] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 84.18] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 84.18] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[ 85.25] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-000000008A, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 86.25 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[ 90.65] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[ 96.19] SPELL_AURA_APPLIED: [Firesworn->Tank2: Immolate] Creature-0-1-409-1-228834-0000000001, Firesworn, 0xa48, Player-1-00000013, Tank2, 0x512, 15732, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce15732target:CombinedShow("Tank2") at 97.19 (+1.00)
			ShowAnnounce: Immolate on Tank2
	[ 97.09] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[101.97] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[103.57] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[110.07] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[116.54] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[119.76] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[121.38] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[127.84] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[134.31] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[135.93] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[139.18] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[145.63] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[152.12] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[152.12] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[158.58] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[165.05] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[168.29] SPELL_CAST_SUCCESS: [Garr: Antimagic Pulse] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 19492, Antimagic Pulse, 0, 0
		ShowAnnounce: Antimagic Pulse
		StartTimer: 15.7, Antimagic Pulse
	[171.51] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[177.96] SPELL_CAST_SUCCESS: [Garr: Summon Magmakin] Creature-0-1-409-1-228432-0000000001, Garr, 0xa48, "", nil, 0x0, 20506, Summon Magmakin, 0, 0
		StartTimer: 5.0, Summon Magmakin
	[181.95] ENCOUNTER_END: 666, Garr, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
