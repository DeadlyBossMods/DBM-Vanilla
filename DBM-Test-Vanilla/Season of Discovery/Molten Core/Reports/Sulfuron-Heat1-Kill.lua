DBM.Test:Report[[
Test: SoD/MC/Sulfuron/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Sulfuron

Findings:
	None

Unused objects:
	None

Timers:
	Dark Mending, time=2.00, type=cast, spellId=19775, triggerDeltas = 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00
		[  3.20] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 111x, delta times: 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00
	Inspire: %s, time=10.00, type=target, spellId=19779, triggerDeltas = 12.90, 32.35, 16.21, 22.67, 14.58, 14.56, 16.18, 17.84, 12.96, 17.81, 14.58
		[ 12.90] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 4x, delta times: 12.90, 32.35, 16.21, 22.67
		[ 22.90] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 3x, delta times: 22.90, 32.34, 16.21
		[ 98.71] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 7x, delta times: 98.71, 14.56, 16.18, 17.84, 12.96, 17.81, 14.58
		[108.70] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 6x, delta times: 108.70, 14.58, 16.18, 17.83, 12.96, 22.61

Announces:
	Shadow Word: Pain on >%s<, type=target, spellId=19776, triggerDeltas = 3.50, 3.24, 3.25, 4.84, 3.10, 1.74, 1.61, 8.11, 3.24, 3.22, 3.52, 2.94, 1.62, 1.62, 4.86, 4.89, 1.61, 1.62, 4.85, 6.47, 4.86, 1.62, 1.64, 4.84, 4.86, 3.24, 1.62, 9.73, 4.83, 11.34, 6.47, 6.47, 1.64, 6.49, 8.09, 1.62, 3.23, 4.85, 3.26, 1.63, 3.22, 6.49, 3.24, 3.23, 1.64
		[  3.50] Scheduled at 3.20 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[  6.74] Scheduled at 6.44 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[  9.99] Scheduled at 9.69 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 14.83] Scheduled at 14.53 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 17.93] Scheduled at 17.63 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 19.67] Scheduled at 19.37 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 21.28] Scheduled at 20.98 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000020, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 29.39] Scheduled at 29.09 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 32.63] Scheduled at 32.33 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 35.85] Scheduled at 35.55 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 39.37] Scheduled at 39.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 42.31] Scheduled at 42.01 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 43.93] Scheduled at 43.63 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 45.55] Scheduled at 45.25 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 50.41] Scheduled at 50.11 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 55.30] Scheduled at 55.00 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 56.91] Scheduled at 56.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 58.53] Scheduled at 58.23 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 63.38] Scheduled at 63.08 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 69.85] Scheduled at 69.55 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 74.71] Scheduled at 74.41 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 76.33] Scheduled at 76.03 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 77.97] Scheduled at 77.67 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 82.81] Scheduled at 82.51 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 87.67] Scheduled at 87.37 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 90.91] Scheduled at 90.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 92.53] Scheduled at 92.23 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[102.26] Scheduled at 101.96 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[107.09] Scheduled at 106.79 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[118.43] Scheduled at 118.13 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[124.90] Scheduled at 124.60 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[131.37] Scheduled at 131.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[133.01] Scheduled at 132.71 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[139.50] Scheduled at 139.20 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[147.59] Scheduled at 147.29 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[149.21] Scheduled at 148.91 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[152.44] Scheduled at 152.14 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[157.29] Scheduled at 156.99 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[160.55] Scheduled at 160.25 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[162.18] Scheduled at 161.88 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[165.40] Scheduled at 165.10 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[171.89] Scheduled at 171.59 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[175.13] Scheduled at 174.83 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[178.36] Scheduled at 178.06 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[180.00] Scheduled at 179.70 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
	Inspire on >%s<, type=target, spellId=19779, triggerDeltas = 12.90, 32.35, 16.21, 22.67, 14.58, 14.56, 16.18, 17.84, 12.96, 17.81, 14.58
		[ 12.90] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 4x, delta times: 12.90, 32.35, 16.21, 22.67
		[ 98.71] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 7x, delta times: 98.71, 14.56, 16.18, 17.84, 12.96, 17.81, 14.58
	Hand of Ragnaros on >%s<, type=target, spellId=19780, triggerDeltas = 94.16
		[ 94.16] Scheduled at 93.86 by SPELL_AURA_APPLIED: [Sulfuron Harbinger->Tank1: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000002, Tank1, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
	Immolate on >%s<, type=target, spellId=20294, triggerDeltas = 5.14, 3.23, 1.62, 3.21, 3.23, 1.62, 1.58, 1.65, 1.63, 3.24, 4.85, 3.23, 3.23, 1.62, 1.62, 3.11, 3.36, 1.62, 3.23, 1.64, 1.64, 1.61, 3.22, 3.24, 1.63, 1.60, 1.62, 1.63, 1.64, 3.22, 1.62, 3.25, 1.62, 1.61, 3.23, 1.63, 3.24, 3.25, 1.62, 3.23, 1.62, 3.24, 1.60, 3.25, 1.61, 1.63, 1.63, 3.24, 3.22, 3.23, 1.62, 3.25, 1.61, 1.61, 3.27, 3.24, 1.62, 4.85, 6.49, 1.60, 0.68, 2.56, 1.61, 1.64, 1.62, 1.63, 1.61, 3.23, 3.25, 1.97, 1.27, 3.22, 1.63, 4.87, 1.62
		[  5.14] Scheduled at 4.84 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[  8.37] Scheduled at 8.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[  9.99] Scheduled at 9.69 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 13.20] Scheduled at 12.90 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 16.43] Scheduled at 16.13 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 18.05] Scheduled at 17.75 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 19.63] Scheduled at 19.33 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps9: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000015, Dps9, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 21.28] Scheduled at 20.98 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 22.91] Scheduled at 22.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 26.15] Scheduled at 25.85 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 31.00] Scheduled at 30.70 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 34.23] Scheduled at 33.93 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 37.46] Scheduled at 37.16 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 39.08] Scheduled at 38.78 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 40.70] Scheduled at 40.40 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 43.81] Scheduled at 43.51 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 47.17] Scheduled at 46.87 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 48.79] Scheduled at 48.49 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 52.02] Scheduled at 51.72 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 53.66] Scheduled at 53.36 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 55.30] Scheduled at 55.00 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 56.91] Scheduled at 56.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 60.13] Scheduled at 59.83 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 63.37] Scheduled at 63.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 65.00] Scheduled at 64.70 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 66.60] Scheduled at 66.30 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps11: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000018, Dps11, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 68.22] Scheduled at 67.92 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 69.85] Scheduled at 69.55 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 71.49] Scheduled at 71.19 by SPELL_AURA_APPLIED: [Flamewaker Priest->Healer2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000009, Healer2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 74.71] Scheduled at 74.41 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 76.33] Scheduled at 76.03 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 79.58] Scheduled at 79.28 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 81.20] Scheduled at 80.90 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 82.81] Scheduled at 82.51 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 86.04] Scheduled at 85.74 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 87.67] Scheduled at 87.37 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 90.91] Scheduled at 90.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 94.16] Scheduled at 93.86 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 95.78] Scheduled at 95.48 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 99.01] Scheduled at 98.71 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[100.63] Scheduled at 100.33 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[103.87] Scheduled at 103.57 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[105.47] Scheduled at 105.17 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[108.72] Scheduled at 108.42 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[110.33] Scheduled at 110.03 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[111.96] Scheduled at 111.66 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[113.59] Scheduled at 113.29 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[116.83] Scheduled at 116.53 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[120.05] Scheduled at 119.75 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[123.28] Scheduled at 122.98 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[124.90] Scheduled at 124.60 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[128.15] Scheduled at 127.85 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[129.76] Scheduled at 129.46 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[131.37] Scheduled at 131.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[134.64] Scheduled at 134.34 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[137.88] Scheduled at 137.58 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[139.50] Scheduled at 139.20 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[144.35] Scheduled at 144.05 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[150.84] Scheduled at 150.54 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[152.44] Scheduled at 152.14 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[153.12] Scheduled at 152.82 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[155.68] Scheduled at 155.38 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[157.29] Scheduled at 156.99 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[158.93] Scheduled at 158.63 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[160.55] Scheduled at 160.25 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[162.18] Scheduled at 161.88 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[163.79] Scheduled at 163.49 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[167.02] Scheduled at 166.72 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[170.27] Scheduled at 169.97 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[172.24] Scheduled at 171.94 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps8: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000014, Dps8, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[173.51] Scheduled at 173.21 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[176.73] Scheduled at 176.43 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[178.36] Scheduled at 178.06 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[183.23] Scheduled at 182.93 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[184.85] Scheduled at 184.55 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0

Special warnings:
	Dark Mending - interrupt >%s<!, type=interrupt, spellId=19775, triggerDeltas = 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00
		[  3.20] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 111x, delta times: 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00

Yells:
	None

Voice pack sounds:
	VoicePack/kickcast
		[  3.20] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 111x, delta times: 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 669, Sulfuron Harbinger, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 19779 19780 19776 20294, SPELL_AURA_REMOVED 19779, SPELL_CAST_START 19775
	[  3.20] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  3.20] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 3.50 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[  4.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  4.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  4.84] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 5.14 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[  6.44] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  6.44] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps6") at 6.74 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6
	[  8.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps5") at 8.37 (+0.30)
			ShowAnnounce: Immolate on Dps5
	[  9.68] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  9.69] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 9.99 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[  9.69] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps10") at 9.99 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps10
	[ 11.29] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 11.29] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 12.90] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 12.90] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 12.90] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps10") at 13.20 (+0.30)
			ShowAnnounce: Immolate on Dps6, Dps10
	[ 14.53] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps1") at 14.83 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps1
	[ 16.13] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 16.13] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 16.13] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps12") at 16.43 (+0.30)
			ShowAnnounce: Immolate on Dps12
	[ 17.63] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps4") at 17.93 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps4
	[ 17.74] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 17.74] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 17.75] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 18.05 (+0.30)
			ShowAnnounce: Immolate on Dps1, Tank3
	[ 19.33] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps9: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000015, Dps9, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps9") at 19.63 (+0.30)
			ShowAnnounce: Immolate on Dps9
	[ 19.37] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 19.67 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[ 20.98] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 20.98] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 21.28 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[ 20.98] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000020, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 21.28 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[ 22.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps4") at 22.91 (+0.30)
			ShowAnnounce: Immolate on Dps4
	[ 22.90] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tFlamewaker Priest
	[ 24.23] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 24.23] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 25.85] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 26.15 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[ 27.47] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 29.07] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 29.09] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 29.39 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[ 30.69] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 30.70] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps5") at 31.00 (+0.30)
			ShowAnnounce: Immolate on Dps5
	[ 32.33] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps10") at 32.63 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps10
	[ 33.93] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 33.93] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 33.93] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 34.23 (+0.30)
			ShowAnnounce: Immolate on Dps10, Dps6
	[ 35.55] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 35.55] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps6") at 35.85 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6
	[ 37.16] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps12") at 37.46 (+0.30)
			ShowAnnounce: Immolate on Dps12
	[ 38.78] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 38.78] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps5") at 39.08 (+0.30)
			ShowAnnounce: Immolate on Dps5
	[ 39.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps5") at 39.37 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps5
	[ 40.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 40.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 40.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 40.40] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps1") at 40.70 (+0.30)
			ShowAnnounce: Immolate on Dps1
	[ 42.01] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps4") at 42.31 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps4
	[ 43.51] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 43.81 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[ 43.63] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 43.63] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps1") at 43.93 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps1
	[ 45.25] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 45.25] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps5") at 45.55 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps5
	[ 46.87] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 46.87] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 46.87] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 46.87] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps4") at 47.17 (+0.30)
			ShowAnnounce: Immolate on Dps4
	[ 48.49] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 48.79 (+0.30)
			ShowAnnounce: Immolate on Dps5, Tank2
	[ 50.11] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 50.41 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[ 51.72] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 51.72] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 51.72] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 52.02 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[ 53.36] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 53.36] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 53.66 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[ 55.00] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 55.00] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 55.30 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[ 55.00] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps10") at 55.30 (+0.30)
			ShowAnnounce: Immolate on Dps10
	[ 55.24] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tFlamewaker Priest
	[ 56.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 56.91 (+0.30)
			ShowAnnounce: Immolate on Dps6
	[ 56.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps10") at 56.91 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps10
	[ 58.21] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 58.21] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 58.23] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps6") at 58.53 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6
	[ 59.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 59.83] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps12") at 60.13 (+0.30)
			ShowAnnounce: Immolate on Dps7, Dps12
	[ 61.46] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 63.07] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 63.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps1") at 63.37 (+0.30)
			ShowAnnounce: Immolate on Dps1
	[ 63.08] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 63.38 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[ 64.70] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 64.70] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 64.70] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 65.00 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[ 66.30] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 66.30] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps11: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000018, Dps11, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps11") at 66.60 (+0.30)
			ShowAnnounce: Immolate on Dps11
	[ 67.92] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps4") at 68.22 (+0.30)
			ShowAnnounce: Immolate on Dps4
	[ 69.54] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 69.55] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 69.85 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[ 69.55] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps5") at 69.85 (+0.30)
			ShowAnnounce: Immolate on Dps5
	[ 71.17] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 71.17] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 71.19] SPELL_AURA_APPLIED: [Flamewaker Priest->Healer2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000009, Healer2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Healer2") at 71.49 (+0.30)
			ShowAnnounce: Immolate on Healer2
	[ 71.45] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tFlamewaker Priest
	[ 74.41] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps4") at 74.71 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps4
	[ 74.41] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 74.71 (+0.30)
			ShowAnnounce: Immolate on Tank3, Tank2
	[ 76.03] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 76.03] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 76.33 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[ 76.03] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 76.33 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[ 77.65] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 77.67] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 77.97 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[ 79.28] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 79.28] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 79.58 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[ 80.90] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 80.90] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 81.20 (+0.30)
			ShowAnnounce: Immolate on Tank2, Dps6
	[ 82.50] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 82.51] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 82.81 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[ 82.51] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 82.81 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[ 84.12] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 84.12] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 84.13] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 85.74] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 85.74] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps10") at 86.04 (+0.30)
			ShowAnnounce: Immolate on Dps4, Dps12, Dps10
	[ 87.37] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps1") at 87.67 (+0.30)
			ShowAnnounce: Immolate on Dps1
	[ 87.37] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps6") at 87.67 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6
	[ 88.99] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 90.60] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 90.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps6") at 90.91 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6
	[ 90.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 90.91 (+0.30)
			ShowAnnounce: Immolate on Dps5, Dps6
	[ 92.23] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 92.23] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 92.53 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[ 93.86] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Tank1: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000002, Tank1, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce19780target:CombinedShow("Tank1") at 94.16 (+0.30)
			ShowAnnounce: Hand of Ragnaros on Tank1
	[ 93.86] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 94.16 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[ 95.48] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 95.48] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 95.78 (+0.30)
			ShowAnnounce: Immolate on Dps6
	[ 97.09] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 97.09] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 98.71] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[ 98.71] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 98.71] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 99.01 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[100.33] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 100.63 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[101.96] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[101.96] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 102.26 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[103.57] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[103.57] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[103.57] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[103.57] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps10") at 103.87 (+0.30)
			ShowAnnounce: Immolate on Dps10
	[105.17] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 105.47 (+0.30)
			ShowAnnounce: Immolate on Dps6, Tank3
	[106.79] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps6") at 107.09 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6
	[108.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[108.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[108.42] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps4") at 108.72 (+0.30)
			ShowAnnounce: Immolate on Dps12, Dps4
	[108.70] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[110.03] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[110.03] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 110.33 (+0.30)
			ShowAnnounce: Immolate on Dps6
	[111.66] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 111.96 (+0.30)
			ShowAnnounce: Immolate on Dps6
	[113.27] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[113.29] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 113.59 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[114.88] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[114.89] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[114.89] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[116.51] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[116.53] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 116.83 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[118.13] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 118.43 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[119.75] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 120.05 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[121.36] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[121.36] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[121.36] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[122.98] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[122.98] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 123.28 (+0.30)
			ShowAnnounce: Immolate on Dps5, Tank3
	[123.28] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[124.60] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps6") at 124.90 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6
	[124.60] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps10") at 124.90 (+0.30)
			ShowAnnounce: Immolate on Dps10
	[126.22] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[127.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[127.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[127.85] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps10") at 128.15 (+0.30)
			ShowAnnounce: Immolate on Dps10
	[129.45] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[129.46] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[129.46] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 129.76 (+0.30)
			ShowAnnounce: Immolate on Dps1, Tank3
	[131.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps5") at 131.37 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps5
	[131.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps12") at 131.37 (+0.30)
			ShowAnnounce: Immolate on Dps12
	[132.71] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[132.71] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[132.71] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 133.01 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[134.34] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[134.34] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps4") at 134.64 (+0.30)
			ShowAnnounce: Immolate on Dps4
	[135.94] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[137.58] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 137.88 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[139.20] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 139.50 (+0.30)
			ShowAnnounce: Immolate on Dps6
	[139.20] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps1") at 139.50 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps1
	[139.46] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[142.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[142.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[144.05] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps5") at 144.35 (+0.30)
			ShowAnnounce: Immolate on Dps5, Dps12
	[145.67] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[145.67] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[147.29] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[147.29] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 147.59 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[148.91] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[148.91] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[148.91] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps10") at 149.21 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps1, Dps10
	[150.52] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[150.54] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 150.84 (+0.30)
			ShowAnnounce: Immolate on Dps10, Tank3
	[152.14] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[152.14] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps12") at 152.44 (+0.30)
			ShowAnnounce: Immolate on Dps12
	[152.14] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 152.44 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[152.82] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps1") at 153.12 (+0.30)
			ShowAnnounce: Immolate on Dps1
	[153.76] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[155.38] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps4") at 155.68 (+0.30)
			ShowAnnounce: Immolate on Dps4
	[156.99] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[156.99] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[156.99] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps6") at 157.29 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6
	[156.99] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 157.29 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[157.29] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[158.63] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[158.63] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 158.93 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[160.25] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[160.25] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[160.25] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 160.55 (+0.30)
			ShowAnnounce: Immolate on Tank2
	[160.25] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 160.55 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[161.88] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Immolate] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps6") at 162.18 (+0.30)
			ShowAnnounce: Immolate on Dps6
	[161.88] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 162.18 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[163.48] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[163.48] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[163.49] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps10: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000016, Dps10, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps10") at 163.79 (+0.30)
			ShowAnnounce: Immolate on Dps10
	[165.10] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[165.10] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps5") at 165.40 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps5
	[166.72] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps5: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000006, Dps5, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps5") at 167.02 (+0.30)
			ShowAnnounce: Immolate on Dps5
	[168.34] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[168.34] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[169.97] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[169.97] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 170.27 (+0.30)
			ShowAnnounce: Immolate on Dps10, Tank2
	[170.25] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[171.59] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 171.89 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps10, Tank2
	[171.94] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps8: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000014, Dps8, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps8") at 172.24 (+0.30)
			ShowAnnounce: Immolate on Dps8
	[173.21] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps12: Immolate] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, Player-1-00000019, Dps12, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps12") at 173.51 (+0.30)
			ShowAnnounce: Immolate on Dps12
	[174.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[174.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[174.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[174.83] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank3") at 175.13 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank3
	[176.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[176.43] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Dps4") at 176.73 (+0.30)
			ShowAnnounce: Immolate on Dps4
	[178.06] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[178.06] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 178.36 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[178.06] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 178.36 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[179.70] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[179.70] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000001, Dps1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps1") at 180.00 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps6, Dps1
	[181.30] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[181.30] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[182.92] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[182.93] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Immolate] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank2") at 183.23 (+0.30)
			ShowAnnounce: Immolate on Dps6, Dps1, Tank2
	[184.55] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank3: Immolate] Creature-0-1-409-1-228838-0000000088, Flamewaker Priest, 0xa48, Player-1-00000017, Tank3, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Tank3") at 184.85 (+0.30)
			ShowAnnounce: Immolate on Tank3
	[187.79] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[187.79] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000CE, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[187.79] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000FB, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[192.64] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[192.86] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[192.87] ENCOUNTER_END: 669, Sulfuron Harbinger, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 19779
]]
