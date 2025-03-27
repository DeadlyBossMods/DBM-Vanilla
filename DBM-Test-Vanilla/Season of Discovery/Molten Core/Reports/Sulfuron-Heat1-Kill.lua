DBM.Test:Report[[
Test: SoD/MC/Sulfuron/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Sulfuron

Findings:
	None

Unused objects:
	None

Timers:
	Dark Mending, time=2.00, type=cast, spellId=19775, triggerDeltas = 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00
		[  3.20] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 111x, delta times: 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00
	Inspire: %s, time=10.00, type=target, spellId=19779, triggerDeltas = 12.90, 32.35, 16.21, 22.67, 14.58, 14.56, 16.18, 17.84, 12.96, 17.81, 14.58
		[ 12.90] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 4x, delta times: 12.90, 32.35, 16.21, 22.67
		[ 22.90] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 3x, delta times: 22.90, 32.34, 16.21
		[ 98.71] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 7x, delta times: 98.71, 14.56, 16.18, 17.84, 12.96, 17.81, 14.58
		[108.70] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 6x, delta times: 108.70, 14.58, 16.18, 17.83, 12.96, 22.61

Announces:
	Shadow Word: Pain on >%s<, type=target, spellId=19776, triggerDeltas = 3.50, 3.24, 3.25, 4.84, 3.10, 1.74, 1.61, 8.11, 3.24, 3.22, 3.52, 2.94, 1.62, 1.62, 4.86, 4.89, 1.61, 1.62, 4.85, 6.47, 4.86, 1.62, 1.64, 4.84, 4.86, 3.24, 1.62, 9.73, 4.83, 11.34, 6.47, 6.47, 1.64, 6.49, 8.09, 1.62, 3.23, 4.85, 3.26, 1.63, 3.22, 6.49, 3.24, 3.23, 1.64
		[  3.50] Scheduled at 3.20 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[  6.74] Scheduled at 6.44 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[  9.99] Scheduled at 9.69 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 14.83] Scheduled at 14.53 by SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 17.93] Scheduled at 17.63 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 19.67] Scheduled at 19.37 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 21.28] Scheduled at 20.98 by SPELL_AURA_APPLIED: [Flamewaker Priest->Cattivo: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 29.39] Scheduled at 29.09 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 32.63] Scheduled at 32.33 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 35.85] Scheduled at 35.55 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 39.37] Scheduled at 39.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 42.31] Scheduled at 42.01 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 43.93] Scheduled at 43.63 by SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 45.55] Scheduled at 45.25 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 50.41] Scheduled at 50.11 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 55.30] Scheduled at 55.00 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 56.91] Scheduled at 56.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 58.53] Scheduled at 58.23 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 63.38] Scheduled at 63.08 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 69.85] Scheduled at 69.55 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 74.71] Scheduled at 74.41 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 76.33] Scheduled at 76.03 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 77.97] Scheduled at 77.67 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 82.81] Scheduled at 82.51 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 87.67] Scheduled at 87.37 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 90.91] Scheduled at 90.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[ 92.53] Scheduled at 92.23 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[102.26] Scheduled at 101.96 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[107.09] Scheduled at 106.79 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[118.43] Scheduled at 118.13 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[124.90] Scheduled at 124.60 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[131.37] Scheduled at 131.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[133.01] Scheduled at 132.71 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[139.50] Scheduled at 139.20 by SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[147.59] Scheduled at 147.29 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[149.21] Scheduled at 148.91 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[152.44] Scheduled at 152.14 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[157.29] Scheduled at 156.99 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[160.55] Scheduled at 160.25 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[162.18] Scheduled at 161.88 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[165.40] Scheduled at 165.10 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[171.89] Scheduled at 171.59 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[175.13] Scheduled at 174.83 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[178.36] Scheduled at 178.06 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		[180.00] Scheduled at 179.70 by SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
	Inspire on >%s<, type=target, spellId=19779, triggerDeltas = 12.90, 32.35, 16.21, 22.67, 14.58, 14.56, 16.18, 17.84, 12.96, 17.81, 14.58
		[ 12.90] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 4x, delta times: 12.90, 32.35, 16.21, 22.67
		[ 98.71] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
			 Triggered 7x, delta times: 98.71, 14.56, 16.18, 17.84, 12.96, 17.81, 14.58
	Hand of Ragnaros on >%s<, type=target, spellId=19780, triggerDeltas = 94.16
		[ 94.16] Scheduled at 93.86 by SPELL_AURA_APPLIED: [Sulfuron Harbinger->Glassy: Hand of Ragnaros] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
	Immolate on >%s<, type=target, spellId=20294, triggerDeltas = 5.14, 3.23, 1.62, 3.21, 3.23, 1.62, 1.58, 1.65, 1.63, 3.24, 4.85, 3.23, 3.23, 1.62, 1.62, 3.11, 3.36, 1.62, 3.23, 1.64, 1.64, 1.61, 3.22, 3.24, 1.63, 1.60, 1.62, 1.63, 1.64, 3.22, 1.62, 3.25, 1.62, 1.61, 3.23, 1.63, 3.24, 3.25, 1.62, 3.23, 1.62, 3.24, 1.60, 3.25, 1.61, 1.63, 1.63, 3.24, 3.22, 3.23, 1.62, 3.25, 1.61, 1.61, 3.27, 3.24, 1.62, 4.85, 6.49, 1.60, 0.68, 2.56, 1.61, 1.64, 1.62, 1.63, 1.61, 3.23, 3.25, 1.97, 1.27, 3.22, 1.63, 4.87, 1.62
		[  5.14] Scheduled at 4.84 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[  8.37] Scheduled at 8.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[  9.99] Scheduled at 9.69 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 13.20] Scheduled at 12.90 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 16.43] Scheduled at 16.13 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 18.05] Scheduled at 17.75 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 19.63] Scheduled at 19.33 by SPELL_AURA_APPLIED: [Flamewaker Priest->Huntsomeguy: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 21.28] Scheduled at 20.98 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 22.91] Scheduled at 22.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 26.15] Scheduled at 25.85 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 31.00] Scheduled at 30.70 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 34.23] Scheduled at 33.93 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 37.46] Scheduled at 37.16 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 39.08] Scheduled at 38.78 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 40.70] Scheduled at 40.40 by SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 43.81] Scheduled at 43.51 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 47.17] Scheduled at 46.87 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 48.79] Scheduled at 48.49 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 52.02] Scheduled at 51.72 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 53.66] Scheduled at 53.36 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 55.30] Scheduled at 55.00 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 56.91] Scheduled at 56.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 60.13] Scheduled at 59.83 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 63.37] Scheduled at 63.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 65.00] Scheduled at 64.70 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 66.60] Scheduled at 66.30 by SPELL_AURA_APPLIED: [Flamewaker Priest->Azki: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-0271AC22, Azki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 68.22] Scheduled at 67.92 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 69.85] Scheduled at 69.55 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 71.49] Scheduled at 71.19 by SPELL_AURA_APPLIED: [Flamewaker Priest->Hàger: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-022114E6, Hàger, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 74.71] Scheduled at 74.41 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 76.33] Scheduled at 76.03 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 79.58] Scheduled at 79.28 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 81.20] Scheduled at 80.90 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 82.81] Scheduled at 82.51 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 86.04] Scheduled at 85.74 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 87.67] Scheduled at 87.37 by SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 90.91] Scheduled at 90.61 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 94.16] Scheduled at 93.86 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 95.78] Scheduled at 95.48 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[ 99.01] Scheduled at 98.71 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[100.63] Scheduled at 100.33 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[103.87] Scheduled at 103.57 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[105.47] Scheduled at 105.17 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[108.72] Scheduled at 108.42 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[110.33] Scheduled at 110.03 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[111.96] Scheduled at 111.66 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[113.59] Scheduled at 113.29 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[116.83] Scheduled at 116.53 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[120.05] Scheduled at 119.75 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[123.28] Scheduled at 122.98 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[124.90] Scheduled at 124.60 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[128.15] Scheduled at 127.85 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[129.76] Scheduled at 129.46 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[131.37] Scheduled at 131.07 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[134.64] Scheduled at 134.34 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[137.88] Scheduled at 137.58 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[139.50] Scheduled at 139.20 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[144.35] Scheduled at 144.05 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[150.84] Scheduled at 150.54 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[152.44] Scheduled at 152.14 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[153.12] Scheduled at 152.82 by SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[155.68] Scheduled at 155.38 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[157.29] Scheduled at 156.99 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[158.93] Scheduled at 158.63 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[160.55] Scheduled at 160.25 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[162.18] Scheduled at 161.88 by SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[163.79] Scheduled at 163.49 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[167.02] Scheduled at 166.72 by SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[170.27] Scheduled at 169.97 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[172.24] Scheduled at 171.94 by SPELL_AURA_APPLIED: [Flamewaker Priest->Divertikel: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[173.51] Scheduled at 173.21 by SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[176.73] Scheduled at 176.43 by SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[178.36] Scheduled at 178.06 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[183.23] Scheduled at 182.93 by SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		[184.85] Scheduled at 184.55 by SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0

Special warnings:
	Dark Mending - interrupt >%s<!, type=interrupt, spellId=19775, triggerDeltas = 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00
		[  3.20] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 111x, delta times: 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00

Yells:
	None

Voice pack sounds:
	VoicePack/kickcast
		[  3.20] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
			 Triggered 111x, delta times: 3.20, 1.64, 0.00, 1.60, 3.24, 1.61, 0.00, 1.61, 3.23, 0.00, 1.61, 0.00, 3.24, 3.25, 0.00, 3.24, 1.60, 1.62, 3.24, 0.00, 1.62, 3.23, 1.62, 0.00, 0.00, 3.23, 3.24, 0.00, 0.00, 4.85, 0.00, 1.64, 1.64, 3.21, 0.00, 1.62, 3.24, 1.63, 0.00, 1.60, 3.24, 1.63, 0.00, 4.86, 1.62, 1.63, 1.62, 1.60, 1.62, 0.00, 1.62, 3.25, 1.61, 1.63, 3.25, 1.61, 0.00, 1.62, 3.25, 1.61, 0.00, 0.00, 4.83, 0.00, 1.63, 4.85, 0.01, 0.00, 1.62, 4.85, 0.00, 0.00, 1.62, 3.24, 1.62, 0.00, 1.62, 3.25, 0.00, 1.63, 1.60, 6.49, 0.00, 3.24, 0.00, 3.24, 0.00, 1.61, 1.62, 1.62, 3.23, 0.00, 1.64, 1.62, 3.23, 0.00, 1.62, 3.24, 0.00, 1.63, 4.86, 0.00, 0.00, 1.60, 3.27, 1.60, 0.00, 1.62, 4.87, 0.00, 0.00

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 669, Sulfuron Harbinger, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 19779 19780 19776 20294, SPELL_AURA_REMOVED 19779, SPELL_CAST_START 19775
	[  3.20] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  3.20] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 3.50 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[  4.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  4.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  4.84] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 5.14 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[  6.44] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  6.44] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Knüppelkeule") at 6.74 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule
	[  8.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Simplyorc") at 8.37 (+0.30)
			ShowAnnounce: Immolate on Simplyorc
	[  9.68] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[  9.69] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 9.99 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[  9.69] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Zred") at 9.99 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Zred
	[ 11.29] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 11.29] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 12.90] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 12.90] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 12.90] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zred") at 13.20 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule, Zred
	[ 14.53] SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Skarpetki") at 14.83 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Skarpetki
	[ 16.13] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 16.13] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 16.13] SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zugzugmedumb") at 16.43 (+0.30)
			ShowAnnounce: Immolate on Zugzugmedumb
	[ 17.63] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Bruzo") at 17.93 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Bruzo
	[ 17.74] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 17.74] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 17.75] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 18.05 (+0.30)
			ShowAnnounce: Immolate on Skarpetki, Switchlawles
	[ 19.33] SPELL_AURA_APPLIED: [Flamewaker Priest->Huntsomeguy: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Huntsomeguy") at 19.63 (+0.30)
			ShowAnnounce: Immolate on Huntsomeguy
	[ 19.37] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 19.67 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[ 20.98] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 20.98] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 21.28 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[ 20.98] SPELL_AURA_APPLIED: [Flamewaker Priest->Cattivo: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Cattivo") at 21.28 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Cattivo
	[ 22.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Bruzo") at 22.91 (+0.30)
			ShowAnnounce: Immolate on Bruzo
	[ 22.90] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tFlamewaker Priest
	[ 24.23] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 24.23] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 25.85] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 26.15 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[ 27.47] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 29.07] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 29.09] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 29.39 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[ 30.69] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 30.70] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Simplyorc") at 31.00 (+0.30)
			ShowAnnounce: Immolate on Simplyorc
	[ 32.33] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Zred") at 32.63 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Zred
	[ 33.93] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 33.93] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 33.93] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 34.23 (+0.30)
			ShowAnnounce: Immolate on Zred, Knüppelkeule
	[ 35.55] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 35.55] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Knüppelkeule") at 35.85 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule
	[ 37.16] SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zugzugmedumb") at 37.46 (+0.30)
			ShowAnnounce: Immolate on Zugzugmedumb
	[ 38.78] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 38.78] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Simplyorc") at 39.08 (+0.30)
			ShowAnnounce: Immolate on Simplyorc
	[ 39.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Simplyorc") at 39.37 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Simplyorc
	[ 40.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 40.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 40.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 40.40] SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Skarpetki") at 40.70 (+0.30)
			ShowAnnounce: Immolate on Skarpetki
	[ 42.01] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Bruzo") at 42.31 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Bruzo
	[ 43.51] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 43.81 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[ 43.63] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 43.63] SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Skarpetki") at 43.93 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Skarpetki
	[ 45.25] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 45.25] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Simplyorc") at 45.55 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Simplyorc
	[ 46.87] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 46.87] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 46.87] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 46.87] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Bruzo") at 47.17 (+0.30)
			ShowAnnounce: Immolate on Bruzo
	[ 48.49] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 48.79 (+0.30)
			ShowAnnounce: Immolate on Simplyorc, Mafakacoil
	[ 50.11] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 50.41 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[ 51.72] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 51.72] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 51.72] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 52.02 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[ 53.36] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 53.36] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 53.66 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[ 55.00] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 55.00] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 55.30 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[ 55.00] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zred") at 55.30 (+0.30)
			ShowAnnounce: Immolate on Zred
	[ 55.24] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tFlamewaker Priest
	[ 56.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 56.91 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule
	[ 56.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Zred") at 56.91 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Zred
	[ 58.21] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 58.21] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 58.23] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Knüppelkeule") at 58.53 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule
	[ 59.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 59.83] SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zugzugmedumb") at 60.13 (+0.30)
			ShowAnnounce: Immolate on Luschimage, Zugzugmedumb
	[ 61.46] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 63.07] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 63.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Skarpetki") at 63.37 (+0.30)
			ShowAnnounce: Immolate on Skarpetki
	[ 63.08] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 63.38 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[ 64.70] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 64.70] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 64.70] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 65.00 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[ 66.30] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 66.30] SPELL_AURA_APPLIED: [Flamewaker Priest->Azki: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-0271AC22, Azki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Azki") at 66.60 (+0.30)
			ShowAnnounce: Immolate on Azki
	[ 67.92] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Bruzo") at 68.22 (+0.30)
			ShowAnnounce: Immolate on Bruzo
	[ 69.54] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 69.55] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 69.85 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[ 69.55] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Simplyorc") at 69.85 (+0.30)
			ShowAnnounce: Immolate on Simplyorc
	[ 71.17] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 71.17] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 71.19] SPELL_AURA_APPLIED: [Flamewaker Priest->Hàger: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-022114E6, Hàger, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Hàger") at 71.49 (+0.30)
			ShowAnnounce: Immolate on Hàger
	[ 71.45] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tFlamewaker Priest
	[ 74.41] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Bruzo") at 74.71 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Bruzo
	[ 74.41] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 74.71 (+0.30)
			ShowAnnounce: Immolate on Switchlawles, Mafakacoil
	[ 76.03] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 76.03] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 76.33 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[ 76.03] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 76.33 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[ 77.65] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 77.67] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 77.97 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[ 79.28] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 79.28] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 79.58 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[ 80.90] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 80.90] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 81.20 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil, Knüppelkeule
	[ 82.50] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 82.51] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 82.81 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[ 82.51] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 82.81 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[ 84.12] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 84.12] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 84.13] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Flamewaker Priest: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Flamewaker Priest
		StartTimer: 10.0, Inspire: Flamewaker Priest
	[ 85.74] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 85.74] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zred") at 86.04 (+0.30)
			ShowAnnounce: Immolate on Bruzo, Zugzugmedumb, Zred
	[ 87.37] SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Skarpetki") at 87.67 (+0.30)
			ShowAnnounce: Immolate on Skarpetki
	[ 87.37] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Knüppelkeule") at 87.67 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule
	[ 88.99] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 90.60] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 90.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Knüppelkeule") at 90.91 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule
	[ 90.61] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 90.91 (+0.30)
			ShowAnnounce: Immolate on Simplyorc, Knüppelkeule
	[ 92.23] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 92.23] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 92.53 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[ 93.86] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Glassy: Hand of Ragnaros] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19780, Hand of Ragnaros, 0, DEBUFF, 0
		ScheduleTask: announce19780target:CombinedShow("Glassy") at 94.16 (+0.30)
			ShowAnnounce: Hand of Ragnaros on Glassy
	[ 93.86] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 94.16 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[ 95.48] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 95.48] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 95.78 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule
	[ 97.09] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 97.09] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 98.71] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[ 98.71] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[ 98.71] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 99.01 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[100.33] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 100.63 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[101.96] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[101.96] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 102.26 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[103.57] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[103.57] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[103.57] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[103.57] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zred") at 103.87 (+0.30)
			ShowAnnounce: Immolate on Zred
	[105.17] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 105.47 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule, Switchlawles
	[106.79] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Knüppelkeule") at 107.09 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule
	[108.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[108.40] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[108.42] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Bruzo") at 108.72 (+0.30)
			ShowAnnounce: Immolate on Zugzugmedumb, Bruzo
	[108.70] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[110.03] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[110.03] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 110.33 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule
	[111.66] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 111.96 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule
	[113.27] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[113.29] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 113.59 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[114.88] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[114.89] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[114.89] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[116.51] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[116.53] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 116.83 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[118.13] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 118.43 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[119.75] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 120.05 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[121.36] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[121.36] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[121.36] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[122.98] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[122.98] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 123.28 (+0.30)
			ShowAnnounce: Immolate on Simplyorc, Switchlawles
	[123.28] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[124.60] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Knüppelkeule") at 124.90 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule
	[124.60] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zred") at 124.90 (+0.30)
			ShowAnnounce: Immolate on Zred
	[126.22] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[127.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[127.84] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[127.85] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zred") at 128.15 (+0.30)
			ShowAnnounce: Immolate on Zred
	[129.45] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[129.46] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[129.46] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 129.76 (+0.30)
			ShowAnnounce: Immolate on Skarpetki, Switchlawles
	[131.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Simplyorc") at 131.37 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Simplyorc
	[131.07] SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zugzugmedumb") at 131.37 (+0.30)
			ShowAnnounce: Immolate on Zugzugmedumb
	[132.71] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[132.71] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[132.71] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 133.01 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[134.34] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[134.34] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Bruzo") at 134.64 (+0.30)
			ShowAnnounce: Immolate on Bruzo
	[135.94] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[137.58] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 137.88 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[139.20] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 139.50 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule
	[139.20] SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Skarpetki") at 139.50 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Skarpetki
	[139.46] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[142.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[142.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[144.05] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Simplyorc") at 144.35 (+0.30)
			ShowAnnounce: Immolate on Simplyorc, Zugzugmedumb
	[145.67] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[145.67] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[147.29] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[147.29] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 147.59 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[148.91] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[148.91] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[148.91] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Zred") at 149.21 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Skarpetki, Zred
	[150.52] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[150.54] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 150.84 (+0.30)
			ShowAnnounce: Immolate on Zred, Switchlawles
	[152.14] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[152.14] SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zugzugmedumb") at 152.44 (+0.30)
			ShowAnnounce: Immolate on Zugzugmedumb
	[152.14] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 152.44 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[152.82] SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Skarpetki") at 153.12 (+0.30)
			ShowAnnounce: Immolate on Skarpetki
	[153.76] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[155.38] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Bruzo") at 155.68 (+0.30)
			ShowAnnounce: Immolate on Bruzo
	[156.99] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[156.99] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[156.99] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Knüppelkeule") at 157.29 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule
	[156.99] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 157.29 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[157.29] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[158.63] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[158.63] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 158.93 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[160.25] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[160.25] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[160.25] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 160.55 (+0.30)
			ShowAnnounce: Immolate on Mafakacoil
	[160.25] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 160.55 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[161.88] SPELL_AURA_APPLIED: [Flamewaker Priest->Knüppelkeule: Immolate] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Knüppelkeule") at 162.18 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule
	[161.88] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 162.18 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[163.48] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[163.48] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[163.49] SPELL_AURA_APPLIED: [Flamewaker Priest->Zred: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026A3C71, Zred, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zred") at 163.79 (+0.30)
			ShowAnnounce: Immolate on Zred
	[165.10] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[165.10] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Simplyorc") at 165.40 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Simplyorc
	[166.72] SPELL_AURA_APPLIED: [Flamewaker Priest->Simplyorc: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Simplyorc") at 167.02 (+0.30)
			ShowAnnounce: Immolate on Simplyorc
	[168.34] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[168.34] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[169.97] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[169.97] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 170.27 (+0.30)
			ShowAnnounce: Immolate on Zred, Mafakacoil
	[170.25] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[171.59] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 171.89 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Zred, Mafakacoil
	[171.94] SPELL_AURA_APPLIED: [Flamewaker Priest->Divertikel: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Divertikel") at 172.24 (+0.30)
			ShowAnnounce: Immolate on Divertikel
	[173.21] SPELL_AURA_APPLIED: [Flamewaker Priest->Zugzugmedumb: Immolate] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Zugzugmedumb") at 173.51 (+0.30)
			ShowAnnounce: Immolate on Zugzugmedumb
	[174.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[174.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[174.83] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[174.83] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Switchlawles") at 175.13 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Switchlawles
	[176.43] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[176.43] SPELL_AURA_APPLIED: [Flamewaker Priest->Bruzo: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Bruzo") at 176.73 (+0.30)
			ShowAnnounce: Immolate on Bruzo
	[178.06] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[178.06] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 178.36 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[178.06] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Mafakacoil") at 178.36 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Mafakacoil
	[179.70] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[179.70] SPELL_AURA_APPLIED: [Flamewaker Priest->Skarpetki: Shadow Word: Pain] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19776, Shadow Word: Pain, 0, DEBUFF, 0
		ScheduleTask: announce19776target:CombinedShow("Skarpetki") at 180.00 (+0.30)
			ShowAnnounce: Shadow Word: Pain on Knüppelkeule, Skarpetki
	[181.30] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[181.30] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[182.92] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[182.93] SPELL_AURA_APPLIED: [Flamewaker Priest->Mafakacoil: Immolate] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Mafakacoil") at 183.23 (+0.30)
			ShowAnnounce: Immolate on Knüppelkeule, Skarpetki, Mafakacoil
	[184.55] SPELL_AURA_APPLIED: [Flamewaker Priest->Switchlawles: Immolate] Creature-0-5210-409-2703-228838-0000A3F1D7, Flamewaker Priest, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 20294, Immolate, 0, DEBUFF, 0
		ScheduleTask: announce20294target:CombinedShow("Switchlawles") at 184.85 (+0.30)
			ShowAnnounce: Immolate on Switchlawles
	[187.79] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000023F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[187.79] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-000123F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[187.79] SPELL_CAST_START: [Flamewaker Priest: Dark Mending] Creature-0-5210-409-2703-228838-0001A3F1D7, Flamewaker Priest, 0xa48, "", nil, 0x0, 19775, Dark Mending, 0, 0
		StartTimer: 2.0, Dark Mending
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Priest!
		PlaySound: VoicePack/kickcast
	[192.64] SPELL_AURA_APPLIED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		ShowAnnounce: Inspire on Sulfuron Harbinger
		StartTimer: 10.0, Inspire: Sulfuron Harbinger
	[192.86] SPELL_AURA_REMOVED: [Sulfuron Harbinger->Sulfuron Harbinger: Inspire] Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, Creature-0-5210-409-2703-228436-000023F1D7, Sulfuron Harbinger, 0xa48, 19779, Inspire, 0, BUFF, 0
		StopTimer: Timer19779target\tSulfuron Harbinger
	[192.87] ENCOUNTER_END: 669, Sulfuron Harbinger, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 19779
]]
