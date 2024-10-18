DBM.Test:Report[[
Test: SoD/BWL/EbonrocFlamegor/BlueGreenBronze/Kill
Mod:  DBM-Raids-Vanilla/EbonrocandFlamegor

Findings:
	Unused event registration: SPELL_AURA_APPLIED 368515 (Brand of Shadow)
	Unused event registration: SPELL_AURA_APPLIED 368521 (Brand of Flame)
	Unused event registration: SPELL_AURA_APPLIED 467732 (Stop!)
	Unused event registration: SPELL_AURA_APPLIED 467764 (Go!)
	Unused event registration: SPELL_AURA_REMOVED 23340 (Shadow of Ebonroc)
	Unused event registration: SPELL_CAST_START 22539 (Shadow Flame)
	Announce for spell ID 368941 (Wing Buffet) is triggered by event SPELL_CAST_SUCCESS 369103 (Wing Buffet)
	Timer for spell ID 368941 (Wing Buffet) is triggered by event SPELL_CAST_SUCCESS 369103 (Wing Buffet)
	Announce for spell ID 466357 (Arcane Bomb) is triggered by event SPELL_AURA_APPLIED 466435 (Nature's Fury)
	SpecialWarning for spell ID 466357 (Arcane Bomb) is triggered by event SPELL_AURA_APPLIED 466435 (Nature's Fury)
	Yell for spell ID 466357 (Arcane Bomb) is triggered by event SPELL_AURA_APPLIED 466435 (Nature's Fury)

Unused objects:
	[Announce] Casting Shadow Flame: 2.0 sec, type=cast, spellId=22539
	[Announce] Shadow of Ebonroc on >%s<, type=target, spellId=23340
	[Announce] Frenzy, type=spell, spellId=23342
	[Special Warning] Shadow of Ebonroc on you, type=you, spellId=23340
	[Special Warning] Stop!!, type=spell, spellId=467732
	[Special Warning] Go!!, type=spell, spellId=467764
	[Timer] Stop!, time=20.00, type=cd, spellId=467732
	[Timer] Go!, time=20.00, type=cd, spellId=467764

Timers:
	Bombs, time=47.36, type=cd, spellId=<none>, triggerDeltas = 7.68, 47.38, 47.41, 47.31, 47.31, 47.38, 47.35
		[  7.68] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Tank1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Tank1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 2x, delta times: 7.68, 94.79
		[ 55.06] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps9: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000014, Dps9, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[149.78] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000005, Dps4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[197.09] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[244.47] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps10: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000016, Dps10, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[291.82] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps11: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000017, Dps11, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
	Brand, time=13.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 15.79, 12.96, 17.80, 12.96, 12.98, 12.94, 12.96, 12.93, 12.96, 12.96, 12.93, 12.93, 12.94, 12.93, 12.98, 12.94, 12.98, 12.96, 12.96, 12.94, 12.93, 12.96, 12.95, 12.93
		[  0.00] ENCOUNTER_START: 614, Ebonroc, 186, 40, 0
		[ 15.79] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
			 Triggered 24x, delta times: 15.79, 12.96, 17.80, 12.96, 12.98, 12.94, 12.96, 12.93, 12.96, 12.96, 12.93, 12.93, 12.94, 12.93, 12.98, 12.94, 12.98, 12.96, 12.96, 12.94, 12.93, 12.96, 12.95, 12.93
	Shadow Flame, time=25.00, type=cd, spellId=22539, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 614, Ebonroc, 186, 40, 0
	Shadow of Ebonroc, time=25.00, type=cd, spellId=23340, triggerDeltas = 0.00, 25.50, 22.67, 25.94, 16.19, 24.21, 19.48, 25.89, 25.87, 25.92, 25.91, 51.81, 19.43
		[  0.00] ENCOUNTER_START: 614, Ebonroc, 186, 40, 0
		[ 25.50] SPELL_CAST_SUCCESS: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, 0
			 Triggered 6x, delta times: 25.50, 22.67, 66.34, 19.48, 77.68, 25.91
		[ 74.11] SPELL_CAST_SUCCESS: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, 0
			 Triggered 6x, delta times: 74.11, 16.19, 69.58, 25.87, 103.64, 19.43
	Shadow of Ebonroc: %s, time=8.00, type=target, spellId=23340, triggerDeltas = 25.50, 22.67, 25.94, 16.21, 69.56, 51.79, 25.91, 51.81, 19.43
		[ 25.50] SPELL_AURA_APPLIED: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
			 Triggered 4x, delta times: 25.50, 22.67, 163.50, 25.91
		[ 74.11] SPELL_AURA_APPLIED: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
			 Triggered 5x, delta times: 74.11, 16.21, 69.56, 129.51, 19.43
	Frenzy ends, time=10.00, type=active, spellId=23342, triggerDeltas = 25.50, 22.67, 25.94, 16.21, 24.19, 19.49, 25.88, 25.87, 25.92, 25.91, 25.92, 25.89
		[ 25.50] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
			 Triggered 12x, delta times: 25.50, 22.67, 25.94, 16.21, 24.19, 19.49, 25.88, 25.87, 25.92, 25.91, 25.92, 25.89
		[ 28.07] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
			 Triggered 11x, delta times: 28.07, 29.45, 20.56, 38.33, 20.87, 25.57, 24.84, 25.05, 28.02, 24.93, 27.48
	Frenzy, time=25.00, type=cd, spellId=23342, triggerDeltas = 0.00, 25.50, 22.67, 25.94, 16.21, 24.19, 19.49, 25.88, 25.87, 25.92, 25.91, 25.92, 25.89
		[  0.00] ENCOUNTER_START: 614, Ebonroc, 186, 40, 0
		[ 25.50] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
			 Triggered 12x, delta times: 25.50, 22.67, 25.94, 16.21, 24.19, 19.49, 25.88, 25.87, 25.92, 25.91, 25.92, 25.89
	Wing Buffet, time=25.90, type=next, spellId=368941, triggerDeltas = 0.00, 40.06, 25.95, 25.92, 25.89, 25.88, 25.89, 25.85, 25.96, 25.90, 25.89, 25.91
		[  0.00] ENCOUNTER_START: 614, Ebonroc, 186, 40, 0
		[ 40.06] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
			 Triggered 11x, delta times: 40.06, 25.95, 25.92, 25.89, 25.88, 25.89, 25.85, 25.96, 25.90, 25.89, 25.91

Announces:
	Wing Buffet, type=spell, spellId=368941, triggerDeltas = 40.06, 25.95, 25.92, 25.89, 25.88, 25.89, 25.85, 25.96, 25.90, 25.89, 25.91
		[ 40.06] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
			 Triggered 11x, delta times: 40.06, 25.95, 25.92, 25.89, 25.88, 25.89, 25.85, 25.96, 25.90, 25.89, 25.91
	Blue Bomb on >%s<, type=target, spellId=466357, triggerDeltas = 7.68, 47.38, 47.41, 94.62, 47.38, 47.35
		[  7.68] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Tank1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Tank1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 2x, delta times: 7.68, 94.79
		[ 55.06] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps9: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000014, Dps9, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[197.09] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[244.47] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps10: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000016, Dps10, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[291.82] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps11: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000017, Dps11, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
	Green Bomb on >%s<, type=target, spellId=466435, triggerDeltas = 7.68, 47.38, 47.41, 47.31, 47.31, 47.38, 47.35
		[  7.68] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Tank1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Tank1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
			 Triggered 2x, delta times: 7.68, 94.79
		[ 55.06] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps9: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000014, Dps9, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[149.78] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000005, Dps4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[197.09] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[244.47] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps10: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000016, Dps10, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		[291.82] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps11: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000017, Dps11, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0

Special warnings:
	Shadow of Ebonroc on >%s< - taunt now, type=taunt, spellId=23340, triggerDeltas = 25.50, 22.67, 25.94, 16.21, 69.56, 51.79, 25.91, 51.81, 19.43
		[ 25.50] SPELL_AURA_APPLIED: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
			 Triggered 4x, delta times: 25.50, 22.67, 163.50, 25.91
		[ 74.11] SPELL_AURA_APPLIED: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
			 Triggered 5x, delta times: 74.11, 16.21, 69.56, 129.51, 19.43
	Frenzy on >%s< - dispel now, type=dispel, spellId=23342, triggerDeltas = 25.50, 22.67, 25.94, 16.21, 24.19, 19.49, 25.88, 25.87, 25.92, 25.91, 25.92, 25.89
		[ 25.50] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
			 Triggered 12x, delta times: 25.50, 22.67, 25.94, 16.21, 24.19, 19.49, 25.88, 25.87, 25.92, 25.91, 25.92, 25.89
	%d stacks of Brand of Shadow on you, type=stack, spellId=368515, triggerDeltas = 150.17, 90.66, 12.96, 12.95
		[150.17] SPELL_AURA_APPLIED_DOSE: [Ebonroc->Healer2: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000008, Healer2, 0x511, 368515, Brand of Shadow, 0, DEBUFF, 4, 0
			 Triggered 4x, delta times: 150.17, 90.66, 12.96, 12.95
	%d stacks of Brand of Flame on you, type=stack, spellId=368521, triggerDeltas = 98.42, 90.55, 12.98, 90.69, 12.95
		[ 98.42] SPELL_AURA_APPLIED_DOSE: [Flamegor->Healer2: Brand of Flame] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Player-1-00000008, Healer2, 0x511, 368521, Brand of Flame, 0, DEBUFF, 4, 0
			 Triggered 5x, delta times: 98.42, 90.55, 12.98, 90.69, 12.95
	Wing Buffet soon, type=soon, spellId=368941, triggerDeltas = 36.00, 25.06, 25.95, 25.92, 25.89, 25.88, 25.89, 25.85, 25.96, 25.90, 25.89
		[ 36.00] Scheduled at 0.00 by ENCOUNTER_START: 614, Ebonroc, 186, 40, 0
		[ 61.06] Scheduled at 40.06 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[ 87.01] Scheduled at 66.01 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[112.93] Scheduled at 91.93 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[138.82] Scheduled at 117.82 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[164.70] Scheduled at 143.70 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[190.59] Scheduled at 169.59 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[216.44] Scheduled at 195.44 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[242.40] Scheduled at 221.40 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[268.30] Scheduled at 247.30 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		[294.19] Scheduled at 273.19 by SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
	Blue Bomb on you, type=you, spellId=466357, triggerDeltas = 149.78
		[149.78] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000005, Dps4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0

Yells:
	{rt%2$d}%1$d, type=iconfade, spellId=466357
		Unknown trigger
	{rt%1$d}{rt%1$d}{rt%1$d}, type=icontarget, spellId=466357
		[149.78] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000005, Dps4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0

Voice pack sounds:
	VoicePack/enrage
		[ 25.50] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
			 Triggered 12x, delta times: 25.50, 22.67, 25.94, 16.21, 24.19, 19.49, 25.88, 25.87, 25.92, 25.91, 25.92, 25.89
	VoicePack/gather
		[149.78] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000005, Dps4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
	VoicePack/stackhigh
		[ 98.42] SPELL_AURA_APPLIED_DOSE: [Flamegor->Healer2: Brand of Flame] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Player-1-00000008, Healer2, 0x511, 368521, Brand of Flame, 0, DEBUFF, 4, 0
			 Triggered 5x, delta times: 98.42, 90.55, 12.98, 90.69, 12.95
		[150.17] SPELL_AURA_APPLIED_DOSE: [Ebonroc->Healer2: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000008, Healer2, 0x511, 368515, Brand of Shadow, 0, DEBUFF, 4, 0
			 Triggered 4x, delta times: 150.17, 90.66, 12.96, 12.95
	VoicePack/tauntboss
		[ 25.50] SPELL_AURA_APPLIED: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
			 Triggered 4x, delta times: 25.50, 22.67, 163.50, 25.91
		[ 74.11] SPELL_AURA_APPLIED: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
			 Triggered 5x, delta times: 74.11, 16.21, 69.56, 129.51, 19.43

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 614, Ebonroc, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 22539, SPELL_CAST_SUCCESS 23340 23342 368515 368521 368941 369080 369105 369103, SPELL_AURA_APPLIED 23340 23342 368515 368521 467732 467764, SPELL_AURA_APPLIED_DOSE 368515 368521, SPELL_AURA_REMOVED 23340 23342
		StartTimer: 16.0, Brand
		StartTimer: 29.0, Shadow Flame
		StartTimer: 40.0, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 36.00 (+36.00)
			ShowSpecialWarning: Wing Buffet soon
		StartTimer: 27.0, Shadow of Ebonroc
		StartTimer: 27.0, Frenzy
	[  7.68] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Tank1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Tank1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Tank2
		ShowAnnounce: Green Bomb on Tank1
		StartTimer: 47.4, Bombs
	[ 15.79] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 15.79
		StartTimer: 13.0, Brand
	[ 25.50] SPELL_CAST_SUCCESS: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[ 25.50] SPELL_AURA_APPLIED: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank2 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank2
	[ 25.50] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[ 25.50] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[ 28.07] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[ 28.75] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 28.75
		StartTimer: 13.0, Brand
	[ 40.06] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 40.07, 42.56, 42.56
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 61.06 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[ 46.55] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 46.58
		StartTimer: 13.0, Brand
	[ 48.17] SPELL_CAST_SUCCESS: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[ 48.17] SPELL_AURA_APPLIED: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank2 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank2
	[ 48.17] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[ 48.17] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[ 55.06] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps9: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000014, Dps9, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Healer5
		ShowAnnounce: Green Bomb on Dps9
		StartTimer: 47.4, Bombs
	[ 57.52] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[ 59.51] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 59.51
		StartTimer: 13.0, Brand
	[ 66.01] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 66.01, 68.5, 68.5
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 87.01 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[ 72.49] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 72.49
		StartTimer: 13.0, Brand
	[ 74.11] SPELL_CAST_SUCCESS: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[ 74.11] SPELL_AURA_APPLIED: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank1 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank1
	[ 74.11] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[ 74.11] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[ 78.08] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[ 85.43] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 85.45
		StartTimer: 13.0, Brand
	[ 90.30] SPELL_CAST_SUCCESS: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[ 90.32] SPELL_AURA_APPLIED: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank1 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank1
	[ 90.32] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[ 90.32] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[ 91.93] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 1x SPELL_CAST_SUCCESS at 91.93
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 112.93 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[ 98.39] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 98.41
		StartTimer: 13.0, Brand
	[ 98.42] SPELL_AURA_APPLIED_DOSE: [Flamegor->Healer2: Brand of Flame] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Player-1-00000008, Healer2, 0x511, 368521, Brand of Flame, 0, DEBUFF, 4, 0
		ShowSpecialWarning: 4 stacks of Brand of Flame on you
		PlaySound: VoicePack/stackhigh
	[102.47] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Tank1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000006, Tank1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps8
		ShowAnnounce: Green Bomb on Tank1
		StartTimer: 47.4, Bombs
	[111.32] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 111.34
		StartTimer: 13.0, Brand
	[114.51] SPELL_CAST_SUCCESS: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[114.51] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[114.51] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[116.41] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[117.82] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 1x SPELL_CAST_SUCCESS at 117.82
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 138.82 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[124.28] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 124.31
		StartTimer: 13.0, Brand
	[133.99] SPELL_CAST_SUCCESS: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[134.00] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[134.00] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[137.24] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 137.25
		StartTimer: 13.0, Brand
	[137.28] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[143.70] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 143.71, 146.22, 146.22
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 164.70 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[149.78] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps4: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000005, Dps4, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowYell: {rt6}{rt6}{rt6}
		ShowSpecialWarning: Blue Bomb on you
		PlaySound: VoicePack/gather
		ShowAnnounce: Green Bomb on Dps4
		StartTimer: 47.4, Bombs
	[150.17] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 150.18
		StartTimer: 13.0, Brand
	[150.17] SPELL_AURA_APPLIED_DOSE: [Ebonroc->Healer2: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000008, Healer2, 0x511, 368515, Brand of Shadow, 0, DEBUFF, 4, 0
		ShowSpecialWarning: 4 stacks of Brand of Shadow on you
		PlaySound: VoicePack/stackhigh
	Unknown trigger
		ShowYell: {rt6}4
		ShowYell: {rt6}3
		ShowYell: {rt6}2
		ShowYell: {rt6}1
	[159.88] SPELL_CAST_SUCCESS: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[159.88] SPELL_AURA_APPLIED: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank1 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank1
	[159.88] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[159.88] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[162.85] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[163.10] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 163.12
		StartTimer: 13.0, Brand
	[169.59] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 169.59, 172.1, 172.11
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 190.59 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[176.04] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 176.04
		StartTimer: 13.0, Brand
	[185.75] SPELL_CAST_SUCCESS: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[185.75] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[185.75] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[187.69] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[188.97] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 188.97
		StartTimer: 13.0, Brand
	[188.97] SPELL_AURA_APPLIED_DOSE: [Flamegor->Healer2: Brand of Flame] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Player-1-00000008, Healer2, 0x511, 368521, Brand of Flame, 0, DEBUFF, 4, 0
		ShowSpecialWarning: 4 stacks of Brand of Flame on you
		PlaySound: VoicePack/stackhigh
	[195.44] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 195.45, 197.94, 197.94
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 216.44 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[197.09] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps1: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000001, Dps1, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Healer1
		ShowAnnounce: Green Bomb on Dps1
		StartTimer: 47.4, Bombs
	[201.95] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 201.95
		StartTimer: 13.0, Brand
	[201.95] SPELL_AURA_APPLIED_DOSE: [Flamegor->Healer2: Brand of Flame] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Player-1-00000008, Healer2, 0x511, 368521, Brand of Flame, 0, DEBUFF, 5, 0
		ShowSpecialWarning: 5 stacks of Brand of Flame on you
		PlaySound: VoicePack/stackhigh
	[211.67] SPELL_CAST_SUCCESS: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[211.67] SPELL_AURA_APPLIED: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank2 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank2
	[211.67] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[211.67] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[212.74] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[214.89] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 214.92
		StartTimer: 13.0, Brand
	[221.40] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 221.4, 223.9, 223.9
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 242.40 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[227.87] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 227.89
		StartTimer: 13.0, Brand
	[237.58] SPELL_CAST_SUCCESS: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[237.58] SPELL_AURA_APPLIED: [Ebonroc->Tank2: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000012, Tank2, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank2 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank2
	[237.58] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[237.58] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[240.76] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[240.83] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 240.84
		StartTimer: 13.0, Brand
	[240.83] SPELL_AURA_APPLIED_DOSE: [Ebonroc->Healer2: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000008, Healer2, 0x511, 368515, Brand of Shadow, 0, DEBUFF, 4, 0
		ShowSpecialWarning: 4 stacks of Brand of Shadow on you
		PlaySound: VoicePack/stackhigh
	[244.47] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps10: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000016, Dps10, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Healer1
		ShowAnnounce: Green Bomb on Dps10
		StartTimer: 47.4, Bombs
	[247.30] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 247.3, 249.8, 249.8
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 268.30 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[253.79] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 253.79
		StartTimer: 13.0, Brand
	[253.79] SPELL_AURA_APPLIED_DOSE: [Ebonroc->Healer2: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000008, Healer2, 0x511, 368515, Brand of Shadow, 0, DEBUFF, 5, 0
		ShowSpecialWarning: 5 stacks of Brand of Shadow on you
		PlaySound: VoicePack/stackhigh
	[263.50] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[263.50] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[265.69] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[266.73] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 266.74
		StartTimer: 13.0, Brand
	[266.74] SPELL_AURA_APPLIED_DOSE: [Ebonroc->Healer2: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000008, Healer2, 0x511, 368515, Brand of Shadow, 0, DEBUFF, 6, 0
		ShowSpecialWarning: 6 stacks of Brand of Shadow on you
		PlaySound: VoicePack/stackhigh
	[273.19] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 273.19, 275.71, 275.71
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 294.19 (+21.00)
			ShowSpecialWarning: Wing Buffet soon
	[279.66] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 279.66
		StartTimer: 13.0, Brand
	[289.39] SPELL_CAST_SUCCESS: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[289.39] SPELL_AURA_APPLIED: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank1 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank1
	[289.39] SPELL_AURA_APPLIED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StartTimer: 10.0, Frenzy ends
	[289.39] SPELL_CAST_SUCCESS: [Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, "", nil, 0x0, 23342, Frenzy, 0, 0
		ShowSpecialWarning: Frenzy on Flamegor - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 25.0, Frenzy
	[291.82] SPELL_AURA_APPLIED: [(DNT) Invisible Stalker->Dps11: Nature's Fury] Creature-0-1-469-1-231800-0000000001, (DNT) Invisible Stalker, 0xa48, Player-1-00000017, Dps11, 0x512, 466435, Nature's Fury, 0, DEBUFF, 0
		ShowAnnounce: Blue Bomb on Dps6
		ShowAnnounce: Green Bomb on Dps11
		StartTimer: 47.4, Bombs
	[292.62] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 292.62
		StartTimer: 13.0, Brand
	[292.64] SPELL_AURA_APPLIED_DOSE: [Flamegor->Healer2: Brand of Flame] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Player-1-00000008, Healer2, 0x511, 368521, Brand of Flame, 0, DEBUFF, 4, 0
		ShowSpecialWarning: 4 stacks of Brand of Flame on you
		PlaySound: VoicePack/stackhigh
	[293.17] SPELL_AURA_REMOVED: [Flamegor->Flamegor: Frenzy] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, 23342, Frenzy, 0, BUFF, 0
		StopTimer: Timer23342active
	[299.10] SPELL_CAST_SUCCESS: [Ebonroc: Wing Buffet] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 369103, Wing Buffet, 0, 0
		AntiSpam: WingBuffet
			Filtered: 3x SPELL_CAST_SUCCESS at 299.1, 301.6, 301.6
		ShowAnnounce: Wing Buffet
		StartTimer: 25.9, Wing Buffet
		ScheduleTask: specWarn368941soon:Schedule() at 320.10 (+21.00)
			Unscheduled by ENCOUNTER_END at 319.03
	[305.57] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
			Filtered: 1x SPELL_CAST_SUCCESS at 305.59
		StartTimer: 13.0, Brand
	[305.59] SPELL_AURA_APPLIED_DOSE: [Flamegor->Healer2: Brand of Flame] Creature-0-1-469-1-11981-0000000002, Flamegor, 0xa48, Player-1-00000008, Healer2, 0x511, 368521, Brand of Flame, 0, DEBUFF, 5, 0
		ShowSpecialWarning: 5 stacks of Brand of Flame on you
		PlaySound: VoicePack/stackhigh
	[308.82] SPELL_CAST_SUCCESS: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, 0
		StartTimer: 25.0, Shadow of Ebonroc
	[308.82] SPELL_AURA_APPLIED: [Ebonroc->Tank1: Shadow of Ebonroc] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, Player-1-00000006, Tank1, 0x512, 23340, Shadow of Ebonroc, 0, DEBUFF, 0
		ShowSpecialWarning: Shadow of Ebonroc on Tank1 - taunt now
		PlaySound: VoicePack/tauntboss
		StartTimer: 8.0, Shadow of Ebonroc: Tank1
	[318.50] SPELL_CAST_SUCCESS: [Ebonroc: Brand of Shadow] Creature-0-1-469-1-14601-0000000002, Ebonroc, 0xa48, "", nil, 0x0, 368515, Brand of Shadow, 0, 0
		AntiSpam: 3
		StartTimer: 13.0, Brand
	[319.03] ENCOUNTER_END: 614, Ebonroc, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
		UnscheduleTask: specWarn368941soon:Schedule() scheduled by ScheduleTask at 299.10
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 23340 23342
]]
