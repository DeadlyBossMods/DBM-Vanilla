DBM.Test:Report[[
Test: SoD/MC/Geddon/Heat-1/Wipe
Mod:  DBM-Raids-Vanilla/Geddon

Findings:
	Unused event registration: SPELL_AURA_APPLIED 20475 (Living Bomb)
	Unused event registration: SPELL_AURA_APPLIED 461105 (Living Bomb)
	Unused event registration: SPELL_AURA_APPLIED 462402 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 20475 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 461105 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 462402 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 19695 (Inferno)
	Unused event registration: SPELL_CAST_SUCCESS 20475 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 20478 (Armageddon)
	Unused event registration: SPELL_CAST_SUCCESS 461105 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 461110 (Inferno)
	Unused event registration: SPELL_CAST_SUCCESS 462402 (Living Bomb)
	Unused event registration: SPELL_DAMAGE 19698 (Inferno)
	Unused event registration: SPELL_MISSED 19698 (Inferno)
	SpecialWarning for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	Timer for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	Timer for spell ID 20475 (Living Bomb) is triggered by event SPELL_CAST_SUCCESS 461090 (Living Bomb)
	Yell for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	Announce for spell ID 20478 (Armageddon) is triggered by event SPELL_CAST_SUCCESS 461121 (Armageddon)
	Timer for spell ID 20478 (Armageddon) is triggered by event SPELL_CAST_SUCCESS 461121 (Armageddon)

Unused objects:
	[Announce] Inferno, type=spell, spellId=19695
	[Special Warning] Inferno - run away, type=run, spellId=19695
	[Special Warning] %s damage - move away, type=gtfo, spellId=19698
	[Timer] Inferno ends, time=8.00, type=active, spellId=19695
	[Timer] Inferno, time=21.00, type=cd, spellId=19695

Timers:
	Ignite Mana, time=27.00, type=cd, spellId=19659, triggerDeltas = 7.96, 30.74, 35.60, 32.41, 34.01
		[  7.96] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
			 Triggered 5x, delta times: 7.96, 30.74, 35.60, 32.41, 34.01
	Living Bomb, time=13.30, type=cd, spellId=20475, triggerDeltas = 0.00, 14.41, 14.58, 11.33, 25.89, 16.19, 17.83, 19.44, 17.80, 13.01, 11.34
		[  0.00] ENCOUNTER_START: 668, Baron Geddon, 226, 20, 0
		[ 14.41] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
			 Triggered 10x, delta times: 14.41, 14.58, 11.33, 25.89, 16.19, 17.83, 19.44, 17.80, 13.01, 11.34
	Living Bomb: %s, time=8.00, type=target, spellId=20475, triggerDeltas = 14.43, 0.00, 14.56, 0.00, 11.33, 0.00, 25.89, 0.00, 16.20, 0.00, 17.82, 0.00, 19.44, 0.01, 17.79, 0.00, 13.01, 0.00, 11.34, 0.00
		[ 14.43] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 14.43, 105.25
		[ 14.43] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps14, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 22.42] SPELL_AURA_REMOVED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 22.42, 105.27
		[ 28.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 28.99, 121.49
		[ 28.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 36.98] SPELL_AURA_REMOVED: [Baron Geddon->Dps9: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 36.98] SPELL_AURA_REMOVED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 36.98, 121.49
		[ 40.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 40.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 48.33] SPELL_AURA_REMOVED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 48.33] SPELL_AURA_REMOVED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.21, 34.02
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 74.21] SPELL_AURA_REMOVED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		[ 74.21] SPELL_AURA_REMOVED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 82.41] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 82.41] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 82.41, 55.06, 24.35
		[ 90.41] SPELL_AURA_REMOVED: [Baron Geddon->Dps8: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 90.41] SPELL_AURA_REMOVED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 90.41, 55.08, 24.34
		[100.23] SPELL_AURA_APPLIED: [Baron Geddon->Dps2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000002, Dps2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[119.67] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[127.69] SPELL_AURA_REMOVED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[137.47] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[145.49] SPELL_AURA_REMOVED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[150.48] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[158.47] SPELL_AURA_REMOVED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[161.82] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[169.83] SPELL_AURA_REMOVED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
	Armageddon, time=8.00, type=cast, spellId=20478, triggerDeltas = 165.06
		[165.06] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0

Announces:
	Living Bomb on >%s<, type=target, spellId=20475, triggerDeltas = 14.53, 14.56, 11.33, 25.89, 16.20, 17.82, 19.45, 17.79, 13.01, 11.34
		[ 14.53] Scheduled at 14.43 by SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps14, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 29.09] Scheduled at 28.99 by SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 40.42] Scheduled at 40.32 by SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 66.31] Scheduled at 66.21 by SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 82.51] Scheduled at 82.41 by SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[100.33] Scheduled at 100.23 by SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		[119.78] Scheduled at 119.68 by SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[137.57] Scheduled at 137.47 by SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[150.58] Scheduled at 150.48 by SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[161.92] Scheduled at 161.82 by SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
	Armageddon, type=spell, spellId=20478, triggerDeltas = 165.06
		[165.06] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0

Special warnings:
	Ignite Mana on >%s< - dispel now, type=dispel, spellId=19659, triggerDeltas = 8.26, 30.75, 35.61, 32.39, 34.01
		[  8.26] Scheduled at 7.96 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 39.01] Scheduled at 38.71 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 74.62] Scheduled at 74.32 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[107.01] Scheduled at 106.71 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[141.02] Scheduled at 140.72 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
	Living Bomb on you, type=you, spellId=20475, triggerDeltas = 66.21, 34.02
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.21, 34.02

Yells:
	%d, type=shortfade, spellId=20475
		[ 71.21] Scheduled at 66.21 by SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 71.21, 1.00, 1.00
		[105.23] Scheduled at 100.23 by SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 105.23, 1.00, 1.00
	Living Bomb on PlayerName, type=yell, spellId=20475
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.21, 34.02

Voice pack sounds:
	VoicePack/helpdispel
		[  8.26] Scheduled at 7.96 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 39.01] Scheduled at 38.71 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 74.62] Scheduled at 74.32 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[107.01] Scheduled at 106.71 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[141.02] Scheduled at 140.72 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
	VoicePack/runout
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.21, 34.02

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 668, Baron Geddon, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 20475 19659 461090 461105 462402, SPELL_AURA_REMOVED 20475 461090 461105 462402, SPELL_CAST_SUCCESS 19695 19659 20478 20475 461090 461105 462402 461110 461121
		StartTimer: 11.0, Living Bomb
		RegisterEvents: ShortTerm, SPELL_DAMAGE 19698, SPELL_MISSED 19698
		RegisterEvents: Regular, SPELL_DAMAGE 19698, SPELL_MISSED 19698
	[  7.96] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000002, Dps2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps11: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps14, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Pet1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Pet-0-1-409-1-213450-0000000001, Pet1, 0x1112, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Healer4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Healer4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000018, Dps13, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 8.26 (+0.30)
			ShowSpecialWarning: Ignite Mana on Dps1, Dps2, Dps5, Dps7, Tank1, Dps11 and 13 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 14.41] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 14.43] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps3
	[ 14.43] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps14, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps14
		ScheduleTask: announce20475target:CombinedShow("Dps14") at 14.53 (+0.10)
			ShowAnnounce: Living Bomb on Dps3, Dps14
	[ 22.42] SPELL_AURA_REMOVED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps3
	[ 28.99] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 28.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps5
	[ 28.99] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps9
		ScheduleTask: announce20475target:CombinedShow("Dps9") at 29.09 (+0.10)
			ShowAnnounce: Living Bomb on Dps5, Dps9
	[ 36.98] SPELL_AURA_REMOVED: [Baron Geddon->Dps9: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps9
	[ 36.98] SPELL_AURA_REMOVED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps5
	[ 38.70] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Healer4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Healer4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 39.01 (+0.30)
			ShowSpecialWarning: Ignite Mana on Tank1, Dps3, Dps4, Dps5, Dps7, PlayerName and 7 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 40.32] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 40.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps1
	[ 40.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps6
		ScheduleTask: announce20475target:CombinedShow("Dps6") at 40.42 (+0.10)
			ShowAnnounce: Living Bomb on Dps1, Dps6
	[ 48.33] SPELL_AURA_REMOVED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps6
	[ 48.33] SPELL_AURA_REMOVED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps1
	[ 66.21] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: PlayerName
		ShowSpecialWarning: Living Bomb on you
		PlaySound: VoicePack/runout
		ShowYell: Living Bomb on PlayerName
		ScheduleTask: yell20475shortfade:ScheduleCountdown(1.0) at 73.21 (+7.00)
			ShowYell: 1
		ScheduleTask: yell20475shortfade:ScheduleCountdown(2.0) at 72.21 (+6.00)
			ShowYell: 2
		ScheduleTask: yell20475shortfade:ScheduleCountdown(3.0) at 71.21 (+5.00)
			ShowYell: 3
	[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps12
		ScheduleTask: announce20475target:CombinedShow("Dps12") at 66.31 (+0.10)
			ShowAnnounce: Living Bomb on PlayerName, Dps12
	[ 74.21] SPELL_AURA_REMOVED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tPlayerName
	[ 74.21] SPELL_AURA_REMOVED: [Baron Geddon->Dps12: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps12
	[ 74.30] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.31
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.31
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.31
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.31
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Healer4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Healer4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000018, Dps13, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps14, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 74.62 (+0.30)
			ShowSpecialWarning: Ignite Mana on Dps1, Dps3, Dps4, Dps7, PlayerName, Healer2 and 9 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 82.40] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 82.41] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps8
	[ 82.41] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps10
		ScheduleTask: announce20475target:CombinedShow("Dps10") at 82.51 (+0.10)
			ShowAnnounce: Living Bomb on Dps8, Dps10
	[ 90.41] SPELL_AURA_REMOVED: [Baron Geddon->Dps8: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps8
	[ 90.41] SPELL_AURA_REMOVED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps10
	[100.23] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[100.23] SPELL_AURA_APPLIED: [Baron Geddon->Dps2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000002, Dps2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps2
	[100.23] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: PlayerName
		ShowSpecialWarning: Living Bomb on you
		PlaySound: VoicePack/runout
		ShowYell: Living Bomb on PlayerName
		ScheduleTask: yell20475shortfade:ScheduleCountdown(1.0) at 107.23 (+7.00)
			ShowYell: 1
		ScheduleTask: yell20475shortfade:ScheduleCountdown(2.0) at 106.23 (+6.00)
			ShowYell: 2
		ScheduleTask: yell20475shortfade:ScheduleCountdown(3.0) at 105.23 (+5.00)
			ShowYell: 3
		ScheduleTask: announce20475target:CombinedShow("PlayerName") at 100.33 (+0.10)
			ShowAnnounce: Living Bomb on Dps2, PlayerName
	[106.71] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Healer4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Healer4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000018, Dps13, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 107.01 (+0.30)
			ShowSpecialWarning: Ignite Mana on Dps1, Dps5, Dps6, Dps7, PlayerName, Healer2 and 6 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			PlaySound: VoicePack/helpdispel
	[119.67] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[119.67] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Tank1
	[119.68] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps3
		ScheduleTask: announce20475target:CombinedShow("Dps3") at 119.78 (+0.10)
			ShowAnnounce: Living Bomb on Tank1, Dps3
	[127.69] SPELL_AURA_REMOVED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tTank1
	[127.69] SPELL_AURA_REMOVED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps3
	[137.47] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[137.47] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Healer3
	[137.47] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps10
		ScheduleTask: announce20475target:CombinedShow("Dps10") at 137.57 (+0.10)
			ShowAnnounce: Living Bomb on Healer3, Dps10
	[140.72] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Healer4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Healer4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000018, Dps13, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 141.02 (+0.30)
			ShowSpecialWarning: Ignite Mana on Tank1, Dps1, Dps3, Dps5, Dps6, Dps7 and 7 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			PlaySound: VoicePack/helpdispel
	[145.49] SPELL_AURA_REMOVED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHealer3
	[145.49] SPELL_AURA_REMOVED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps10
	[150.48] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[150.48] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps5
	[150.48] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Healer2
		ScheduleTask: announce20475target:CombinedShow("Healer2") at 150.58 (+0.10)
			ShowAnnounce: Living Bomb on Dps5, Healer2
	[158.47] SPELL_AURA_REMOVED: [Baron Geddon->Dps5: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps5
	[158.47] SPELL_AURA_REMOVED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHealer2
	[161.82] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[161.82] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps4
	[161.82] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps10
		ScheduleTask: announce20475target:CombinedShow("Dps10") at 161.92 (+0.10)
			ShowAnnounce: Living Bomb on Dps4, Dps10
	[165.06] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0
		ShowAnnounce: Armageddon
		StartTimer: 8.0, Armageddon
	[169.83] SPELL_AURA_REMOVED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps4
	[169.83] SPELL_AURA_REMOVED: [Baron Geddon->Dps10: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps10
	[186.11] ENCOUNTER_END: 668, Baron Geddon, 226, 20, 0, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 20475 461090 461105 462402
]]
