DBM.Test:Report[[
Test: SoD/MC/Sulfuron/Heat-2/Kill
Mod:  DBM-Raids-Vanilla/Sulfuron

Findings:
	Unused event registration: SPELL_AURA_APPLIED 20294 (Immolate)
	Unused event registration: SPELL_AURA_REMOVED 19779 (Inspire)
	Unused event registration: SPELL_PERIODIC_DAMAGE 461103 (Living Fallout)
	Unused event registration: SPELL_PERIODIC_MISSED 461103 (Living Fallout)

Unused objects:
	[Announce] Immolate on >%s<, type=target, spellId=20294

Timers:
	Dark Mending, time=2.00, type=cast, spellId=19775, triggerDeltas = 5.24, 1.20, 0.00, 2.03, 12.96, 0.00, 0.00, 1.63, 9.74, 0.01, 4.85, 0.00, 7.71, 1.62, 4.85, 1.62, 3.66, 3.21, 3.24, 3.22, 3.23, 4.46, 3.66, 1.61, 3.24, 4.43, 4.87, 1.62, 1.62, 8.09, 3.21, 1.63, 1.62, 8.10, 0.00
		[  5.24] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 35x, delta times: 5.24, 1.20, 0.00, 2.03, 12.96, 0.00, 0.00, 1.63, 9.74, 0.01, 4.85, 0.00, 7.71, 1.62, 4.85, 1.62, 3.66, 3.21, 3.24, 3.22, 3.23, 4.46, 3.66, 1.61, 3.24, 4.43, 4.87, 1.62, 1.62, 8.09, 3.21, 1.63, 1.62, 8.10, 0.00
	Inspire: %s, time=10.00, type=target, spellId=19779, triggerDeltas = 13.33, 16.21, 20.68, 19.80, 16.20, 22.24
		[ 13.33] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 6x, delta times: 13.33, 16.21, 20.68, 19.80, 16.20, 22.24

Announces:
	Shadow Word: Pain on >%s<, type=target, spellId=19776, triggerDeltas = 3.91, 4.64, 3.47, 3.24, 1.63, 2.82, 5.26, 1.21, 2.05, 2.88, 2.00, 1.61, 3.26, 3.23, 2.86, 3.22, 3.24, 1.61, 1.64, 3.64, 3.21, 3.26, 4.83, 1.62, 3.23, 3.23, 1.64, 3.26, 1.60, 3.22, 1.20, 1.63, 1.62, 1.62, 1.63, 4.84, 1.66, 1.57, 3.24, 1.61, 1.62, 3.24, 1.63, 1.60, 1.61, 1.65
		[  3.91] Scheduled at 3.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[  8.55] Scheduled at 8.25 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 12.02] Scheduled at 11.72 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 15.26] Scheduled at 14.96 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 16.89] Scheduled at 16.59 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps8: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000012, Dps8, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 19.71] Scheduled at 19.41 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x511, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 24.97] Scheduled at 24.67 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 26.18] Scheduled at 25.88 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 28.23] Scheduled at 27.93 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 31.11] Scheduled at 30.81 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 33.11] Scheduled at 32.81 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps3: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000004, Dps3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 34.72] Scheduled at 34.42 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps15: Shadow Word: Pain] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, Player-1-00000020, Dps15, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 37.98] Scheduled at 37.68 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 41.21] Scheduled at 40.91 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 44.07] Scheduled at 43.77 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 47.29] Scheduled at 46.99 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 50.53] Scheduled at 50.23 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 52.14] Scheduled at 51.84 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 53.78] Scheduled at 53.48 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 57.42] Scheduled at 57.12 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 60.63] Scheduled at 60.33 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 63.89] Scheduled at 63.59 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 68.72] Scheduled at 68.42 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 70.34] Scheduled at 70.04 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 73.57] Scheduled at 73.27 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 76.80] Scheduled at 76.50 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 78.44] Scheduled at 78.14 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 81.70] Scheduled at 81.40 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 83.30] Scheduled at 83.00 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 86.52] Scheduled at 86.22 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 87.72] Scheduled at 87.42 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 89.35] Scheduled at 89.05 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 90.97] Scheduled at 90.67 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 92.59] Scheduled at 92.29 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 94.22] Scheduled at 93.92 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 99.06] Scheduled at 98.76 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[100.72] Scheduled at 100.42 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[102.29] Scheduled at 101.99 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[105.53] Scheduled at 105.23 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[107.14] Scheduled at 106.84 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[108.76] Scheduled at 108.46 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[112.00] Scheduled at 111.70 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[113.63] Scheduled at 113.33 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[115.23] Scheduled at 114.93 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[116.84] Scheduled at 116.54 by SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[118.49] Scheduled at 118.19 by SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
	Inspire on >%s<, type=target, spellId=19779, triggerDeltas = 13.33, 16.21, 20.68, 19.80, 16.20, 22.24
		[ 13.33] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 6x, delta times: 13.33, 16.21, 20.68, 19.80, 16.20, 22.24
	Hand of Ragnaros on >%s<, type=target, spellId=19780, triggerDeltas = 12.02, 29.19, 17.82, 41.65, 11.32
		[ 12.02] Scheduled at 11.72 by SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps15: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000020, Dps15, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		[ 41.21] Scheduled at 40.91 by SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps15: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000020, Dps15, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		[ 59.03] Scheduled at 58.73 by SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps15: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000020, Dps15, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		[100.68] Scheduled at 100.38 by SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps15: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000020, Dps15, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		[112.00] Scheduled at 111.70 by SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps8: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000012, Dps8, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0

Special warnings:
	Dark Mending - interrupt >%s<!, type=interrupt, spellId=19775, triggerDeltas = 5.24, 1.20, 0.00, 2.03, 12.96, 0.00, 0.00, 1.63, 9.74, 0.01, 4.85, 0.00, 7.71, 1.62, 4.85, 1.62, 3.66, 3.21, 3.24, 3.22, 3.23, 4.46, 3.66, 1.61, 3.24, 4.43, 4.87, 1.62, 1.62, 8.09, 3.21, 1.63, 1.62, 8.10, 0.00
		[  5.24] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 35x, delta times: 5.24, 1.20, 0.00, 2.03, 12.96, 0.00, 0.00, 1.63, 9.74, 0.01, 4.85, 0.00, 7.71, 1.62, 4.85, 1.62, 3.66, 3.21, 3.24, 3.22, 3.23, 4.46, 3.66, 1.61, 3.24, 4.43, 4.87, 1.62, 1.62, 8.09, 3.21, 1.63, 1.62, 8.10, 0.00
	%s damage - move away, type=gtfo, spellId=461103, triggerDeltas = 82.48
		[ 82.48] SPELL_AURA_APPLIED: [->Dps6: Living Fallout] "", nil, 0x0, Player-1-00000007, Dps6, 0x511, 461103, Living Fallout, 0, DEBUFF, 0

Yells:
	None

Voice pack sounds:
	VoicePack/kickcast
		[  5.24] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 35x, delta times: 5.24, 1.20, 0.00, 2.03, 12.96, 0.00, 0.00, 1.63, 9.74, 0.01, 4.85, 0.00, 7.71, 1.62, 4.85, 1.62, 3.66, 3.21, 3.24, 3.22, 3.23, 4.46, 3.66, 1.61, 3.24, 4.43, 4.87, 1.62, 1.62, 8.09, 3.21, 1.63, 1.62, 8.10, 0.00
	VoicePack/watchfeet
		[ 82.48] SPELL_AURA_APPLIED: [->Dps6: Living Fallout] "", nil, 0x0, Player-1-00000007, Dps6, 0x511, 461103, Living Fallout, 0, DEBUFF, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 669, Sulfuron Harbinger, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 19779 19780 19776 20294 461103, SPELL_PERIODIC_DAMAGE 461103, SPELL_PERIODIC_MISSED 461103, SPELL_AURA_REMOVED 19779, SPELL_CAST_START 19775
	[  3.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 3.91 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[  5.24] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  6.44] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  6.44] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  8.25] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 8.55 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[  8.47] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 11.72] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps15: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000020, Dps15, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce19780target:CombinedShow("Dps15") at 12.02 (+0.30)
			ShowAnnounce: Hand of Ragnaros on Dps8, Dps12, Dps15
	[ 11.72] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 12.02 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 13.33] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 14.96] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 15.26 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 16.59] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps8: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000012, Dps8, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps8") at 16.89 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13, Dps8
	[ 19.41] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps6: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000007, Dps6, 0x511, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("PlayerName") at 19.71 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps12, PlayerName
	[ 21.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 21.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 21.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 23.06] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 24.67] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 24.97 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 25.88] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps4") at 26.18 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps4
	[ 27.93] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 28.23 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 29.54] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 30.81] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 31.11 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13, Tank1
	[ 32.80] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 32.81] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 32.81] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps3: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000004, Dps3, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps3") at 33.11 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps3
	[ 34.42] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps15: Shadow Word: Pain] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, Player-1-00000020, Dps15, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps15") at 34.72 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps15
	[ 37.66] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 37.66] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 37.68] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 37.98 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 40.91] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps15: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000020, Dps15, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce19780target:CombinedShow("Dps15") at 41.21 (+0.30)
			ShowAnnounce: Hand of Ragnaros on PlayerName, Dps8, Dps12, Dps13, Dps15
	[ 40.91] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 41.21 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 43.77] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 44.07 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 45.37] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 46.99] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 46.99] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 47.29 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[ 50.22] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 50.23] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 50.53 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13, Tank1
	[ 51.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 51.84] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 52.14 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 53.46] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 53.48] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 53.78 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[ 57.12] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 57.12] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 57.42 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13, Tank1
	[ 58.73] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps15: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000020, Dps15, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce19780target:CombinedShow("Dps15") at 59.03 (+0.30)
			ShowAnnounce: Hand of Ragnaros on Dps4, Dps8, Tank2, Dps15
	[ 60.33] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 60.33] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 60.63 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[ 63.57] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 63.59] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 63.89 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13, Tank1
	[ 66.79] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 68.42] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 68.72 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 70.02] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 70.02] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 70.04] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 70.34 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 73.27] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 73.57 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1, Dps13
	[ 74.48] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 76.50] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 76.80 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1, Dps4
	[ 78.14] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 78.14] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 78.44 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[ 79.75] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 81.40] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 81.70 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 82.48] SPELL_AURA_APPLIED: [->Dps6: Living Fallout] "", nil, 0x0, Player-1-00000007, Dps6, 0x511, 461103, Living Fallout, 0, DEBUFF, 0
		AntiSpam: gtfo
			Filtered: 1x SPELL_AURA_APPLIED at 84.22
		ShowSpecialWarning: Living Fallout damage - move away
		PlaySound: VoicePack/watchfeet
	[ 82.99] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 83.00] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 83.30 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1, Dps13
	[ 86.22] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 86.22] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 86.52 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13, Tank1
	[ 87.42] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 87.42] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps4") at 87.72 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps4
	[ 89.05] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 89.35 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 90.67] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 90.97 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[ 92.29] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 92.29] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 92.59 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[ 93.91] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 93.92] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 94.22 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[ 95.53] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 98.76] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 99.06 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[100.38] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps15: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000020, Dps15, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce19780target:CombinedShow("Dps15") at 100.68 (+0.30)
			ShowAnnounce: Hand of Ragnaros on Tank1, Dps3, Dps8, Dps13, Dps15
	[100.42] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps4: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000005, Dps4, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps4") at 100.72 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13, Dps4
	[101.99] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank2: Shadow Word: Pain] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, Player-1-00000013, Tank2, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank2") at 102.29 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank2
	[103.62] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[105.23] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 105.53 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[106.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[106.84] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 107.14 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps3, Dps13
	[108.46] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-0000000001, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[108.46] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[108.46] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 108.76 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[110.08] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[111.70] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Dps8: Hand of Ragnaros] Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, Player-1-00000012, Dps8, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce19780target:CombinedShow("Dps8") at 112.00 (+0.30)
			ShowAnnounce: Hand of Ragnaros on Dps3, Dps8
	[111.70] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 112.00 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Dps13
	[113.33] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 113.63 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[114.93] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 115.23 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[116.54] SPELL_AURA_APPLIED: [Flamewaker Priest->Dps13: Shadow Word: Pain] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, Player-1-00000018, Dps13, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Dps13") at 116.84 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1, Dps13
	[118.18] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-000000009D, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[118.18] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-1-409-1-228838-00000000BC, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[118.19] SPELL_AURA_APPLIED: [Flamewaker Priest->Tank1: Shadow Word: Pain] Creature-0-1-409-1-228838-000000006A, Flamewaker Priest, 0xa48, Player-1-00000001, Tank1, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Tank1") at 118.49 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Tank1
	[119.35] UNIT_DIED: [->Sulfuron Harbinger] "", nil, 0x0, Creature-0-1-409-1-228436-0000000001, Sulfuron Harbinger, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 19779
]]
