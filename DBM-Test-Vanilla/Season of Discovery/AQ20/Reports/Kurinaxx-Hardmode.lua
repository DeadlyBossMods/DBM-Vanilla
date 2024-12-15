DBM.Test:Report[[
Test: SoD/AQ20/Kurinnaxx/Hardmode
Mod:  DBM-Raids-Vanilla/Kurinnaxx

Findings:
	Announce for spell ID 25656 (Sand Trap) is triggered by event SPELL_CREATE 25648 (Sand Trap)
	SpecialWarning for spell ID 25656 (Sand Trap) is triggered by event SPELL_CREATE 25648 (Sand Trap)
	Timer for spell ID 25656 (Sand Trap) is triggered by event SPELL_CREATE 25648 (Sand Trap)
	Yell for spell ID 25656 (Sand Trap) is triggered by event SPELL_CREATE 25648 (Sand Trap)

Unused objects:
	[Special Warning] %d stacks of Mortal Wound on you, type=stack, spellId=25646
	[Special Warning] Mortal Wound on >%s< - taunt now, type=taunt, spellId=25646

Timers:
	Exploding Ghosts, time=30.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 0.00, 0.00, 0.00
		Unknown trigger
	Mortal Wound: %s, time=15.00, type=target, spellId=25646, triggerDeltas = 9.69, 8.09, 8.06, 9.74, 8.11, 11.32, 8.11, 8.07, 8.09, 8.11, 8.12, 10.03, 12.61, 8.10, 8.13
		[  9.69] SPELL_AURA_APPLIED: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[ 17.78] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
			 Triggered 8x, delta times: 17.78, 8.06, 9.74, 8.11, 11.32, 8.11, 8.07, 8.09
		[ 81.05] SPELL_AURA_REMOVED: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[ 87.39] SPELL_AURA_APPLIED: [Kurinnaxx->Dps3: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000003, Dps3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[ 91.04] SPELL_AURA_REMOVED: [Kurinnaxx->Dps3: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000003, Dps3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[ 95.51] SPELL_AURA_APPLIED: [Kurinnaxx->Dps6: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000008, Dps6, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[105.54] SPELL_AURA_APPLIED: [Kurinnaxx->Dps2: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000002, Dps2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[118.15] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Dps2: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000002, Dps2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		[119.27] SPELL_AURA_REMOVED: [Kurinnaxx->Dps2: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000002, Dps2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[126.25] SPELL_AURA_APPLIED: [Kurinnaxx->Dps4: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000005, Dps4, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[134.38] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Dps4: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000005, Dps4, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
	Sand Trap, time=8.00, type=cd, spellId=25656, triggerDeltas = 0.00, 8.07, 8.11, 8.07, 8.09, 8.11, 11.33, 8.11, 8.07, 8.09, 8.10, 8.11, 8.11, 11.31, 8.09, 8.12, 8.11
		[  0.00] ENCOUNTER_START: 718, Kurinnaxx, 185, 20, 0
		[  8.07] SPELL_CREATE: [Dps8->Sand Trap: Sand Trap] Player-1-00000010, Dps8, 0x512, GameObject-0-1-509-1-180647-0000000007, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 16.18] SPELL_CREATE: [Dps7->Sand Trap: Sand Trap] Player-1-00000009, Dps7, 0x512, GameObject-0-1-509-1-180647-000000000E, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 24.25] SPELL_CREATE: [Tank1->Sand Trap: Sand Trap] Player-1-00000004, Tank1, 0x512, GameObject-0-1-509-1-180647-0000000011, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 32.34] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-0000000016, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 40.45] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-000000001A, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 51.78] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-0000000022, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 59.89] SPELL_CREATE: [Dps3->Sand Trap: Sand Trap] Player-1-00000003, Dps3, 0x512, GameObject-0-1-509-1-180647-0000000029, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 67.96] SPELL_CREATE: [Tank1->Sand Trap: Sand Trap] Player-1-00000004, Tank1, 0x512, GameObject-0-1-509-1-180647-0000000030, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 76.05] SPELL_CREATE: [Healer1->Sand Trap: Sand Trap] Player-1-00000007, Healer1, 0x511, GameObject-0-1-509-1-180647-0000000036, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 84.15] SPELL_CREATE: [Dps3->Sand Trap: Sand Trap] Player-1-00000003, Dps3, 0x512, GameObject-0-1-509-1-180647-000000003A, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 92.26] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-000000003F, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[100.37] SPELL_CREATE: [Dps6->Sand Trap: Sand Trap] Player-1-00000008, Dps6, 0x512, GameObject-0-1-509-1-180647-0000000044, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[111.68] SPELL_CREATE: [Dps1->Sand Trap: Sand Trap] Player-1-00000001, Dps1, 0x512, GameObject-0-1-509-1-180647-0000000049, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[119.77] SPELL_CREATE: [Dps1->Sand Trap: Sand Trap] Player-1-00000001, Dps1, 0x512, GameObject-0-1-509-1-180647-000000004E, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[127.89] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-0000000051, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[136.00] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-0000000057, Sand Trap, 0x0, 25648, Sand Trap, 0, 0

Announces:
	Mortal Wound on >%s< (%d), type=stack, spellId=25646, triggerDeltas = 9.69, 8.09, 8.06, 9.74, 51.81, 8.12, 10.03, 12.61, 8.10, 8.13
		[  9.69] SPELL_AURA_APPLIED: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[ 17.78] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
			 Triggered 3x, delta times: 17.78, 8.06, 9.74
		[ 87.39] SPELL_AURA_APPLIED: [Kurinnaxx->Dps3: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000003, Dps3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[ 95.51] SPELL_AURA_APPLIED: [Kurinnaxx->Dps6: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000008, Dps6, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[105.54] SPELL_AURA_APPLIED: [Kurinnaxx->Dps2: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000002, Dps2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[118.15] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Dps2: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000002, Dps2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		[126.25] SPELL_AURA_APPLIED: [Kurinnaxx->Dps4: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000005, Dps4, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[134.38] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Dps4: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000005, Dps4, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
	Sand Trap on >%s<, type=target, spellId=25656, triggerDeltas = 8.07, 8.11, 8.07, 8.09, 8.11, 11.33, 8.11, 8.07, 16.19, 8.11, 8.11, 11.31, 8.09, 8.12, 8.11
		[  8.07] SPELL_CREATE: [Dps8->Sand Trap: Sand Trap] Player-1-00000010, Dps8, 0x512, GameObject-0-1-509-1-180647-0000000007, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 16.18] SPELL_CREATE: [Dps7->Sand Trap: Sand Trap] Player-1-00000009, Dps7, 0x512, GameObject-0-1-509-1-180647-000000000E, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 24.25] SPELL_CREATE: [Tank1->Sand Trap: Sand Trap] Player-1-00000004, Tank1, 0x512, GameObject-0-1-509-1-180647-0000000011, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 32.34] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-0000000016, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 40.45] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-000000001A, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 51.78] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-0000000022, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 59.89] SPELL_CREATE: [Dps3->Sand Trap: Sand Trap] Player-1-00000003, Dps3, 0x512, GameObject-0-1-509-1-180647-0000000029, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 67.96] SPELL_CREATE: [Tank1->Sand Trap: Sand Trap] Player-1-00000004, Tank1, 0x512, GameObject-0-1-509-1-180647-0000000030, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 84.15] SPELL_CREATE: [Dps3->Sand Trap: Sand Trap] Player-1-00000003, Dps3, 0x512, GameObject-0-1-509-1-180647-000000003A, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[ 92.26] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-000000003F, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[100.37] SPELL_CREATE: [Dps6->Sand Trap: Sand Trap] Player-1-00000008, Dps6, 0x512, GameObject-0-1-509-1-180647-0000000044, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[111.68] SPELL_CREATE: [Dps1->Sand Trap: Sand Trap] Player-1-00000001, Dps1, 0x512, GameObject-0-1-509-1-180647-0000000049, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[119.77] SPELL_CREATE: [Dps1->Sand Trap: Sand Trap] Player-1-00000001, Dps1, 0x512, GameObject-0-1-509-1-180647-000000004E, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[127.89] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-0000000051, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		[136.00] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-0000000057, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
	Enrage on >%s<, type=target, spellId=26527, triggerDeltas = 92.26
		[ 92.26] SPELL_AURA_APPLIED: [Kurinnaxx->Kurinnaxx: Enrage] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, 26527, Enrage, 0, BUFF, 0

Special warnings:
	Exploding ghosts - dodge, type=nil, spellId=<none>, triggerDeltas = 0.00, 0.00, 0.00, 0.00
		Unknown trigger
	Sand Trap on you, type=you, spellId=25656, triggerDeltas = 76.05
		[ 76.05] SPELL_CREATE: [Healer1->Sand Trap: Sand Trap] Player-1-00000007, Healer1, 0x511, GameObject-0-1-509-1-180647-0000000036, Sand Trap, 0x0, 25648, Sand Trap, 0, 0

Yells:
	Sand Trap on PlayerName, type=yell, spellId=25656
		[ 76.05] SPELL_CREATE: [Healer1->Sand Trap: Sand Trap] Player-1-00000007, Healer1, 0x511, GameObject-0-1-509-1-180647-0000000036, Sand Trap, 0x0, 25648, Sand Trap, 0, 0

Voice pack sounds:
	VoicePack/ghostsoon
		Unknown trigger
	VoicePack/targetyou
		[ 76.05] SPELL_CREATE: [Healer1->Sand Trap: Sand Trap] Player-1-00000007, Healer1, 0x511, GameObject-0-1-509-1-180647-0000000036, Sand Trap, 0x0, 25648, Sand Trap, 0, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 718, Kurinnaxx, 185, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CREATE 25648, SPELL_AURA_APPLIED 25646 26527, SPELL_AURA_APPLIED_DOSE 25646, SPELL_AURA_REMOVED 25646
		StartTimer: 8.0, Sand Trap
	[  8.07] SPELL_CREATE: [Dps8->Sand Trap: Sand Trap] Player-1-00000010, Dps8, 0x512, GameObject-0-1-509-1-180647-0000000007, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps8
	[  9.69] SPELL_AURA_APPLIED: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 15.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (1)
	[ 16.18] SPELL_CREATE: [Dps7->Sand Trap: Sand Trap] Player-1-00000009, Dps7, 0x512, GameObject-0-1-509-1-180647-000000000E, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps7
	[ 17.78] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 15.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (2)
	[ 24.25] SPELL_CREATE: [Tank1->Sand Trap: Sand Trap] Player-1-00000004, Tank1, 0x512, GameObject-0-1-509-1-180647-0000000011, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Tank1
	[ 25.84] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 15.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (3)
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 32.34] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-0000000016, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps2
	[ 35.58] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 4, 0
		StartTimer: 15.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (4)
	[ 40.45] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-000000001A, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Healer2
	[ 43.69] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 5, 0
		StartTimer: 15.0, Mortal Wound: Tank1
	[ 51.78] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-0000000022, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps2
	[ 55.01] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 6, 0
		StartTimer: 15.0, Mortal Wound: Tank1
	[ 59.89] SPELL_CREATE: [Dps3->Sand Trap: Sand Trap] Player-1-00000003, Dps3, 0x512, GameObject-0-1-509-1-180647-0000000029, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps3
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 63.12] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 7, 0
		StartTimer: 15.0, Mortal Wound: Tank1
	[ 67.96] SPELL_CREATE: [Tank1->Sand Trap: Sand Trap] Player-1-00000004, Tank1, 0x512, GameObject-0-1-509-1-180647-0000000030, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Tank1
	[ 71.19] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 8, 0
		StartTimer: 15.0, Mortal Wound: Tank1
	[ 76.05] SPELL_CREATE: [Healer1->Sand Trap: Sand Trap] Player-1-00000007, Healer1, 0x511, GameObject-0-1-509-1-180647-0000000036, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowSpecialWarning: Sand Trap on you
		PlaySound: VoicePack/targetyou
		ShowYell: Sand Trap on PlayerName
	[ 79.28] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 9, 0
		StartTimer: 15.0, Mortal Wound: Tank1
	[ 81.05] SPELL_AURA_REMOVED: [Kurinnaxx->Tank1: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000004, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StopTimer: Timer25646target\tTank1
	[ 84.15] SPELL_CREATE: [Dps3->Sand Trap: Sand Trap] Player-1-00000003, Dps3, 0x512, GameObject-0-1-509-1-180647-000000003A, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps3
	[ 87.39] SPELL_AURA_APPLIED: [Kurinnaxx->Dps3: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000003, Dps3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 15.0, Mortal Wound: Dps3
		ShowAnnounce: Mortal Wound on Dps3 (1)
	[ 91.04] SPELL_AURA_REMOVED: [Kurinnaxx->Dps3: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000003, Dps3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StopTimer: Timer25646target\tDps3
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 92.26] SPELL_AURA_APPLIED: [Kurinnaxx->Kurinnaxx: Enrage] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, 26527, Enrage, 0, BUFF, 0
		ShowAnnounce: Enrage on Kurinnaxx
	[ 92.26] SPELL_CREATE: [Dps2->Sand Trap: Sand Trap] Player-1-00000002, Dps2, 0x512, GameObject-0-1-509-1-180647-000000003F, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps2
	[ 95.51] SPELL_AURA_APPLIED: [Kurinnaxx->Dps6: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000008, Dps6, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 15.0, Mortal Wound: Dps6
		ShowAnnounce: Mortal Wound on Dps6 (1)
	[100.37] SPELL_CREATE: [Dps6->Sand Trap: Sand Trap] Player-1-00000008, Dps6, 0x512, GameObject-0-1-509-1-180647-0000000044, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps6
	[105.54] SPELL_AURA_APPLIED: [Kurinnaxx->Dps2: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000002, Dps2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 15.0, Mortal Wound: Dps2
		ShowAnnounce: Mortal Wound on Dps2 (1)
	[111.68] SPELL_CREATE: [Dps1->Sand Trap: Sand Trap] Player-1-00000001, Dps1, 0x512, GameObject-0-1-509-1-180647-0000000049, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps1
	[118.15] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Dps2: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000002, Dps2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 15.0, Mortal Wound: Dps2
		ShowAnnounce: Mortal Wound on Dps2 (2)
	[119.27] SPELL_AURA_REMOVED: [Kurinnaxx->Dps2: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000002, Dps2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StopTimer: Timer25646target\tDps2
	[119.77] SPELL_CREATE: [Dps1->Sand Trap: Sand Trap] Player-1-00000001, Dps1, 0x512, GameObject-0-1-509-1-180647-000000004E, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Dps1
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[126.25] SPELL_AURA_APPLIED: [Kurinnaxx->Dps4: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000005, Dps4, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 15.0, Mortal Wound: Dps4
		ShowAnnounce: Mortal Wound on Dps4 (1)
	[127.89] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-0000000051, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Healer2
	[134.38] SPELL_AURA_APPLIED_DOSE: [Kurinnaxx->Dps4: Mortal Wound] Creature-0-1-509-1-15348-0000000001, Kurinnaxx, 0xa48, Player-1-00000005, Dps4, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 15.0, Mortal Wound: Dps4
		ShowAnnounce: Mortal Wound on Dps4 (2)
	[136.00] SPELL_CREATE: [Healer2->Sand Trap: Sand Trap] Player-1-00000011, Healer2, 0x512, GameObject-0-1-509-1-180647-0000000057, Sand Trap, 0x0, 25648, Sand Trap, 0, 0
		StartTimer: 8.0, Sand Trap
		ShowAnnounce: Sand Trap on Healer2
	[142.53] ENCOUNTER_END: 718, Kurinnaxx, 185, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 25646
]]
