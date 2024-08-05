DBM.Test:Report[[
Test: SoD/MC/Gehennas/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Gehennas

Findings:
	Unused event registration: SPELL_CAST_SUCCESS 19717 (Rain of Fire)
	Unused event registration: SPELL_CAST_SUCCESS 461232 (Gehennas' Curse)
	Unused event registration: SPELL_PERIODIC_MISSED 19717 (Rain of Fire)
	Announce for spell ID 19717 (Rain of Fire) is triggered by event SPELL_SUMMON 365100 (Rain of Fire)
	Timer for spell ID 19717 (Rain of Fire) is triggered by event SPELL_SUMMON 365100 (Rain of Fire)

Unused objects:
	None

Timers:
	Gehennas' Curse, time=26.70, type=cd, spellId=19716, triggerDeltas = 0.00, 19.41, 27.52, 30.74, 29.11
		[  0.00] ENCOUNTER_START: 665, Gehennas, 226, 20, 0
		[ 19.41] SPELL_CAST_SUCCESS: [Gehennas: Gehennas' Curse] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, "", nil, 0x0, 19716, Gehennas' Curse, 0, 0
			 Triggered 4x, delta times: 19.41, 27.52, 30.74, 29.11
	Rain of Fire, time=6.00, type=cd, spellId=19717, triggerDeltas = 8.09, 9.70, 6.49, 6.49, 4.84, 4.83, 4.87, 6.49, 4.86, 8.09, 8.09, 8.05, 4.86, 9.71, 6.47, 6.49, 8.10, 6.48
		[  8.09] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000012, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
			 Triggered 18x, delta times: 8.09, 9.70, 6.49, 6.49, 4.84, 4.83, 4.87, 6.49, 4.86, 8.09, 8.09, 8.05, 4.86, 9.71, 6.47, 6.49, 8.10, 6.48

Announces:
	Gehennas' Curse, type=spell, spellId=19716, triggerDeltas = 19.41, 27.52, 30.74, 29.11
		[ 19.41] SPELL_CAST_SUCCESS: [Gehennas: Gehennas' Curse] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, "", nil, 0x0, 19716, Gehennas' Curse, 0, 0
			 Triggered 4x, delta times: 19.41, 27.52, 30.74, 29.11
	Rain of Fire, type=spell, spellId=19717, triggerDeltas = 8.09, 9.70, 6.49, 6.49, 4.84, 4.83, 4.87, 6.49, 4.86, 8.09, 8.09, 8.05, 4.86, 9.71, 6.47, 6.49, 8.10, 6.48
		[  8.09] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000012, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
			 Triggered 18x, delta times: 8.09, 9.70, 6.49, 6.49, 4.84, 4.83, 4.87, 6.49, 4.86, 8.09, 8.09, 8.05, 4.86, 9.71, 6.47, 6.49, 8.10, 6.48
	Fist of Ragnaros on >%s<, type=target, spellId=20277, triggerDeltas = 5.17, 1.62, 1.17, 14.99, 12.96, 4.84, 9.72
		[  5.17] Scheduled at 4.87 by SPELL_AURA_APPLIED: [Flamewaker->Tank1: Fist of Ragnaros] Creature-0-1-409-1-228833-0000000002, Flamewaker, 0xa48, Player-1-00000013, Tank1, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		[  6.79] Scheduled at 6.49 by SPELL_AURA_APPLIED: [Flamewaker->Healer1: Fist of Ragnaros] Creature-0-1-409-1-228833-00000000A1, Flamewaker, 0xa48, Player-1-00000008, Healer1, 0x511, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		[  7.96] Scheduled at 7.66 by SPELL_AURA_APPLIED: [Flamewaker->Tank1: Fist of Ragnaros] Creature-0-1-409-1-228833-00000000BB, Flamewaker, 0xa48, Player-1-00000013, Tank1, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		[ 22.95] Scheduled at 22.65 by SPELL_AURA_APPLIED: [Flamewaker->Dps6: Fist of Ragnaros] Creature-0-1-409-1-228833-0000000002, Flamewaker, 0xa48, Player-1-00000006, Dps6, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		[ 35.91] Scheduled at 35.61 by SPELL_AURA_APPLIED: [Flamewaker->Dps1: Fist of Ragnaros] Creature-0-1-409-1-228833-0000000068, Flamewaker, 0xa48, Player-1-00000001, Dps1, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		[ 40.75] Scheduled at 40.45 by SPELL_AURA_APPLIED: [Flamewaker->Dps14: Fist of Ragnaros] Creature-0-1-409-1-228833-00000000BB, Flamewaker, 0xa48, Player-1-00000019, Dps14, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		[ 50.47] Scheduled at 50.17 by SPELL_AURA_APPLIED: [Flamewaker->Tank1: Fist of Ragnaros] Creature-0-1-409-1-228833-0000000068, Flamewaker, 0xa48, Player-1-00000013, Tank1, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0

Special warnings:
	%s damage - move away, type=gtfo, spellId=19717, triggerDeltas = 74.84
		[ 74.84] SPELL_PERIODIC_DAMAGE: [->Healer1: Rain of Fire] "", nil, 0x0, Player-1-00000008, Healer1, 0x511, 19717, Rain of Fire, 0, 0

Yells:
	None

Voice pack sounds:
	VoicePack/watchfeet
		[ 74.84] SPELL_PERIODIC_DAMAGE: [->Healer1: Rain of Fire] "", nil, 0x0, Player-1-00000008, Healer1, 0x511, 19717, Rain of Fire, 0, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 665, Gehennas, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 19716 19717 461232, SPELL_SUMMON 365100, SPELL_AURA_APPLIED 20277
		StartTimer: 6.0, Gehennas' Curse
		RegisterEvents: ShortTerm, SPELL_PERIODIC_DAMAGE 19717, SPELL_PERIODIC_MISSED 19717
		RegisterEvents: Regular, SPELL_PERIODIC_DAMAGE 19717, SPELL_PERIODIC_MISSED 19717
	[  4.87] SPELL_AURA_APPLIED: [Flamewaker->Tank1: Fist of Ragnaros] Creature-0-1-409-1-228833-0000000002, Flamewaker, 0xa48, Player-1-00000013, Tank1, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce20277target:CombinedShow("Tank1") at 5.17 (+0.30)
			ShowAnnounce: Fist of Ragnaros on Tank1, Dps1
	[  6.49] SPELL_AURA_APPLIED: [Flamewaker->Healer1: Fist of Ragnaros] Creature-0-1-409-1-228833-00000000A1, Flamewaker, 0xa48, Player-1-00000008, Healer1, 0x511, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce20277target:CombinedShow("PlayerName") at 6.79 (+0.30)
			ShowAnnounce: Fist of Ragnaros on Dps2, Dps5, PlayerName
	[  7.66] SPELL_AURA_APPLIED: [Flamewaker->Tank1: Fist of Ragnaros] Creature-0-1-409-1-228833-00000000BB, Flamewaker, 0xa48, Player-1-00000013, Tank1, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce20277target:CombinedShow("Tank1") at 7.96 (+0.30)
			ShowAnnounce: Fist of Ragnaros on Tank1
	[  8.09] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000012, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 17.79] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000018, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 19.41] SPELL_CAST_SUCCESS: [Gehennas: Gehennas' Curse] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, "", nil, 0x0, 19716, Gehennas' Curse, 0, 0
		ShowAnnounce: Gehennas' Curse
		StartTimer: 26.7, Gehennas' Curse
	[ 22.65] SPELL_AURA_APPLIED: [Flamewaker->Dps6: Fist of Ragnaros] Creature-0-1-409-1-228833-0000000002, Flamewaker, 0xa48, Player-1-00000006, Dps6, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce20277target:CombinedShow("Dps6") at 22.95 (+0.30)
			ShowAnnounce: Fist of Ragnaros on Dps5, Dps6
	[ 24.28] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-000000001C, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 30.77] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000020, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 35.61] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000023, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 35.61] SPELL_AURA_APPLIED: [Flamewaker->Dps1: Fist of Ragnaros] Creature-0-1-409-1-228833-0000000068, Flamewaker, 0xa48, Player-1-00000001, Dps1, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce20277target:CombinedShow("Dps1") at 35.91 (+0.30)
			ShowAnnounce: Fist of Ragnaros on Dps1
	[ 40.44] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000028, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 40.45] SPELL_AURA_APPLIED: [Flamewaker->Dps14: Fist of Ragnaros] Creature-0-1-409-1-228833-00000000BB, Flamewaker, 0xa48, Player-1-00000019, Dps14, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce20277target:CombinedShow("Dps14") at 40.75 (+0.30)
			ShowAnnounce: Fist of Ragnaros on Dps5, Dps6, Dps7, PlayerName, Dps14
	[ 45.31] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-000000002D, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 46.93] SPELL_CAST_SUCCESS: [Gehennas: Gehennas' Curse] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, "", nil, 0x0, 19716, Gehennas' Curse, 0, 0
		ShowAnnounce: Gehennas' Curse
		StartTimer: 26.7, Gehennas' Curse
	[ 50.17] SPELL_AURA_APPLIED: [Flamewaker->Tank1: Fist of Ragnaros] Creature-0-1-409-1-228833-0000000068, Flamewaker, 0xa48, Player-1-00000013, Tank1, 0x512, 20277, Fist of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce20277target:CombinedShow("Tank1") at 50.47 (+0.30)
			ShowAnnounce: Fist of Ragnaros on Tank1
	[ 51.80] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000031, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 56.66] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000036, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 64.75] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-000000003C, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 72.84] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000044, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 74.84] SPELL_PERIODIC_DAMAGE: [->Healer1: Rain of Fire] "", nil, 0x0, Player-1-00000008, Healer1, 0x511, 19717, Rain of Fire, 0, 0
		AntiSpam: (nil)
			Filtered: 1x SPELL_PERIODIC_DAMAGE at 76.84
		ShowSpecialWarning: Rain of Fire damage - move away
		PlaySound: VoicePack/watchfeet
	[ 77.67] SPELL_CAST_SUCCESS: [Gehennas: Gehennas' Curse] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, "", nil, 0x0, 19716, Gehennas' Curse, 0, 0
		ShowAnnounce: Gehennas' Curse
		StartTimer: 26.7, Gehennas' Curse
	[ 80.89] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-000000004B, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 85.75] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-000000004D, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[ 95.46] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000051, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[101.93] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000056, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[106.78] SPELL_CAST_SUCCESS: [Gehennas: Gehennas' Curse] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, "", nil, 0x0, 19716, Gehennas' Curse, 0, 0
		ShowAnnounce: Gehennas' Curse
		StartTimer: 26.7, Gehennas' Curse
	[108.42] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-000000005B, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[116.52] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000060, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[123.00] SPELL_SUMMON: [Gehennas->Rain of Fire Stalker: Rain of Fire] Creature-0-1-409-1-228431-0000000002, Gehennas, 0xa48, Creature-0-1-409-1-184480-0000000065, Rain of Fire Stalker, 0xa48, 365100, Rain of Fire, 0, 0
		ShowAnnounce: Rain of Fire
		StartTimer: 6.0, Rain of Fire
	[127.00] ENCOUNTER_END: 665, Gehennas, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
