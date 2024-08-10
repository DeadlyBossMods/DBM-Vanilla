DBM.Test:Report[[
Test: SoD/MC/Geddon/Heat-2/Kill
Mod:  DBM-Raids-Vanilla/Geddon

Findings:
	Unused event registration: SPELL_AURA_APPLIED 20475 (Living Bomb)
	Unused event registration: SPELL_AURA_APPLIED 461105 (Living Bomb)
	Unused event registration: SPELL_AURA_APPLIED 462402 (Living Bomb)
	Unused event registration: SPELL_AURA_APPLIED 465725 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 20475 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 461090 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 461105 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 462402 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 465725 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 19695 (Inferno)
	Unused event registration: SPELL_CAST_SUCCESS 20475 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 20478 (Armageddon)
	Unused event registration: SPELL_CAST_SUCCESS 461105 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 462402 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 465725 (Living Bomb)
	Unused event registration: SPELL_DAMAGE 19698 (Inferno)
	Unused event registration: SPELL_MISSED 19698 (Inferno)
	Unused event registration: SPELL_PERIODIC_DAMAGE 461103 (Living Fallout)
	Unused event registration: SPELL_PERIODIC_MISSED 461103 (Living Fallout)
	SpecialWarning for spell ID 19695 (Inferno) is triggered by event SPELL_CAST_SUCCESS 461110 (Inferno)
	Timer for spell ID 19695 (Inferno) is triggered by event SPELL_CAST_SUCCESS 461110 (Inferno)
	SpecialWarning for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	Timer for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	Timer for spell ID 20475 (Living Bomb) is triggered by event SPELL_CAST_SUCCESS 461090 (Living Bomb)
	Yell for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	SpecialWarning for spell ID 20478 (Armageddon) is triggered by event SPELL_CAST_SUCCESS 461121 (Armageddon)
	Timer for spell ID 20478 (Armageddon) is triggered by event SPELL_CAST_SUCCESS 461121 (Armageddon)

Unused objects:
	[Announce] Inferno, type=spell, spellId=19695
	[Special Warning] %s damage - move away, type=gtfo, spellId=19698

Timers:
	Ignite Mana, time=27.00, type=cd, spellId=19659, triggerDeltas = 23.64, 30.24, 42.02, 30.34, 31.20
		[ 23.64] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
			 Triggered 5x, delta times: 23.64, 30.24, 42.02, 30.34, 31.20
	Inferno ends, time=8.00, type=active, spellId=19695, triggerDeltas = 13.00, 24.30, 26.26, 28.72, 24.24, 29.19, 33.98
		[ 13.00] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
			 Triggered 7x, delta times: 13.00, 24.30, 26.26, 28.72, 24.24, 29.19, 33.98
	Inferno, time=21.00, type=cd, spellId=19695, triggerDeltas = 13.00, 24.30, 26.26, 28.72, 24.24, 29.19, 33.98
		[ 13.00] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
			 Triggered 7x, delta times: 13.00, 24.30, 26.26, 28.72, 24.24, 29.19, 33.98
	Living Bomb, time=13.30, type=cd, spellId=20475, triggerDeltas = 0.00, 15.03, 16.20, 14.18, 13.31, 24.25, 15.77, 11.72, 30.76, 12.58, 14.96, 14.56
		[  0.00] ENCOUNTER_START: 668, Baron Geddon, 226, 20, 0
		[ 15.03] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
			 Triggered 11x, delta times: 15.03, 16.20, 14.18, 13.31, 24.25, 15.77, 11.72, 30.76, 12.58, 14.96, 14.56
	Living Bomb: %s, time=8.00, type=target, spellId=20475, triggerDeltas = 15.05, 0.00, 16.18, 0.00, 14.18, 0.00, 13.31, 0.00, 24.27, 0.00, 15.75, 0.00, 11.72, 0.00, 30.76, 0.00, 12.58, 0.00, 14.96, 0.02, 14.54, 0.01
		[ 15.05] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 15.05] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 15.05, 43.67
		[ 31.23] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 31.23, 51.76
		[ 31.23] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 45.41] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 45.41] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 58.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 58.72, 40.02
		[ 82.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		[ 98.74] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[110.46] SPELL_AURA_APPLIED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[110.46] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 110.46, 43.34, 14.96
		[141.22] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps13, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[141.22] SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[153.80] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Dps9, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[168.78] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[183.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000002, Dps2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[183.33] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
	Armageddon, time=8.00, type=cast, spellId=20478, triggerDeltas = 191.38
		[191.38] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0

Announces:
	Living Bomb on >%s<, type=target, spellId=20475, triggerDeltas = 15.15, 16.18, 14.18, 13.31, 24.27, 15.75, 11.72, 30.76, 12.58, 14.98, 14.55
		[ 15.15] Scheduled at 15.05 by SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 31.33] Scheduled at 31.23 by SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 45.51] Scheduled at 45.41 by SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 58.82] Scheduled at 58.72 by SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 83.09] Scheduled at 82.99 by SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		[ 98.84] Scheduled at 98.74 by SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[110.56] Scheduled at 110.46 by SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[141.32] Scheduled at 141.22 by SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[153.90] Scheduled at 153.80 by SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[168.88] Scheduled at 168.78 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[183.43] Scheduled at 183.33 by SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0

Special warnings:
	Ignite Mana on >%s< - dispel now, type=dispel, spellId=19659, triggerDeltas = 23.96, 30.23, 42.01, 30.36, 31.18
		[ 23.96] Scheduled at 23.66 by SPELL_AURA_APPLIED: [Baron Geddon->Pet1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Pet-0-1-409-1-213450-0000000001, Pet1, 0x1112, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 54.19] Scheduled at 53.89 by SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 96.20] Scheduled at 95.90 by SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[126.56] Scheduled at 126.26 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[157.74] Scheduled at 157.44 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
	Inferno - run away, type=run, spellId=19695, triggerDeltas = 13.00, 24.30, 26.26, 28.72, 24.24, 29.19, 33.98
		[ 13.00] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
			 Triggered 7x, delta times: 13.00, 24.30, 26.26, 28.72, 24.24, 29.19, 33.98
	Living Bomb on you, type=you, spellId=20475, triggerDeltas = 82.99
		[ 82.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
	Armageddon!, type=spell, spellId=20478, triggerDeltas = 191.38
		[191.38] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0
	%s damage - move away, type=gtfo, spellId=461103, triggerDeltas = 42.12, 16.92
		[ 42.12] SPELL_AURA_APPLIED: [->Dps5: Living Fallout] "", nil, 0x0, Player-1-00000005, Dps5, 0x511, 461103, Living Fallout, 0, DEBUFF, 0
			 Triggered 2x, delta times: 42.12, 16.92

Yells:
	%d, type=shortfade, spellId=20475
		[ 87.99] Scheduled at 82.99 by SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 87.99, 1.00, 1.00
	Living Bomb on PlayerName, type=yell, spellId=20475
		[ 82.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 461090, Living Bomb, 0, DEBUFF, 0

Voice pack sounds:
	VoicePack/aesoon
		[ 13.00] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
			 Triggered 7x, delta times: 13.00, 24.30, 26.26, 28.72, 24.24, 29.19, 33.98
	VoicePack/helpdispel
		[ 23.96] Scheduled at 23.66 by SPELL_AURA_APPLIED: [Baron Geddon->Pet1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Pet-0-1-409-1-213450-0000000001, Pet1, 0x1112, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 54.19] Scheduled at 53.89 by SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 96.20] Scheduled at 95.90 by SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[126.56] Scheduled at 126.26 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[157.74] Scheduled at 157.44 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
	VoicePack/runout
		[ 82.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
	VoicePack/watchfeet
		[ 42.12] SPELL_AURA_APPLIED: [->Dps5: Living Fallout] "", nil, 0x0, Player-1-00000005, Dps5, 0x511, 461103, Living Fallout, 0, DEBUFF, 0
			 Triggered 2x, delta times: 42.12, 16.92

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 668, Baron Geddon, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 20475 19659 461090 461105 462402 465725 461103, SPELL_PERIODIC_DAMAGE 461103, SPELL_PERIODIC_MISSED 461103, SPELL_AURA_REMOVED 20475 461090 461105 462402 465725, SPELL_CAST_SUCCESS 19695 19659 20478 20475 461090 461105 462402 461110 461121 465725
		StartTimer: 11.0, Living Bomb
		RegisterEvents: ShortTerm, SPELL_DAMAGE 19698, SPELL_MISSED 19698
		RegisterEvents: Regular, SPELL_DAMAGE 19698, SPELL_MISSED 19698
	[ 13.00] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
		ShowSpecialWarning: Inferno - run away
		PlaySound: VoicePack/aesoon
		StartTimer: 8.0, Inferno ends
		StartTimer: 21.0, Inferno
	[ 15.03] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 15.05] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps3
	[ 15.05] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps4
		ScheduleTask: announce20475target:CombinedShow("Dps4") at 15.15 (+0.10)
			ShowAnnounce: Living Bomb on Dps3, Dps4
	[ 23.64] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 23.66] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 23.96 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 23.66
	[ 23.66] SPELL_AURA_APPLIED: [Baron Geddon->Pet1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Pet-0-1-409-1-213450-0000000001, Pet1, 0x1112, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Pet1") at 23.96 (+0.30)
			ShowSpecialWarning: Ignite Mana on Tank1, Pet1 - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 23.66
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 23.96 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 31.23] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 31.23] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps1
	[ 31.23] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Healer3
		ScheduleTask: announce20475target:CombinedShow("Healer3") at 31.33 (+0.10)
			ShowAnnounce: Living Bomb on Dps1, Healer3
	[ 37.30] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
		ShowSpecialWarning: Inferno - run away
		PlaySound: VoicePack/aesoon
		StartTimer: 8.0, Inferno ends
		StartTimer: 21.0, Inferno
	[ 42.12] SPELL_AURA_APPLIED: [->Dps5: Living Fallout] "", nil, 0x0, Player-1-00000005, Dps5, 0x511, 461103, Living Fallout, 0, DEBUFF, 0
		AntiSpam: gtfo
		ShowSpecialWarning: Living Fallout damage - move away
		PlaySound: VoicePack/watchfeet
	[ 45.41] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 45.41] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps6
	[ 45.41] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Tank1
		ScheduleTask: announce20475target:CombinedShow("Tank1") at 45.51 (+0.10)
			ShowAnnounce: Living Bomb on Dps6, Tank1
	[ 53.88] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 53.88] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.18 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.88
	[ 53.88] SPELL_AURA_APPLIED: [Baron Geddon->Dps2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000002, Dps2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.88
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.18 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.88
	[ 53.88] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.88
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.18 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.88
	[ 53.88] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.88
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.18 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.88
	[ 53.88] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.88
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.18 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.88
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.89
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.89
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Dps9, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.89
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.89
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps13, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.89
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000018, Dps14, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.89
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.89
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 53.89
	[ 53.89] SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps16") at 54.19 (+0.30)
			ShowSpecialWarning: Ignite Mana on Dps1, Dps2, Dps3, Dps4, PlayerName, Dps7 and 8 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 53.89
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 54.19 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 58.72] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 58.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps4
	[ 58.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps8
		ScheduleTask: announce20475target:CombinedShow("Dps8") at 58.82 (+0.10)
			ShowAnnounce: Living Bomb on Dps4, Dps8
	[ 59.04] SPELL_AURA_APPLIED: [->Dps5: Living Fallout] "", nil, 0x0, Player-1-00000005, Dps5, 0x511, 461103, Living Fallout, 0, DEBUFF, 0
		AntiSpam: gtfo
		ShowSpecialWarning: Living Fallout damage - move away
		PlaySound: VoicePack/watchfeet
	[ 63.56] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
		ShowSpecialWarning: Inferno - run away
		PlaySound: VoicePack/aesoon
		StartTimer: 8.0, Inferno ends
		StartTimer: 21.0, Inferno
	[ 82.97] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 82.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps1
	[ 82.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: PlayerName
		ShowSpecialWarning: Living Bomb on you
		PlaySound: VoicePack/runout
		ShowYell: Living Bomb on PlayerName
		ScheduleTask: yell20475shortfade:ScheduleCountdown(1.0) at 89.99 (+7.00)
			ShowYell: 1
		ScheduleTask: yell20475shortfade:ScheduleCountdown(2.0) at 88.99 (+6.00)
			ShowYell: 2
		ScheduleTask: yell20475shortfade:ScheduleCountdown(3.0) at 87.99 (+5.00)
			ShowYell: 3
		ScheduleTask: announce20475target:CombinedShow("PlayerName") at 83.09 (+0.10)
			ShowAnnounce: Living Bomb on Dps1, PlayerName
	[ 92.28] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
		ShowSpecialWarning: Inferno - run away
		PlaySound: VoicePack/aesoon
		StartTimer: 8.0, Inferno ends
		StartTimer: 21.0, Inferno
	[ 95.90] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000002, Dps2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Dps9, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps13, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 95.90
	[ 95.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps16") at 96.20 (+0.30)
			ShowSpecialWarning: Ignite Mana on Dps2, Dps3, PlayerName, Dps6, Healer2, Dps8 and 6 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 95.90
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 96.20 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 98.74] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 98.74] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps8
	[ 98.74] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps7
		ScheduleTask: announce20475target:CombinedShow("Dps7") at 98.84 (+0.10)
			ShowAnnounce: Living Bomb on Dps8, Dps7
	[110.46] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[110.46] SPELL_AURA_APPLIED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps11
	[110.46] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps12
		ScheduleTask: announce20475target:CombinedShow("Dps12") at 110.56 (+0.10)
			ShowAnnounce: Living Bomb on Dps11, Dps12
	[116.52] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
		ShowSpecialWarning: Inferno - run away
		PlaySound: VoicePack/aesoon
		StartTimer: 8.0, Inferno ends
		StartTimer: 21.0, Inferno
	[126.24] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[126.26] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000018, Dps14, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 126.56 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 126.26
	[126.26] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 126.26
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 126.56 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 126.26
	[126.26] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 126.26
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 126.56 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 126.26
	[126.26] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 126.26
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 126.56 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 126.26
	[126.26] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 126.26
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 126.56 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 126.26
	[126.26] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 126.56 (+0.30)
			ShowSpecialWarning: Ignite Mana on Dps14, Dps3, Healer1, Tank1, Dps10, Dps15 - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 126.26
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 126.56 (+0.30)
			PlaySound: VoicePack/helpdispel
	[141.22] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[141.22] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps13, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps13
	[141.22] SPELL_AURA_APPLIED: [Baron Geddon->Dps16: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps16, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps16
		ScheduleTask: announce20475target:CombinedShow("Dps16") at 141.32 (+0.10)
			ShowAnnounce: Living Bomb on Dps13, Dps16
	[145.71] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
		ShowSpecialWarning: Inferno - run away
		PlaySound: VoicePack/aesoon
		StartTimer: 8.0, Inferno ends
		StartTimer: 21.0, Inferno
	[153.80] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[153.80] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Dps9, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps9
	[153.80] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps12
		ScheduleTask: announce20475target:CombinedShow("Dps12") at 153.90 (+0.10)
			ShowAnnounce: Living Bomb on Dps9, Dps12
	[157.44] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Dps9, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000018, Dps14, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 157.44
	[157.44] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 157.74 (+0.30)
			ShowSpecialWarning: Ignite Mana on Dps1, Dps3, Dps4, PlayerName, Dps6, Dps7 and 8 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 157.44
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 157.74 (+0.30)
			PlaySound: VoicePack/helpdispel
	[168.76] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[168.76] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps12
	[168.78] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps15, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps15
		ScheduleTask: announce20475target:CombinedShow("Dps15") at 168.88 (+0.10)
			ShowAnnounce: Living Bomb on Dps12, Dps15
	[179.69] SPELL_CAST_SUCCESS: [Baron Geddon: Inferno] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461110, Inferno, 0, 0
		ShowSpecialWarning: Inferno - run away
		PlaySound: VoicePack/aesoon
		StartTimer: 8.0, Inferno ends
		StartTimer: 21.0, Inferno
	[183.32] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[183.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000002, Dps2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps2
	[183.33] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Healer2
		ScheduleTask: announce20475target:CombinedShow("Healer2") at 183.43 (+0.10)
			ShowAnnounce: Living Bomb on Dps2, Healer2
	[191.38] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0
		ShowSpecialWarning: Armageddon!
		StartTimer: 8.0, Armageddon
	[204.90] ENCOUNTER_END: 668, Baron Geddon, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 20475 461090 461105 462402 465725
]]
