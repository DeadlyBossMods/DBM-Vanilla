DBM.Test:Report[[
Test: SoD/MC/Geddon/Heat-1/Kill
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
	Ignite Mana, time=27.00, type=cd, spellId=19659, triggerDeltas = 13.34, 29.16, 27.51
		[ 13.34] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
			 Triggered 3x, delta times: 13.34, 29.16, 27.51
	Living Bomb, time=13.30, type=cd, spellId=20475, triggerDeltas = 0.00, 14.96, 10.94, 15.00, 14.55, 11.32, 14.56
		[  0.00] ENCOUNTER_START: 668, Baron Geddon, 226, 20, 0
		[ 14.96] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
			 Triggered 6x, delta times: 14.96, 10.94, 15.00, 14.55, 11.32, 14.56
	Living Bomb: %s, time=8.00, type=target, spellId=20475, triggerDeltas = 14.98, 0.00, 10.93, 0.00, 14.99, 0.00, 14.55, 0.00, 11.32, 0.00, 14.56, 0.00
		[ 14.98] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		[ 14.98] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 22.97] SPELL_AURA_REMOVED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		[ 22.97] SPELL_AURA_REMOVED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 25.91] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 25.91] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 33.91] SPELL_AURA_REMOVED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 33.91] SPELL_AURA_REMOVED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 40.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 40.90, 25.87
		[ 40.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 48.89] SPELL_AURA_REMOVED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 48.89, 25.89
		[ 48.89] SPELL_AURA_REMOVED: [Baron Geddon->Dps15: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 55.45] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 55.45] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 63.45] SPELL_AURA_REMOVED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 63.45] SPELL_AURA_REMOVED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 66.77] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 74.78] SPELL_AURA_REMOVED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 81.33] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 81.33] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
	Armageddon, time=8.00, type=cast, spellId=20478, triggerDeltas = 113.76
		[113.76] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0

Announces:
	Living Bomb on >%s<, type=target, spellId=20475, triggerDeltas = 15.08, 10.93, 14.99, 14.55, 11.32, 14.56
		[ 15.08] Scheduled at 14.98 by SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 26.01] Scheduled at 25.91 by SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 41.00] Scheduled at 40.90 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 55.55] Scheduled at 55.45 by SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 66.87] Scheduled at 66.77 by SPELL_AURA_APPLIED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 81.43] Scheduled at 81.33 by SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
	Armageddon, type=spell, spellId=20478, triggerDeltas = 113.76
		[113.76] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0

Special warnings:
	Ignite Mana on >%s< - dispel now, type=dispel, spellId=19659, triggerDeltas = 13.65, 29.17, 27.49
		[ 13.65] Scheduled at 13.35 by SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 42.82] Scheduled at 42.52 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 70.31] Scheduled at 70.01 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
	Living Bomb on you, type=you, spellId=20475, triggerDeltas = 14.98
		[ 14.98] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0

Yells:
	%d, type=shortfade, spellId=20475
		[ 19.98] Scheduled at 14.98 by SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 19.98, 1.00, 1.00
	Living Bomb on PlayerName, type=yell, spellId=20475
		[ 14.98] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0

Voice pack sounds:
	VoicePack/helpdispel
		[ 13.65] Scheduled at 13.35 by SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 42.82] Scheduled at 42.52 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 70.31] Scheduled at 70.01 by SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
	VoicePack/runout
		[ 14.98] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 668, Baron Geddon, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 20475 19659 461090 461105 462402, SPELL_AURA_REMOVED 20475 461090 461105 462402, SPELL_CAST_SUCCESS 19695 19659 20478 20475 461090 461105 462402 461110 461121
		StartTimer: 11.0, Living Bomb
		RegisterEvents: ShortTerm, SPELL_DAMAGE 19698, SPELL_MISSED 19698
		RegisterEvents: Regular, SPELL_DAMAGE 19698, SPELL_MISSED 19698
	[ 13.34] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Pet1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Pet-0-1-409-1-213450-0000000001, Pet1, 0x1112, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.34
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.34
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Dps2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000002, Dps2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.34
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.34
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.34
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.34
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.34
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.34
	[ 13.34] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.64 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.35
	[ 13.35] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.34
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.65 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.35
	[ 13.35] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.35
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.65 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.35
	[ 13.35] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.35
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.65 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.35
	[ 13.35] SPELL_AURA_APPLIED: [Baron Geddon->Healer4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Healer4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.35
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.65 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.35
	[ 13.35] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.35
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.65 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.35
	[ 13.35] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.35
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.65 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 13.35
	[ 13.35] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps12") at 13.65 (+0.30)
			ShowSpecialWarning: Ignite Mana on Pet1, Dps1, Dps2, Dps3, Dps4, Dps5 and 10 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 13.35
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 13.65 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 14.96] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 14.98] SPELL_AURA_APPLIED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: PlayerName
		ShowSpecialWarning: Living Bomb on you
		PlaySound: VoicePack/runout
		ShowYell: Living Bomb on PlayerName
		ScheduleTask: yell20475shortfade:ScheduleCountdown(1.0) at 21.98 (+7.00)
			ShowYell: 1
		ScheduleTask: yell20475shortfade:ScheduleCountdown(2.0) at 20.98 (+6.00)
			ShowYell: 2
		ScheduleTask: yell20475shortfade:ScheduleCountdown(3.0) at 19.98 (+5.00)
			ShowYell: 3
	[ 14.98] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Healer2
		ScheduleTask: announce20475target:CombinedShow("Healer2") at 15.08 (+0.10)
			ShowAnnounce: Living Bomb on PlayerName, Healer2
	[ 22.97] SPELL_AURA_REMOVED: [Baron Geddon->Healer1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000008, Healer1, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tPlayerName
	[ 22.97] SPELL_AURA_REMOVED: [Baron Geddon->Healer2: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHealer2
	[ 25.90] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 25.91] SPELL_AURA_APPLIED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps6
	[ 25.91] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Healer3
		ScheduleTask: announce20475target:CombinedShow("Healer3") at 26.01 (+0.10)
			ShowAnnounce: Living Bomb on Dps6, Healer3
	[ 33.91] SPELL_AURA_REMOVED: [Baron Geddon->Dps6: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000006, Dps6, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps6
	[ 33.91] SPELL_AURA_REMOVED: [Baron Geddon->Healer3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHealer3
	[ 40.90] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 40.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps11
	[ 40.90] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps15
		ScheduleTask: announce20475target:CombinedShow("Dps15") at 41.00 (+0.10)
			ShowAnnounce: Living Bomb on Dps11, Dps15
	[ 42.50] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Healer4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Healer4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps11: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps14, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 42.52
	[ 42.52] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 42.82 (+0.30)
			ShowSpecialWarning: Ignite Mana on Tank1, Dps1, Dps3, Dps4, Dps5, Dps7 and 9 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 42.52
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 42.82 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 48.89] SPELL_AURA_REMOVED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps11
	[ 48.89] SPELL_AURA_REMOVED: [Baron Geddon->Dps15: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps15
	[ 55.45] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 55.45] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps3
	[ 55.45] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps4
		ScheduleTask: announce20475target:CombinedShow("Dps4") at 55.55 (+0.10)
			ShowAnnounce: Living Bomb on Dps3, Dps4
	[ 63.45] SPELL_AURA_REMOVED: [Baron Geddon->Dps4: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps4
	[ 63.45] SPELL_AURA_REMOVED: [Baron Geddon->Dps3: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps3
	[ 66.77] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 66.77] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps1
	[ 66.77] SPELL_AURA_APPLIED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps11
		ScheduleTask: announce20475target:CombinedShow("Dps11") at 66.87 (+0.10)
			ShowAnnounce: Living Bomb on Dps1, Dps11
	[ 70.01] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps1: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000003, Dps3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000004, Dps4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps5: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000005, Dps5, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Healer2: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000009, Healer2, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Healer3: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000010, Healer3, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps8: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000011, Dps8, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Healer4: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000012, Healer4, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps9: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000014, Dps9, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps10: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000015, Dps10, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps12: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000017, Dps12, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps13: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000018, Dps13, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps14: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000019, Dps14, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 70.01
	[ 70.01] SPELL_AURA_APPLIED: [Baron Geddon->Dps15: Ignite Mana] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000020, Dps15, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Dps15") at 70.31 (+0.30)
			ShowSpecialWarning: Ignite Mana on Tank1, Dps1, Dps3, Dps4, Dps5, Dps7 and 10 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 70.01
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 70.31 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 74.78] SPELL_AURA_REMOVED: [Baron Geddon->Dps1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000001, Dps1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps1
	[ 74.78] SPELL_AURA_REMOVED: [Baron Geddon->Dps11: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000016, Dps11, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDps11
	[ 81.33] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 81.33] SPELL_AURA_APPLIED: [Baron Geddon->Tank1: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000013, Tank1, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Tank1
	[ 81.33] SPELL_AURA_APPLIED: [Baron Geddon->Dps7: Living Bomb] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, Player-1-00000007, Dps7, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Dps7
		ScheduleTask: announce20475target:CombinedShow("Dps7") at 81.43 (+0.10)
			ShowAnnounce: Living Bomb on Tank1, Dps7
	[113.76] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-1-409-1-228433-0000000001, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0
		ShowAnnounce: Armageddon
		StartTimer: 8.0, Armageddon
	[122.29] ENCOUNTER_END: 668, Baron Geddon, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 20475 461090 461105 462402
]]
