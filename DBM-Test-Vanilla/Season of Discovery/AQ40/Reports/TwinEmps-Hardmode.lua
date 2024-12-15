DBM.Test:Report[[
Test: SoD/AQ40/TwinEmps/Hardmode
Mod:  DBM-Raids-Vanilla/TwinEmpsAQ

Findings:
	Unused event registration: SPELL_AURA_APPLIED 799 (Twin Teleport)
	Unused event registration: SPELL_AURA_APPLIED 800 (Twin Teleport)
	Unused event registration: SPELL_AURA_APPLIED 804 (Explode Bug)
	Unused event registration: SPELL_AURA_REMOVED 804 (Explode Bug)
	Announce for spell ID 800 (Twin Teleport) is triggered by event SPELL_CAST_SUCCESS 1217333 (Twin Teleport)
	Timer for spell ID 800 (Twin Teleport) is triggered by event SPELL_CAST_SUCCESS 1217333 (Twin Teleport)

Unused objects:
	[Announce] Berserk in %s %s, type=nil, spellId=<none>
	[Announce] Berserk in %s %s, type=nil, spellId=<none>
	[Special Warning] Explode Bug - move away, type=move, spellId=804
	[Special Warning] Unbalancing Strike - defensive, type=defensive, spellId=26613

Timers:
	Berserk, time=900.00, type=berserk, spellId=<none>, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 715, Twin Emperors, 186, 40, 0
	Twin Teleport, time=29.20, type=cd, spellId=800, triggerDeltas = 0.00, 30.96, 35.60, 35.64, 35.65, 35.63
		[  0.00] ENCOUNTER_START: 715, Twin Emperors, 186, 40, 0
		[ 30.96] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Twin Teleport] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 1217333, Twin Teleport, 0, 0
			 Triggered 5x, delta times: 30.96, 35.60, 35.64, 35.65, 35.63
	Mutate Bug, time=16.00, type=var, spellId=802, triggerDeltas = 30.67, 12.93, 12.97, 17.81, 12.97, 14.58, 21.08, 11.34, 14.60, 12.93, 11.34, 17.83
		[ 30.67] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
			 Triggered 12x, delta times: 30.67, 12.93, 12.97, 17.81, 12.97, 14.58, 21.08, 11.34, 14.60, 12.93, 11.34, 17.83
	Explode Bug, time=9.00, type=var, spellId=804, triggerDeltas = 4.78, 9.71, 24.27, 40.51, 6.46, 11.33, 4.87, 11.39, 11.31, 27.54, 38.88
		[  4.78] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
			 Triggered 11x, delta times: 4.78, 9.71, 24.27, 40.51, 6.46, 11.33, 4.87, 11.39, 11.31, 27.54, 38.88

Announces:
	Twin Teleport, type=spell, spellId=800, triggerDeltas = 30.96, 35.60, 35.64, 35.65, 35.63
		[ 30.96] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Twin Teleport] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 1217333, Twin Teleport, 0, 0
			 Triggered 5x, delta times: 30.96, 35.60, 35.64, 35.65, 35.63
	Mutate Bug, type=spell, spellId=802, triggerDeltas = 30.67, 12.93, 12.97, 17.81, 12.97, 14.58, 21.08, 11.34, 14.60, 12.93, 11.34, 17.83
		[ 30.67] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
			 Triggered 12x, delta times: 30.67, 12.93, 12.97, 17.81, 12.97, 14.58, 21.08, 11.34, 14.60, 12.93, 11.34, 17.83
	Unbalancing Strike on >%s<, type=target, spellId=26613, triggerDeltas = 40.37, 93.98, 22.69, 11.34, 11.36
		[ 40.37] SPELL_AURA_APPLIED: [Emperor Vek'nilash->Dps10: Unbalancing Strike] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, Player-1-00000013, Dps10, 0x512, 26613, Unbalancing Strike, 0, DEBUFF, 0
			 Triggered 3x, delta times: 40.37, 93.98, 45.39
		[157.04] SPELL_AURA_APPLIED: [Emperor Vek'nilash->Tank1: Unbalancing Strike] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, Player-1-00000012, Tank1, 0x512, 26613, Unbalancing Strike, 0, DEBUFF, 0
			 Triggered 2x, delta times: 157.04, 11.34

Special warnings:
	%s damage - move away, type=gtfo, spellId=26607, triggerDeltas = 12.87
		[ 12.87] SPELL_AURA_APPLIED: [Emperor Vek'lor->Healer3: Blizzard] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, Player-1-00000014, Healer3, 0x511, 26607, Blizzard, 0, DEBUFF, 0

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 715, Twin Emperors, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 799 800 26613 26607 804, SPELL_AURA_REMOVED 804, SPELL_CAST_SUCCESS 802 804 1217333
		StartTimer: 900.0, Berserk
		ScheduleTask: announce:Schedule(10.0, "min") at 300.00 (+300.00)
			Unscheduled by ENCOUNTER_END at 196.39
		ScheduleTask: announce:Schedule(5.0, "min") at 600.00 (+600.00)
			Unscheduled by ENCOUNTER_END at 196.39
		ScheduleTask: announce:Schedule(3.0, "min") at 720.00 (+720.00)
			Unscheduled by ENCOUNTER_END at 196.39
		ScheduleTask: announce:Schedule(1.0, "min") at 840.00 (+840.00)
			Unscheduled by ENCOUNTER_END at 196.39
		ScheduleTask: announce:Schedule(30.0, "sec") at 870.00 (+870.00)
			Unscheduled by ENCOUNTER_END at 196.39
		ScheduleTask: announce:Schedule(10.0, "sec") at 890.00 (+890.00)
			Unscheduled by ENCOUNTER_END at 196.39
		StartTimer: 31.0, Twin Teleport
	[  4.78] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	[ 12.87] SPELL_AURA_APPLIED: [Emperor Vek'lor->Healer3: Blizzard] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, Player-1-00000014, Healer3, 0x511, 26607, Blizzard, 0, DEBUFF, 0
		ShowSpecialWarning: Blizzard damage - move away
		PlaySound: 8
	[ 14.49] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	Unknown trigger
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\4.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\3.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\2.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\1.ogg
	[ 30.67] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[ 30.96] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Twin Teleport] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 1217333, Twin Teleport, 0, 0
		AntiSpam: 1
			Filtered: 1x SPELL_CAST_SUCCESS at 30.96
		ShowAnnounce: Twin Teleport
		StartTimer: 35.5, Twin Teleport
	[ 38.76] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	[ 40.37] SPELL_AURA_APPLIED: [Emperor Vek'nilash->Dps10: Unbalancing Strike] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, Player-1-00000013, Dps10, 0x512, 26613, Unbalancing Strike, 0, DEBUFF, 0
		ShowAnnounce: Unbalancing Strike on Dps10
	[ 43.60] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[ 56.57] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	Unknown trigger
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\4.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\3.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\2.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\1.ogg
	[ 66.56] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Twin Teleport] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 1217333, Twin Teleport, 0, 0
		AntiSpam: 1
			Filtered: 1x SPELL_CAST_SUCCESS at 66.56
		ShowAnnounce: Twin Teleport
		StartTimer: 35.5, Twin Teleport
	[ 74.38] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[ 79.27] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	[ 85.73] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	[ 87.35] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[ 97.06] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	Unknown trigger
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\4.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\3.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\2.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\1.ogg
	[101.93] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	[101.93] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[102.20] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Twin Teleport] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 1217333, Twin Teleport, 0, 0
		AntiSpam: 1
			Filtered: 1x SPELL_CAST_SUCCESS at 102.21
		ShowAnnounce: Twin Teleport
		StartTimer: 35.5, Twin Teleport
	[113.32] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	[123.01] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[124.63] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	Unknown trigger
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\4.ogg
	[134.35] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[134.35] SPELL_AURA_APPLIED: [Emperor Vek'nilash->Dps10: Unbalancing Strike] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, Player-1-00000013, Dps10, 0x512, 26613, Unbalancing Strike, 0, DEBUFF, 0
		ShowAnnounce: Unbalancing Strike on Dps10
	Unknown trigger
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\3.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\2.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\1.ogg
	[137.85] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Twin Teleport] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 1217333, Twin Teleport, 0, 0
		AntiSpam: 1
			Filtered: 1x SPELL_CAST_SUCCESS at 137.85
		ShowAnnounce: Twin Teleport
		StartTimer: 35.5, Twin Teleport
	[148.95] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[152.17] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	[157.04] SPELL_AURA_APPLIED: [Emperor Vek'nilash->Tank1: Unbalancing Strike] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, Player-1-00000012, Tank1, 0x512, 26613, Unbalancing Strike, 0, DEBUFF, 0
		ShowAnnounce: Unbalancing Strike on Tank1
	[161.88] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[168.38] SPELL_AURA_APPLIED: [Emperor Vek'nilash->Tank1: Unbalancing Strike] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, Player-1-00000012, Tank1, 0x512, 26613, Unbalancing Strike, 0, DEBUFF, 0
		ShowAnnounce: Unbalancing Strike on Tank1
	Unknown trigger
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\4.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\3.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\2.ogg
		PlaySound: Interface\AddOns\DBM-Core\Sounds\Corsica\1.ogg
	[173.22] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[173.48] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Twin Teleport] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 1217333, Twin Teleport, 0, 0
		AntiSpam: 1
			Filtered: 1x SPELL_CAST_SUCCESS at 173.48
		ShowAnnounce: Twin Teleport
		StartTimer: 35.5, Twin Teleport
	[179.74] SPELL_AURA_APPLIED: [Emperor Vek'nilash->Dps10: Unbalancing Strike] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, Player-1-00000013, Dps10, 0x512, 26613, Unbalancing Strike, 0, DEBUFF, 0
		ShowAnnounce: Unbalancing Strike on Dps10
	[191.05] SPELL_CAST_SUCCESS: [Emperor Vek'lor: Explode Bug] Creature-0-1-531-1-15276-0000000001, Emperor Vek'lor, 0xa48, "", nil, 0x0, 804, Explode Bug, 0, 0
		StartTimer: 9.0, Explode Bug
	[191.05] SPELL_CAST_SUCCESS: [Emperor Vek'nilash: Mutate Bug] Creature-0-1-531-1-15275-0000000001, Emperor Vek'nilash, 0xa48, "", nil, 0x0, 802, Mutate Bug, 0, 0
		ShowAnnounce: Mutate Bug
		StartTimer: 16.0, Mutate Bug
	[196.39] ENCOUNTER_END: 715, Twin Emperors, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
		UnscheduleTask: announce:Schedule(1.0, "min") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce:Schedule(10.0, "min") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce:Schedule(30.0, "sec") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce:Schedule(3.0, "min") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce:Schedule(10.0, "sec") scheduled by ScheduleTask at 0.00
		UnscheduleTask: announce:Schedule(5.0, "min") scheduled by ScheduleTask at 0.00
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 804
]]
