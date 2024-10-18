DBM.Test:Report[[
Test: SoD/BWL/Chromaggus/BlueGreenBronze/Kill
Mod:  DBM-Raids-Vanilla/Chromaggus

Findings:
	Unused event registration: CHAT_MSG_MONSTER_EMOTE
	Unused event registration: SPELL_AURA_REMOVED 23155 (Brood Affliction: Red)
	Unused event registration: SPELL_AURA_REMOVED 23170 (Brood Affliction: Bronze)
	Unused event registration: SPELL_CAST_START 23187 (Frost Burn)
	Unused event registration: SPELL_CAST_START 23189 (Frost Burn)
	Unused event registration: SPELL_CAST_START 23308 (Incinerate)
	Unused event registration: SPELL_CAST_START 23309 (Incinerate)
	Unused event registration: SPELL_CAST_START 23310 (Time Lapse)
	Unused event registration: SPELL_CAST_START 23313 (Corrosive Acid)
	Unused event registration: SPELL_CAST_START 23314 (Corrosive Acid)
	Unused event registration: SPELL_CAST_START 23316 (Ignite Flesh)
	Announce for spell ID 23174 (Chromatic Mutation) is triggered by event SPELL_AURA_APPLIED 23170 (Brood Affliction: Bronze)
	Announce for spell ID 466357 (Arcane Bomb) is triggered by event SPELL_AURA_APPLIED 466435 (Nature's Fury)

Unused objects:
	[Announce] Frenzy, type=spell, spellId=23128

Timers:
	%s CD, time=60.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 0.00, 30.74, 30.72, 30.78, 30.78, 30.72, 30.78, 30.77, 30.75, 30.76, 30.77, 30.79, 30.78, 30.66
		[  0.00] ENCOUNTER_START: 616, Chromaggus, 186, 40, 0
		[ 30.74] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
			 Triggered 7x, delta times: 30.74, 61.50, 61.50, 61.55, 61.51, 61.56, 61.44
		[ 61.46] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
			 Triggered 6x, delta times: 61.46, 61.56, 61.50, 61.52, 61.53, 61.57
	%s cast, time=2.00, type=cd, spellId=<none>, triggerDeltas = 30.74, 30.72, 30.78, 30.78, 30.72, 30.78, 30.77, 30.75, 30.76, 30.77, 30.79, 30.78, 30.66
		[ 30.74] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
			 Triggered 7x, delta times: 30.74, 61.50, 61.50, 61.55, 61.51, 61.56, 61.44
		[ 61.46] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
			 Triggered 6x, delta times: 61.46, 61.56, 61.50, 61.52, 61.53, 61.57
	Bombs, time=47.36, type=cd, spellId=<none>, triggerDeltas = 38.43, 47.36, 47.32, 47.35, 47.36, 47.37, 47.39, 47.38
		[ 38.43] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps10: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000014, Dps10, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 85.79] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps12: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000017, Dps12, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[133.11] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Healer1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[180.46] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps5: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Dps5, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[227.82] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 2x, delta times: 227.82, 47.37
		[322.58] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer5: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000020, Healer5, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[369.96] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000015, Healer4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
	Vulnerability CD, time=19.50, type=cd, spellId=<none>, triggerDeltas = 19.42, 22.63, 22.65, 19.47, 24.27, 22.67, 21.00, 21.05, 16.23, 19.41, 19.40, 25.92, 19.46, 21.00, 17.87, 16.18, 22.68, 22.67, 19.38
		[ 19.42] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22278, Elemental Shield, 0, BUFF, 0
			 Triggered 5x, delta times: 19.42, 89.02, 64.72, 100.42, 38.87
		[ 42.05] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22280, Elemental Shield, 0, BUFF, 0
			 Triggered 4x, delta times: 42.05, 110.06, 176.52, 64.73
		[ 64.70] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22277, Elemental Shield, 0, BUFF, 0
			 Triggered 2x, delta times: 64.70, 286.61
		[ 84.17] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
			 Triggered 7x, delta times: 84.17, 105.22, 19.41, 19.40, 25.92, 40.46, 79.40
		[131.11] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22281, Elemental Shield, 0, BUFF, 0
	Frenzy ends, time=8.00, type=active, spellId=23128, triggerDeltas = 16.18, 17.78, 16.19, 16.18, 16.22, 16.18, 16.18, 16.20, 16.14, 16.20, 16.18, 16.21, 16.21, 16.15, 16.22, 16.19, 16.18, 16.16, 17.87, 16.19, 16.21, 16.20, 16.17, 16.13, 16.15
		[ 16.18] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
			 Triggered 25x, delta times: 16.18, 17.78, 16.19, 16.18, 16.22, 16.18, 16.18, 16.20, 16.14, 16.20, 16.18, 16.21, 16.21, 16.15, 16.22, 16.19, 16.18, 16.16, 17.87, 16.19, 16.21, 16.20, 16.17, 16.13, 16.15
		[ 19.52] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
			 Triggered 23x, delta times: 19.52, 32.42, 20.40, 13.18, 16.71, 14.68, 16.76, 15.80, 16.15, 14.94, 18.41, 15.76, 15.84, 16.28, 16.23, 16.40, 16.79, 18.31, 14.96, 20.20, 26.75, 17.11, 16.46

Announces:
	%s, type=nil, spellId=<none>, triggerDeltas = 30.74, 30.72, 30.78, 30.78, 30.72, 30.78, 30.77, 30.75, 30.76, 30.77, 30.79, 30.78, 30.66
		[ 30.74] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
			 Triggered 7x, delta times: 30.74, 61.50, 61.50, 61.55, 61.51, 61.56, 61.44
		[ 61.46] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
			 Triggered 6x, delta times: 61.46, 61.56, 61.50, 61.52, 61.53, 61.57
	%s Vulnerability, type=nil, spellId=<none>, triggerDeltas = 19.42, 22.63, 22.65, 19.47, 24.27, 22.67, 21.00, 21.05, 16.23, 84.19, 21.00, 17.87, 16.18, 22.68, 22.67, 19.38
		[ 19.42] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22278, Elemental Shield, 0, BUFF, 0
			 Triggered 5x, delta times: 19.42, 89.02, 64.72, 100.42, 38.87
		[ 42.05] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22280, Elemental Shield, 0, BUFF, 0
			 Triggered 4x, delta times: 42.05, 110.06, 176.52, 64.73
		[ 64.70] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22277, Elemental Shield, 0, BUFF, 0
			 Triggered 2x, delta times: 64.70, 286.61
		[ 84.17] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
			 Triggered 4x, delta times: 84.17, 105.22, 105.19, 79.40
		[131.11] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22281, Elemental Shield, 0, BUFF, 0
	Stage 2 soon, type=prestage, spellId=<none>, triggerDeltas = 351.31
		[351.31] UNIT_HEALTH: target, 0
	Stage 2, type=stage, spellId=<none>, triggerDeltas = 361.05
		[361.05] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Enrage] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23537, Enrage, 0, BUFF, 0
	Brood Affliction: Blue, type=spell, spellId=23153, triggerDeltas = 58.26, 8.07, 16.22, 24.27, 8.11, 16.18, 25.87, 16.19, 24.30, 8.10, 123.06, 16.20, 8.10
		[ 58.26] SPELL_AURA_APPLIED: [Chromaggus->Dps1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
			 Triggered 2x, delta times: 58.26, 270.37
		[ 66.33] SPELL_AURA_APPLIED: [Chromaggus->Dps14: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000019, Dps14, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.33, 286.60
		[ 82.55] SPELL_AURA_APPLIED: [Chromaggus->Healer2: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
			 Triggered 2x, delta times: 82.55, 114.92
		[106.82] SPELL_AURA_APPLIED: [Chromaggus->Dps11: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000016, Dps11, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		[114.93] SPELL_AURA_APPLIED: [Chromaggus->Tank1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000012, Tank1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		[131.11] SPELL_AURA_APPLIED: [Chromaggus->Healer3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		[156.98] SPELL_AURA_APPLIED: [Chromaggus->Dps12: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000017, Dps12, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		[173.17] SPELL_AURA_APPLIED: [Chromaggus->Dps5: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		[205.57] SPELL_AURA_APPLIED: [Chromaggus->Dps3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000004, Dps3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		[344.83] SPELL_AURA_APPLIED: [Chromaggus->Dps10: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000014, Dps10, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
	Brood Affliction: Black, type=spell, spellId=23154, triggerDeltas = 8.08, 8.10, 17.78, 40.48, 64.74, 25.90, 131.13, 72.93, 8.09
		[  8.08] SPELL_AURA_APPLIED: [Chromaggus->Dps14: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000019, Dps14, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		[ 16.18] SPELL_AURA_APPLIED: [Chromaggus->Healer1: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		[ 33.96] SPELL_AURA_APPLIED: [Chromaggus->Dps1: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		[ 74.44] SPELL_AURA_APPLIED: [Chromaggus->Healer5: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000020, Healer5, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		[139.18] SPELL_AURA_APPLIED: [Chromaggus->Healer3: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		[165.08] SPELL_AURA_APPLIED: [Chromaggus->Dps2: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		[296.21] SPELL_AURA_APPLIED: [Chromaggus->Dps13: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000018, Dps13, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		[369.14] SPELL_AURA_APPLIED: [Chromaggus->Dps9: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000013, Dps9, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		[377.23] SPELL_AURA_APPLIED: [Chromaggus->Dps4: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
	Brood Affliction: Red, type=spell, spellId=23155, triggerDeltas = 24.27, 66.37, 8.10, 48.51, 98.79, 33.99, 113.33, 9.67
		[ 24.27] SPELL_AURA_APPLIED: [Chromaggus->Dps11: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000016, Dps11, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		[ 90.64] SPELL_AURA_APPLIED: [Chromaggus->Dps13: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000018, Dps13, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		[ 98.74] SPELL_AURA_APPLIED: [Chromaggus->Healer1: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		[147.25] SPELL_AURA_APPLIED: [Chromaggus->Healer4: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000015, Healer4, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		[246.04] SPELL_AURA_APPLIED: [Chromaggus->Dps7: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000010, Dps7, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		[280.03] SPELL_AURA_APPLIED: [Chromaggus->Dps5: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		[393.36] SPELL_AURA_APPLIED: [Chromaggus->Healer5: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000020, Healer5, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		[403.03] SPELL_AURA_APPLIED: [Chromaggus->Healer3: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
	Brood Affliction: Green, type=spell, spellId=23169, triggerDeltas = 50.15, 131.12, 32.40, 8.08, 8.07, 8.11, 50.18, 24.34
		[ 50.15] SPELL_AURA_APPLIED: [Chromaggus->Dps2: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
			 Triggered 2x, delta times: 50.15, 179.67
		[181.27] SPELL_AURA_APPLIED: [Chromaggus->Dps10: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000014, Dps10, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		[213.67] SPELL_AURA_APPLIED: [Chromaggus->Healer3: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		[221.75] SPELL_AURA_APPLIED: [Chromaggus->Healer1: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		[237.93] SPELL_AURA_APPLIED: [Chromaggus->Dps1: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		[288.11] SPELL_AURA_APPLIED: [Chromaggus->Dps9: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000013, Dps9, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		[312.45] SPELL_AURA_APPLIED: [Chromaggus->Dps14: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000019, Dps14, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
	Chromatic Mutation (%s), type=count, spellId=23174, triggerDeltas = 270.34
		[270.34] SPELL_AURA_APPLIED: [Chromaggus->Healer2: Brood Affliction: Bronze] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23170, Brood Affliction: Bronze, 0, DEBUFF, 0
	Blue Bomb on >%s<, type=target, spellId=466357, triggerDeltas = 38.43, 47.36, 47.32, 47.35, 47.36, 47.37, 47.39, 47.38
		[ 38.43] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps10: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000014, Dps10, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 85.79] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps12: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000017, Dps12, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[133.11] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Healer1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[180.46] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps5: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Dps5, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[227.82] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 2x, delta times: 227.82, 47.37
		[322.58] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer5: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000020, Healer5, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[369.96] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000015, Healer4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
	Green Bomb on >%s<, type=target, spellId=466435, triggerDeltas = 38.43, 47.36, 47.32, 47.35, 47.36, 47.37, 47.39, 47.38
		[ 38.43] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps10: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000014, Dps10, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[ 85.79] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps12: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000017, Dps12, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[133.11] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Healer1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[180.46] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps5: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Dps5, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[227.82] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 2x, delta times: 227.82, 47.37
		[322.58] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer5: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000020, Healer5, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[369.96] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000015, Healer4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0

Special warnings:
	Frenzy on >%s< - dispel now, type=dispel, spellId=23128, triggerDeltas = 16.18, 17.78, 16.19, 16.18, 16.22, 16.18, 16.18, 16.20, 16.14, 16.20, 16.18, 16.21, 16.21, 16.15, 16.22, 16.19, 16.18, 16.16, 17.87, 16.19, 16.21, 16.20, 16.17, 16.13, 16.15
		[ 16.18] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
			 Triggered 25x, delta times: 16.18, 17.78, 16.19, 16.18, 16.22, 16.18, 16.18, 16.20, 16.14, 16.20, 16.18, 16.21, 16.21, 16.15, 16.22, 16.19, 16.18, 16.16, 17.87, 16.19, 16.21, 16.20, 16.17, 16.13, 16.15
	Brood Affliction: Bronze on you, type=you, spellId=23170, triggerDeltas = 42.06, 228.28
		[ 42.06] SPELL_AURA_APPLIED: [Chromaggus->Healer2: Brood Affliction: Bronze] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23170, Brood Affliction: Bronze, 0, DEBUFF, 0
			 Triggered 2x, delta times: 42.06, 228.28

Yells:
	None

Voice pack sounds:
	VoicePack/enrage
		[ 16.18] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
			 Triggered 25x, delta times: 16.18, 17.78, 16.19, 16.18, 16.22, 16.18, 16.18, 16.20, 16.14, 16.20, 16.18, 16.21, 16.21, 16.15, 16.22, 16.19, 16.18, 16.16, 17.87, 16.19, 16.21, 16.20, 16.17, 16.13, 16.15
	VoicePack/useitem
		[ 42.06] SPELL_AURA_APPLIED: [Chromaggus->Healer2: Brood Affliction: Bronze] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23170, Brood Affliction: Bronze, 0, DEBUFF, 0
			 Triggered 2x, delta times: 42.06, 228.28

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 616, Chromaggus, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 23308 23309 23313 23314 23187 23189 23315 23316 23310 23312, SPELL_AURA_APPLIED 23155 23169 23153 23154 23170 23128 23537 22277 22278 22279 22280 22281, SPELL_AURA_REMOVED 23155 23169 23153 23154 23170 23128, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus, CHAT_MSG_MONSTER_EMOTE
		StartTimer: 30.0, First Breath CD
		StartTimer: 60.0, Second Breath CD
	[  8.08] SPELL_AURA_APPLIED: [Chromaggus->Dps14: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000019, Dps14, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 3x SPELL_AURA_REMOVED at 9.65, 10.14, 10.57
			Filtered: 5x SPELL_AURA_APPLIED at 8.08, 8.08, 8.08, 8.08, 8.09
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[ 11.50] SPELL_AURA_REMOVED: [Chromaggus->Healer4: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000015, Healer4, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 2x SPELL_AURA_REMOVED at 12.07, 13.02
	[ 16.18] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[ 16.18] SPELL_AURA_APPLIED: [Chromaggus->Healer1: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 4x SPELL_AURA_REMOVED at 17.73, 17.76, 18.13, 18.96
			Filtered: 6x SPELL_AURA_APPLIED at 16.18, 16.18, 16.18, 16.18, 16.18, 16.18
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[ 19.28] SPELL_AURA_REMOVED: [Chromaggus->Dps12: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000017, Dps12, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 2x SPELL_AURA_REMOVED at 19.63, 20.29
	[ 19.42] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22278, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 1, 1
		SetTimerProperty: TimerVulnCD, Icon, 135846
		SetTimerProperty: TimerVulnCD, Name, Frost
		ShowAnnounce: Frost Vulnerability
	[ 19.52] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[ 24.27] SPELL_AURA_APPLIED: [Chromaggus->Dps11: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000016, Dps11, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 4x SPELL_AURA_APPLIED at 24.27, 24.27, 24.27, 24.27
		AntiSpam: 3
		ShowAnnounce: Brood Affliction: Red
	[ 30.74] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
	[ 33.96] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[ 33.96] SPELL_AURA_APPLIED: [Chromaggus->Dps1: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 3x SPELL_AURA_REMOVED at 35.59, 35.69, 36.11
			Filtered: 4x SPELL_AURA_APPLIED at 33.96, 33.96, 33.97, 33.97
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[ 37.19] SPELL_AURA_REMOVED: [Chromaggus->Dps1: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 1x SPELL_AURA_REMOVED at 37.41
	[ 38.43] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps10: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000014, Dps10, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps7
		ShowAnnounce: Green Bomb on Dps10
		StartTimer: 47.4, Bombs
	[ 42.05] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22280, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.30196078431373, 1, 0.30196078431373
		SetTimerProperty: TimerVulnCD, Icon, 136006
		SetTimerProperty: TimerVulnCD, Name, Nature
		ShowAnnounce: Nature Vulnerability
	[ 42.06] SPELL_AURA_APPLIED: [Chromaggus->Healer2: Brood Affliction: Bronze] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23170, Brood Affliction: Bronze, 0, DEBUFF, 0
		ShowSpecialWarning: Brood Affliction: Bronze on you
		PlaySound: VoicePack/useitem
	[ 50.15] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[ 50.15] SPELL_AURA_APPLIED: [Chromaggus->Dps2: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_REMOVED at 51.69
			Filtered: 5x SPELL_AURA_APPLIED at 50.15, 50.15, 50.15, 50.15, 50.15
		AntiSpam: 4
		ShowAnnounce: Brood Affliction: Green
	[ 51.94] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[ 53.87] SPELL_AURA_REMOVED: [Chromaggus->Dps13: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000018, Dps13, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_REMOVED at 55.38
	[ 57.16] SPELL_AURA_REMOVED: [Chromaggus->Dps2: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[ 58.26] SPELL_AURA_APPLIED: [Chromaggus->Dps1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 61.11
			Filtered: 4x SPELL_AURA_APPLIED at 58.26, 58.26, 58.26, 58.26
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[ 61.30] SPELL_AURA_REMOVED: [Chromaggus->Dps12: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000017, Dps12, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[ 61.46] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
		ShowAnnounce: Ignite Flesh
		StartTimer: 2.0, Ignite Flesh cast
		StartTimer: 60.0, Ignite Flesh CD
	[ 62.61] SPELL_AURA_REMOVED: [Chromaggus->Dps5: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 64.12
	[ 64.70] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22277, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 1, 0.50196078431373, 0
		SetTimerProperty: TimerVulnCD, Icon, 135808
		SetTimerProperty: TimerVulnCD, Name, Fire
		ShowAnnounce: Fire Vulnerability
	[ 66.33] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[ 66.33] SPELL_AURA_APPLIED: [Chromaggus->Dps14: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000019, Dps14, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_APPLIED at 66.34
			Filtered: 2x SPELL_AURA_REMOVED at 66.43, 68.3
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[ 69.80] SPELL_AURA_REMOVED: [Chromaggus->Dps4: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
	[ 72.34] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[ 74.44] SPELL_AURA_APPLIED: [Chromaggus->Healer5: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000020, Healer5, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 1x SPELL_AURA_REMOVED at 76.26
			Filtered: 6x SPELL_AURA_APPLIED at 74.44, 74.44, 74.44, 74.44, 74.44, 74.44
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[ 77.76] SPELL_AURA_REMOVED: [Chromaggus->Dps9: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000013, Dps9, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 5x SPELL_AURA_REMOVED at 78.08, 78.49, 79.36, 79.59, 80
	[ 82.55] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[ 82.55] SPELL_AURA_APPLIED: [Chromaggus->Healer2: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 85.21
			Filtered: 3x SPELL_AURA_APPLIED at 82.55, 82.55, 82.55
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[ 84.17] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 0.50196078431373, 1
		SetTimerProperty: TimerVulnCD, Icon, 136197
		SetTimerProperty: TimerVulnCD, Name, Shadow
		ShowAnnounce: Shadow Vulnerability
	[ 85.52] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[ 85.79] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps12: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000017, Dps12, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps4
		ShowAnnounce: Green Bomb on Dps12
		StartTimer: 47.4, Bombs
	[ 90.64] SPELL_AURA_APPLIED: [Chromaggus->Dps13: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000018, Dps13, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 5x SPELL_AURA_APPLIED at 90.64, 90.64, 90.64, 90.64, 90.64
		AntiSpam: 3
		ShowAnnounce: Brood Affliction: Red
	[ 92.24] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
	[ 98.73] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[ 98.74] SPELL_AURA_APPLIED: [Chromaggus->Healer1: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 4x SPELL_AURA_APPLIED at 98.74, 98.74, 98.74, 98.74
		AntiSpam: 3
		ShowAnnounce: Brood Affliction: Red
	[102.23] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[106.82] SPELL_AURA_APPLIED: [Chromaggus->Dps11: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000016, Dps11, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 106.92
			Filtered: 4x SPELL_AURA_APPLIED at 106.82, 106.82, 106.82, 106.82
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[107.30] SPELL_AURA_REMOVED: [Chromaggus->Dps1: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[108.44] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22278, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 1, 1
		SetTimerProperty: TimerVulnCD, Icon, 135846
		SetTimerProperty: TimerVulnCD, Name, Frost
		ShowAnnounce: Frost Vulnerability
	[109.92] SPELL_AURA_REMOVED: [Chromaggus->Healer1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
	[114.91] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[114.93] SPELL_AURA_APPLIED: [Chromaggus->Tank1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000012, Tank1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 2x SPELL_AURA_APPLIED at 114.93, 114.93
			Filtered: 2x SPELL_AURA_REMOVED at 114.93, 116.44
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[116.91] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[117.94] SPELL_AURA_REMOVED: [Chromaggus->Dps5: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 119.46
	[120.96] SPELL_AURA_REMOVED: [Chromaggus->Dps11: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000016, Dps11, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 122.46
	[123.02] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
		ShowAnnounce: Ignite Flesh
		StartTimer: 2.0, Ignite Flesh cast
		StartTimer: 60.0, Ignite Flesh CD
	[123.97] SPELL_AURA_REMOVED: [Chromaggus->Tank1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000012, Tank1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 126.53
	[128.04] SPELL_AURA_REMOVED: [Chromaggus->Healer3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
	[131.11] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22281, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 1, 0.50196078431373, 1
		SetTimerProperty: TimerVulnCD, Icon, 136096
		SetTimerProperty: TimerVulnCD, Name, Arcane
		ShowAnnounce: Arcane Vulnerability
	[131.11] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[131.11] SPELL_AURA_APPLIED: [Chromaggus->Healer3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 131.36
			Filtered: 3x SPELL_AURA_APPLIED at 131.11, 131.11, 131.11
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[133.11] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000002, Healer1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Healer5
		ShowAnnounce: Green Bomb on Healer1
		StartTimer: 47.4, Bombs
	[133.67] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[139.18] SPELL_AURA_APPLIED: [Chromaggus->Healer3: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 3x SPELL_AURA_APPLIED at 139.18, 139.18, 139.18
			Filtered: 3x SPELL_AURA_REMOVED at 141, 141.58, 141.8
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[145.79] SPELL_AURA_REMOVED: [Chromaggus->Dps1: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
	[147.25] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[147.25] SPELL_AURA_APPLIED: [Chromaggus->Healer4: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000015, Healer4, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 4x SPELL_AURA_APPLIED at 147.27, 147.27, 147.27, 147.27
		AntiSpam: 3
		ShowAnnounce: Brood Affliction: Red
	[149.47] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[152.11] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22280, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.30196078431373, 1, 0.30196078431373
		SetTimerProperty: TimerVulnCD, Icon, 136006
		SetTimerProperty: TimerVulnCD, Name, Nature
		ShowAnnounce: Nature Vulnerability
	[152.96] SPELL_AURA_REMOVED: [Chromaggus->Dps2: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 154.46
	[153.74] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
	[156.98] SPELL_AURA_APPLIED: [Chromaggus->Dps12: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000017, Dps12, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 3x SPELL_AURA_APPLIED at 156.98, 156.98, 156.98
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[163.45] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[165.08] SPELL_AURA_APPLIED: [Chromaggus->Dps2: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 2x SPELL_AURA_REMOVED at 167.37, 167.45
			Filtered: 5x SPELL_AURA_APPLIED at 165.08, 165.08, 165.08, 165.08, 165.08
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[165.62] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[166.05] SPELL_AURA_REMOVED: [Chromaggus->Dps11: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000016, Dps11, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 167.55
	[168.87] SPELL_AURA_REMOVED: [Chromaggus->Dps10: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000014, Dps10, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 2x SPELL_AURA_REMOVED at 170.37, 171.44
	[169.05] SPELL_AURA_REMOVED: [Chromaggus->Healer3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 170.56
	[172.92] SPELL_AURA_REMOVED: [Chromaggus->Dps12: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000017, Dps12, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
	[173.16] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22278, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 1, 1
		SetTimerProperty: TimerVulnCD, Icon, 135846
		SetTimerProperty: TimerVulnCD, Name, Frost
		ShowAnnounce: Frost Vulnerability
	[173.17] SPELL_AURA_APPLIED: [Chromaggus->Dps5: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 175.28
			Filtered: 5x SPELL_AURA_APPLIED at 173.17, 173.17, 173.17, 173.17, 173.17
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[176.78] SPELL_AURA_REMOVED: [Chromaggus->Dps3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000004, Dps3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 178.28
	[179.63] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[179.78] SPELL_AURA_REMOVED: [Chromaggus->Dps12: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000017, Dps12, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 181.29
	[180.46] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps5: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Dps5, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps9
		ShowAnnounce: Green Bomb on Dps5
		StartTimer: 47.4, Bombs
	[180.56] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[181.27] SPELL_AURA_APPLIED: [Chromaggus->Dps10: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000014, Dps10, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_REMOVED at 183.2
			Filtered: 4x SPELL_AURA_APPLIED at 181.27, 181.27, 181.27, 181.27
		AntiSpam: 4
		ShowAnnounce: Brood Affliction: Green
	[182.78] SPELL_AURA_REMOVED: [Chromaggus->Dps4: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
	[184.52] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
		ShowAnnounce: Ignite Flesh
		StartTimer: 2.0, Ignite Flesh cast
		StartTimer: 60.0, Ignite Flesh CD
	[187.30] SPELL_AURA_REMOVED: [Chromaggus->Dps11: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000016, Dps11, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 188.8
	[189.39] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 0.50196078431373, 1
		SetTimerProperty: TimerVulnCD, Icon, 136197
		SetTimerProperty: TimerVulnCD, Name, Shadow
		ShowAnnounce: Shadow Vulnerability
	[194.07] SPELL_AURA_REMOVED: [Chromaggus->Dps5: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_REMOVED at 196.34
	[195.84] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[197.47] SPELL_AURA_APPLIED: [Chromaggus->Healer2: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 5x SPELL_AURA_APPLIED at 197.47, 197.47, 197.47, 197.47, 197.47
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[198.97] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[200.64] SPELL_AURA_REMOVED: [Chromaggus->Dps9: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000013, Dps9, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[202.50] SPELL_AURA_REMOVED: [Chromaggus->Healer1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 204.02
	[205.57] SPELL_AURA_APPLIED: [Chromaggus->Dps3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000004, Dps3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 208.45
			Filtered: 2x SPELL_AURA_APPLIED at 205.57, 205.57
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[208.80] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 0.50196078431373, 1
		SetTimerProperty: TimerVulnCD, Icon, 136197
		SetTimerProperty: TimerVulnCD, Name, Shadow
	[212.05] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[213.67] SPELL_AURA_APPLIED: [Chromaggus->Healer3: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 2x SPELL_AURA_REMOVED at 216.13, 216.54
			Filtered: 4x SPELL_AURA_APPLIED at 213.67, 213.67, 213.67, 213.67
		AntiSpam: 4
		ShowAnnounce: Brood Affliction: Green
	[214.73] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[215.29] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
	[216.13] SPELL_AURA_REMOVED: [Chromaggus->Dps4: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
	[216.85] SPELL_AURA_REMOVED: [Chromaggus->Dps10: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000014, Dps10, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 3x SPELL_AURA_REMOVED at 216.85, 217.63, 219.13
	[221.75] SPELL_AURA_APPLIED: [Chromaggus->Healer1: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 3x SPELL_AURA_REMOVED at 221.86, 221.86, 222.13
			Filtered: 5x SPELL_AURA_APPLIED at 221.75, 221.75, 221.75, 221.75, 221.75
		AntiSpam: 4
		ShowAnnounce: Brood Affliction: Green
	[225.48] SPELL_AURA_REMOVED: [Chromaggus->Dps13: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000018, Dps13, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 226.97
	[226.05] SPELL_AURA_REMOVED: [Chromaggus->Healer1: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000002, Healer1, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 2x SPELL_AURA_REMOVED at 227.02, 228.9
	[227.82] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps11
		ShowAnnounce: Green Bomb on Dps1
		StartTimer: 47.4, Bombs
	[228.20] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 0.50196078431373, 1
		SetTimerProperty: TimerVulnCD, Icon, 136197
		SetTimerProperty: TimerVulnCD, Name, Shadow
	[228.20] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[228.49] SPELL_AURA_REMOVED: [Chromaggus->Dps5: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
	[229.82] SPELL_AURA_APPLIED: [Chromaggus->Dps2: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_REMOVED at 231.87
			Filtered: 5x SPELL_AURA_APPLIED at 229.82, 229.82, 229.83, 229.83, 229.83
		AntiSpam: 4
		ShowAnnounce: Brood Affliction: Green
	[230.57] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[233.62] SPELL_AURA_REMOVED: [Chromaggus->Healer4: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000015, Healer4, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[234.51] SPELL_AURA_REMOVED: [Chromaggus->Dps3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000004, Dps3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
	[237.93] SPELL_AURA_APPLIED: [Chromaggus->Dps1: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 3x SPELL_AURA_REMOVED at 238.25, 239.64, 240.03
			Filtered: 4x SPELL_AURA_APPLIED at 237.93, 237.93, 237.93, 237.93
		AntiSpam: 4
		ShowAnnounce: Brood Affliction: Green
	[241.83] SPELL_AURA_REMOVED: [Chromaggus->Dps13: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000018, Dps13, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 2x SPELL_AURA_REMOVED at 243.33, 244.7
	[244.42] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[244.85] SPELL_AURA_REMOVED: [Chromaggus->Tank1: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000012, Tank1, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[246.04] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
		ShowAnnounce: Ignite Flesh
		StartTimer: 2.0, Ignite Flesh cast
		StartTimer: 60.0, Ignite Flesh CD
	[246.04] SPELL_AURA_APPLIED: [Chromaggus->Dps7: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000010, Dps7, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 5x SPELL_AURA_APPLIED at 246.04, 246.04, 246.04, 246.04, 246.04
		AntiSpam: 3
		ShowAnnounce: Brood Affliction: Red
	[246.85] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[248.60] SPELL_AURA_REMOVED: [Chromaggus->Dps3: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000004, Dps3, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[253.16] SPELL_AURA_REMOVED: [Chromaggus->Dps2: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[253.66] SPELL_AURA_REMOVED: [Chromaggus->Dps10: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000014, Dps10, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_APPLIED at 254.13
	[254.12] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 0.50196078431373, 1
		SetTimerProperty: TimerVulnCD, Icon, 136197
		SetTimerProperty: TimerVulnCD, Name, Shadow
	[254.13] SPELL_AURA_APPLIED: [Chromaggus->Dps4: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 6x SPELL_AURA_APPLIED at 254.13, 254.13, 254.13, 254.13, 254.13, 254.13
	[260.61] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[263.08] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[270.34] SPELL_AURA_APPLIED: [Chromaggus->Healer2: Brood Affliction: Bronze] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23170, Brood Affliction: Bronze, 0, DEBUFF, 0
		ShowSpecialWarning: Brood Affliction: Bronze on you
		PlaySound: VoicePack/useitem
		ShowAnnounce: Chromatic Mutation (3/5)
	[273.58] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22278, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 1, 1
		SetTimerProperty: TimerVulnCD, Icon, 135846
		SetTimerProperty: TimerVulnCD, Name, Frost
		ShowAnnounce: Frost Vulnerability
	[275.19] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps3
		ShowAnnounce: Green Bomb on Dps1
		StartTimer: 47.4, Bombs
	[276.79] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[276.80] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
	[279.48] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[280.03] SPELL_AURA_APPLIED: [Chromaggus->Dps5: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 4x SPELL_AURA_APPLIED at 280.03, 280.03, 280.03, 280.03
		AntiSpam: 3
		ShowAnnounce: Brood Affliction: Red
	[288.11] SPELL_AURA_APPLIED: [Chromaggus->Dps9: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000013, Dps9, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 2x SPELL_AURA_REMOVED at 290.24, 290.94
			Filtered: 4x SPELL_AURA_APPLIED at 288.11, 288.11, 288.11, 288.11
		AntiSpam: 4
		ShowAnnounce: Brood Affliction: Green
	[292.04] SPELL_AURA_REMOVED: [Chromaggus->Dps4: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_REMOVED at 293.54
	[292.95] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[294.58] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 0.50196078431373, 1
		SetTimerProperty: TimerVulnCD, Icon, 136197
		SetTimerProperty: TimerVulnCD, Name, Shadow
		ShowAnnounce: Shadow Vulnerability
	[296.21] SPELL_AURA_APPLIED: [Chromaggus->Dps13: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000018, Dps13, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 2x SPELL_AURA_REMOVED at 297.59, 298.9
			Filtered: 4x SPELL_AURA_APPLIED at 296.21, 296.21, 296.21, 296.21
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[296.27] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[299.16] SPELL_AURA_REMOVED: [Chromaggus->Dps4: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 2x SPELL_AURA_REMOVED at 299.92, 300.53
	[303.15] SPELL_AURA_REMOVED: [Chromaggus->Dps9: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000013, Dps9, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[307.57] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
		ShowAnnounce: Ignite Flesh
		StartTimer: 2.0, Ignite Flesh cast
		StartTimer: 60.0, Ignite Flesh CD
	[310.82] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[312.45] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22278, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 1, 1
		SetTimerProperty: TimerVulnCD, Icon, 135846
		SetTimerProperty: TimerVulnCD, Name, Frost
		ShowAnnounce: Frost Vulnerability
	[312.45] SPELL_AURA_APPLIED: [Chromaggus->Dps14: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000019, Dps14, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_REMOVED at 313.88
			Filtered: 4x SPELL_AURA_APPLIED at 312.45, 312.45, 312.45, 312.45
		AntiSpam: 4
		ShowAnnounce: Brood Affliction: Green
	[314.58] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[315.94] SPELL_AURA_REMOVED: [Chromaggus->Healer5: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000020, Healer5, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 2x SPELL_AURA_REMOVED at 315.94, 316.29
	[320.47] SPELL_AURA_REMOVED: [Chromaggus->Dps6: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000007, Dps6, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 3x SPELL_AURA_REMOVED at 320.97, 320.97, 321.89
			Filtered: 6x SPELL_AURA_APPLIED at 320.55, 320.55, 320.55, 320.55, 320.55, 320.55
	[322.58] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer5: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000020, Healer5, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps3
		ShowAnnounce: Green Bomb on Healer5
		StartTimer: 47.4, Bombs
	[324.57] SPELL_AURA_REMOVED: [Chromaggus->Dps4: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_REMOVED at 326.07
	[327.01] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[327.58] SPELL_AURA_REMOVED: [Chromaggus->Dps13: Brood Affliction: Green] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000018, Dps13, 0x512, 23169, Brood Affliction: Green, 0, DEBUFF, 0
		AntiSpam: 2
	[328.63] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22280, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.30196078431373, 1, 0.30196078431373
		SetTimerProperty: TimerVulnCD, Icon, 136006
		SetTimerProperty: TimerVulnCD, Name, Nature
		ShowAnnounce: Nature Vulnerability
	[328.63] SPELL_AURA_APPLIED: [Chromaggus->Dps1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 330.39
			Filtered: 4x SPELL_AURA_APPLIED at 328.63, 328.63, 328.63, 328.63
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[329.54] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[333.41] SPELL_AURA_REMOVED: [Chromaggus->Dps1: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000001, Dps1, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 334.94
	[336.41] SPELL_AURA_REMOVED: [Chromaggus->Healer5: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000020, Healer5, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 337.92
	[338.36] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
	[343.22] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[344.83] SPELL_AURA_APPLIED: [Chromaggus->Dps10: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000014, Dps10, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 5x SPELL_AURA_APPLIED at 344.85, 344.85, 344.85, 344.85, 344.85
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[349.74] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[351.31] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22277, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 1, 0.50196078431373, 0
		SetTimerProperty: TimerVulnCD, Icon, 135808
		SetTimerProperty: TimerVulnCD, Name, Fire
		ShowAnnounce: Fire Vulnerability
	[351.31] UNIT_HEALTH: target, 0
		ShowAnnounce: Stage 2 soon
	[352.93] SPELL_AURA_APPLIED: [Chromaggus->Dps14: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000019, Dps14, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 5x SPELL_AURA_APPLIED at 352.94, 352.94, 352.94, 352.94, 352.94
		AntiSpam: 5
		ShowAnnounce: Brood Affliction: Blue
	[359.38] SPELL_AURA_REMOVED: [Chromaggus->Healer2: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000008, Healer2, 0x511, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 360.88
			Filtered: 2x SPELL_AURA_APPLIED at 361.05, 361.05
	[359.42] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[361.05] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Enrage] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23537, Enrage, 0, BUFF, 0
		ShowAnnounce: Stage 2
	[362.40] SPELL_AURA_REMOVED: [Chromaggus->Dps2: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000003, Dps2, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 363.89
	[365.39] SPELL_AURA_REMOVED: [Chromaggus->Healer3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 366.9
	[369.14] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
		ShowAnnounce: Ignite Flesh
		StartTimer: 2.0, Ignite Flesh cast
		StartTimer: 60.0, Ignite Flesh CD
	[369.14] SPELL_AURA_APPLIED: [Chromaggus->Dps9: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000013, Dps9, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 5x SPELL_AURA_APPLIED at 369.14, 369.14, 369.14, 369.14, 369.14
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[369.21] SPELL_AURA_REMOVED: [Chromaggus->Dps5: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000006, Dps5, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 370.71
	[369.96] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Healer4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000015, Healer4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps3
		ShowAnnounce: Green Bomb on Healer4
		StartTimer: 47.4, Bombs
	[372.90] SPELL_AURA_REMOVED: [Chromaggus->Dps3: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000004, Dps3, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 374.39
	[373.98] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22279, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.50196078431373, 0.50196078431373, 1
		SetTimerProperty: TimerVulnCD, Icon, 136197
		SetTimerProperty: TimerVulnCD, Name, Shadow
		ShowAnnounce: Shadow Vulnerability
	[374.26] SPELL_AURA_REMOVED: [Chromaggus->Healer4: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000015, Healer4, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 1x SPELL_AURA_REMOVED at 375.09
	[375.59] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[376.49] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[377.23] SPELL_AURA_APPLIED: [Chromaggus->Dps4: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000005, Dps4, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 2x SPELL_AURA_APPLIED at 377.23, 377.23
			Filtered: 2x SPELL_AURA_REMOVED at 378.11, 379.62
		AntiSpam: 6
		ShowAnnounce: Brood Affliction: Black
	[380.43] SPELL_AURA_REMOVED: [Chromaggus->Dps14: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000019, Dps14, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 381.94
	[380.88] SPELL_AURA_REMOVED: [Chromaggus->Dps6: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000007, Dps6, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 1x SPELL_AURA_REMOVED at 380.92
	[383.45] SPELL_AURA_REMOVED: [Chromaggus->Dps12: Brood Affliction: Blue] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000017, Dps12, 0x512, 23153, Brood Affliction: Blue, 0, DEBUFF, 0
		AntiSpam: 3
			Filtered: 1x SPELL_AURA_REMOVED at 384.95
	[389.41] SPELL_AURA_REMOVED: [Chromaggus->Dps12: Brood Affliction: Black] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000017, Dps12, 0x512, 23154, Brood Affliction: Black, 0, DEBUFF, 0
		AntiSpam: 4
			Filtered: 2x SPELL_AURA_REMOVED at 390.91, 392.26
	[391.72] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[393.36] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Elemental Shield] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 22280, Elemental Shield, 0, BUFF, 0
		StartTimer: 19.5, Vulnerability CD
		SetTimerProperty: TimerVulnCD, Color, 0.30196078431373, 1, 0.30196078431373
		SetTimerProperty: TimerVulnCD, Icon, 136006
		SetTimerProperty: TimerVulnCD, Name, Nature
		ShowAnnounce: Nature Vulnerability
	[393.36] SPELL_AURA_APPLIED: [Chromaggus->Healer5: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000020, Healer5, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 5x SPELL_AURA_APPLIED at 393.36, 393.36, 393.36, 393.36, 393.36
		AntiSpam: 3
		ShowAnnounce: Brood Affliction: Red
	[393.60] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[399.80] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23312, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
	[403.03] SPELL_AURA_APPLIED: [Chromaggus->Healer3: Brood Affliction: Red] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Player-1-00000009, Healer3, 0x512, 23155, Brood Affliction: Red, 0, DEBUFF, 0
		AntiSpam: 1
			Filtered: 6x SPELL_AURA_APPLIED at 403.03, 403.03, 403.03, 403.03, 403.03, 403.03
		AntiSpam: 3
		ShowAnnounce: Brood Affliction: Red
	[407.87] SPELL_AURA_APPLIED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Chromaggus - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[410.06] SPELL_AURA_REMOVED: [Chromaggus->Chromaggus: Frenzy] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, 23128, Frenzy, 0, BUFF, 0
		StopTimer: Timer23128active3
	[410.09] ENCOUNTER_END: 616, Chromaggus, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 23155 23169 23153 23154 23170 23128
]]
