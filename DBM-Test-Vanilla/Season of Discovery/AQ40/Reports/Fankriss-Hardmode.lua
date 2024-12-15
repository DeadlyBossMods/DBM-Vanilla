DBM.Test:Report[[
Test: SoD/AQ40/Fankriss/Hardmode
Mod:  DBM-Raids-Vanilla/Fankriss

Findings:
	Unused event registration: SPELL_AURA_REMOVED 25646 (Mortal Wound)
	Announce for spell ID 25831 (Summon Worm) is triggered by event SPELL_SUMMON 25832 (Summon Worm)
	Announce for spell ID 25831 (Summon Worm) is triggered by event SPELL_SUMMON 518 (Summon Worm)

Unused objects:
	[Special Warning] %d stacks of Mortal Wound on you, type=stack, spellId=25646
	[Special Warning] Mortal Wound on >%s< - taunt now, type=taunt, spellId=25646

Timers:
	Mortal Wound: %s, time=20.00, type=target, spellId=25646, triggerDeltas = 5.99, 3.64, 4.88, 4.84, 4.45, 5.26, 6.06, 5.26, 4.87, 4.87, 4.86, 4.85, 4.84, 3.24, 4.85, 6.48, 6.44, 4.87, 4.85, 4.87, 4.85, 4.86, 4.85, 4.87, 4.85, 4.46, 4.87, 5.26, 4.84, 4.88, 6.50, 4.84, 6.46, 4.58, 5.12, 4.88, 3.25, 4.89, 4.85, 4.86, 6.47, 4.86, 6.48, 4.85, 6.47, 3.23, 3.68, 4.44
		[  5.99] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
			 Triggered 4x, delta times: 5.99, 48.99, 59.85, 56.41
		[  9.63] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
			 Triggered 16x, delta times: 9.63, 4.88, 45.32, 4.84, 3.24, 4.85, 6.48, 40.46, 4.85, 4.46, 4.87, 5.26, 37.22, 4.88, 3.25, 4.89
		[ 19.35] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
			 Triggered 4x, delta times: 19.35, 66.33, 58.30, 91.15
		[ 23.80] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
			 Triggered 18x, delta times: 23.80, 5.26, 6.06, 5.26, 4.87, 4.87, 40.43, 4.85, 4.87, 4.85, 4.86, 38.88, 6.50, 4.84, 6.46, 27.57, 4.86, 40.48
		[205.56] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[210.42] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
			 Triggered 5x, delta times: 210.42, 6.48, 4.85, 6.47, 3.23

Announces:
	Mortal Wound on >%s< (%d), type=stack, spellId=25646, triggerDeltas = 5.99, 3.64, 4.88, 4.84, 4.45, 5.26, 6.06, 19.86, 4.85, 4.84, 3.24, 17.77, 4.87, 4.85, 4.87, 14.56, 4.87, 4.85, 4.46, 14.97, 4.88, 6.50, 4.84, 11.04, 5.12, 4.88, 3.25, 21.07, 4.86, 6.48, 4.85, 13.38, 4.44
		[  5.99] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
			 Triggered 4x, delta times: 5.99, 48.99, 59.85, 56.41
		[  9.63] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
			 Triggered 11x, delta times: 9.63, 4.88, 45.32, 4.84, 3.24, 51.79, 4.85, 4.46, 47.35, 4.88, 3.25
		[ 19.35] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
			 Triggered 4x, delta times: 19.35, 66.33, 58.30, 91.15
		[ 23.80] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
			 Triggered 10x, delta times: 23.80, 5.26, 6.06, 55.43, 4.85, 4.87, 48.59, 6.50, 4.84, 79.37
		[205.56] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		[210.42] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
			 Triggered 3x, delta times: 210.42, 6.48, 4.85
	Summon Worm, type=spell, spellId=25831, triggerDeltas = 20.95, 30.78, 3.23, 27.49, 3.23, 27.53, 3.25, 27.51, 3.25, 27.50, 3.24, 27.60, 3.23, 27.13, 3.64
		[ 20.95] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-0000000018, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
			 Triggered 8x, delta times: 20.95, 30.78, 30.72, 30.76, 30.76, 30.75, 30.84, 30.36
		[ 54.96] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-0000000032, Spawn of Fankriss, 0xa48, 25832, Summon Worm, 0, 0
			 Triggered 7x, delta times: 54.96, 30.72, 30.78, 30.76, 30.74, 30.83, 30.77

Special warnings:
	%s damage - move away, type=gtfo, spellId=1215421, triggerDeltas = 31.29, 29.76, 22.87, 7.11, 29.98, 30.09, 29.93, 36.32, 9.74, 8.36, 5.70
		[ 31.29] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
			 Triggered 11x, delta times: 31.29, 29.76, 22.87, 7.11, 29.98, 30.09, 29.93, 36.32, 9.74, 8.36, 5.70

Yells:
	None

Voice pack sounds:
	VoicePack/watchfeet
		[ 31.29] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
			 Triggered 11x, delta times: 31.29, 29.76, 22.87, 7.11, 29.98, 30.09, 29.93, 36.32, 9.74, 8.36, 5.70

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 712, Fankriss the Unyielding, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_SUMMON 518 25832 25831
		RegisterEvents: ShortTerm, SPELL_AURA_APPLIED 25646, SPELL_AURA_APPLIED_DOSE 25646, SPELL_AURA_REMOVED 25646
		RegisterEvents: Regular, SPELL_AURA_APPLIED 25646, SPELL_AURA_APPLIED_DOSE 25646, SPELL_AURA_REMOVED 25646
	[  5.99] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (1)
	[  9.63] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (2)
	[ 14.51] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (3)
	[ 19.35] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (1)
	[ 20.95] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-0000000018, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
		AntiSpam: SummonWorm
			Filtered: 2x SPELL_SUMMON at 22.17, 23.8
		ShowAnnounce: Summon Worm
	[ 23.80] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (2)
	[ 29.06] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (3)
	[ 31.29] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
			Filtered: 3x SPELL_AURA_APPLIED at 32.63, 34.09, 34.75
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[ 35.12] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 4, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (4)
	[ 40.38] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 5, 0
		StartTimer: 20.0, Mortal Wound: Tank3
	[ 45.25] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 6, 0
		StartTimer: 20.0, Mortal Wound: Tank3
	[ 50.12] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 7, 0
		StartTimer: 20.0, Mortal Wound: Tank3
	[ 51.73] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-0000000030, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
		AntiSpam: SummonWorm
			Filtered: 1x SPELL_SUMMON at 53.34
		ShowAnnounce: Summon Worm
	[ 54.96] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-0000000032, Spawn of Fankriss, 0xa48, 25832, Summon Worm, 0, 0
		AntiSpam: SummonWorm
		ShowAnnounce: Summon Worm
	[ 54.98] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (1)
	[ 59.83] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (2)
	[ 61.05] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
			Filtered: 1x SPELL_PERIODIC_DAMAGE at 64.05
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[ 64.67] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (3)
	[ 67.91] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 4, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (4)
	[ 72.76] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 5, 0
		StartTimer: 20.0, Mortal Wound: Tank1
	[ 79.24] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 6, 0
		StartTimer: 20.0, Mortal Wound: Tank1
	[ 82.45] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-000000004A, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
		AntiSpam: SummonWorm
			Filtered: 1x SPELL_SUMMON at 84.05
		ShowAnnounce: Summon Worm
	[ 83.92] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[ 85.68] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-000000004C, Spawn of Fankriss, 0xa48, 25832, Summon Worm, 0, 0
		AntiSpam: SummonWorm
		ShowAnnounce: Summon Worm
	[ 85.68] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (1)
	[ 90.55] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (2)
	[ 91.03] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[ 95.40] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (3)
	[100.27] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 4, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (4)
	[105.12] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 5, 0
		StartTimer: 20.0, Mortal Wound: Tank3
	[109.98] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 6, 0
		StartTimer: 20.0, Mortal Wound: Tank3
	[113.21] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-0000000061, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
		AntiSpam: SummonWorm
			Filtered: 1x SPELL_SUMMON at 114.83
		ShowAnnounce: Summon Worm
	[114.83] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (1)
	[116.46] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-0000000064, Spawn of Fankriss, 0xa48, 25832, Summon Worm, 0, 0
		AntiSpam: SummonWorm
		ShowAnnounce: Summon Worm
	[119.70] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (2)
	[121.01] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
			Filtered: 1x SPELL_PERIODIC_DAMAGE at 124.99
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[124.55] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (3)
	[129.01] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 4, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (4)
	[133.88] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 5, 0
		StartTimer: 20.0, Mortal Wound: Tank1
	[139.14] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 6, 0
		StartTimer: 20.0, Mortal Wound: Tank1
	[143.97] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-000000007A, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
		AntiSpam: SummonWorm
			Filtered: 1x SPELL_SUMMON at 145.59
		ShowAnnounce: Summon Worm
	[143.98] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (1)
	[147.22] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-000000007D, Spawn of Fankriss, 0xa48, 25832, Summon Worm, 0, 0
		AntiSpam: SummonWorm
		ShowAnnounce: Summon Worm
	[148.86] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (2)
	[151.10] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
			Filtered: 2x SPELL_PERIODIC_DAMAGE at 153.1, 154.1
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[155.36] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (3)
	[160.20] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 4, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (4)
	[166.66] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 5, 0
		StartTimer: 20.0, Mortal Wound: Tank3
	[171.24] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (1)
	[174.72] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-0000000097, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
		AntiSpam: SummonWorm
			Filtered: 1x SPELL_SUMMON at 176.36
		ShowAnnounce: Summon Worm
	[176.36] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (2)
	[177.96] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-000000009A, Spawn of Fankriss, 0xa48, 25832, Summon Worm, 0, 0
		AntiSpam: SummonWorm
		ShowAnnounce: Summon Worm
	[181.03] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[181.24] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (3)
	[184.49] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 4, 0
		StartTimer: 20.0, Mortal Wound: Tank1
		ShowAnnounce: Mortal Wound on Tank1 (4)
	[189.38] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank1: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000003, Tank1, 0x512, 25646, Mortal Wound, 0, DEBUFF, 5, 0
		StartTimer: 20.0, Mortal Wound: Tank1
	[194.23] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 6, 0
		StartTimer: 20.0, Mortal Wound: Tank3
	[199.09] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 7, 0
		StartTimer: 20.0, Mortal Wound: Tank3
	[205.56] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-00000000AE, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
		AntiSpam: SummonWorm
			Filtered: 1x SPELL_SUMMON at 207.17
		ShowAnnounce: Summon Worm
	[205.56] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank2
		ShowAnnounce: Mortal Wound on Tank2 (1)
	[208.79] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-00000000B0, Spawn of Fankriss, 0xa48, 25832, Summon Worm, 0, 0
		AntiSpam: SummonWorm
		ShowAnnounce: Summon Worm
	[210.42] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank2
		ShowAnnounce: Mortal Wound on Tank2 (2)
	[216.90] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 3, 0
		StartTimer: 20.0, Mortal Wound: Tank2
		ShowAnnounce: Mortal Wound on Tank2 (3)
	[217.35] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[221.75] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 4, 0
		StartTimer: 20.0, Mortal Wound: Tank2
		ShowAnnounce: Mortal Wound on Tank2 (4)
	[227.09] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[228.22] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 5, 0
		StartTimer: 20.0, Mortal Wound: Tank2
	[231.45] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank2: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000004, Tank2, 0x512, 25646, Mortal Wound, 0, DEBUFF, 6, 0
		StartTimer: 20.0, Mortal Wound: Tank2
	[235.13] SPELL_AURA_APPLIED: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (1)
	[235.45] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
			Filtered: 3x SPELL_PERIODIC_DAMAGE at 236.46, 237.45, 238.45
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[235.92] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-00000000C6, Spawn of Fankriss, 0xa48, 518, Summon Worm, 0, 0
		AntiSpam: SummonWorm
			Filtered: 1x SPELL_SUMMON at 237.95
		ShowAnnounce: Summon Worm
	[239.56] SPELL_SUMMON: [Fankriss the Unyielding->Spawn of Fankriss: Summon Worm] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Creature-0-1-531-1-15630-00000000CA, Spawn of Fankriss, 0xa48, 25832, Summon Worm, 0, 0
		AntiSpam: SummonWorm
		ShowAnnounce: Summon Worm
	[239.57] SPELL_AURA_APPLIED_DOSE: [Fankriss the Unyielding->Tank3: Mortal Wound] Creature-0-1-531-1-15510-0000000001, Fankriss the Unyielding, 0xa48, Player-1-00000008, Tank3, 0x512, 25646, Mortal Wound, 0, DEBUFF, 2, 0
		StartTimer: 20.0, Mortal Wound: Tank3
		ShowAnnounce: Mortal Wound on Tank3 (2)
	[241.15] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000005, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[241.68] ENCOUNTER_END: 712, Fankriss the Unyielding, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
]]
