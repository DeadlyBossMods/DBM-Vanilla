DBM.Test:Report[[
Test: SoD/BWL/Firemaw/Normal/Wipe
Mod:  DBM-Raids-Vanilla/Firemaw

Findings:
	Unused event registration: SPELL_AURA_APPLIED 366305 (Static Electricity)

Unused objects:
	[Announce] Casting Wing Buffet: 1.0 sec, type=cast, spellId=23339

Timers:
	Shadow Flame, time=14.00, type=cd, spellId=22539, triggerDeltas = 0.00, 19.43, 17.83, 22.67, 21.05, 17.64, 17.96, 22.67, 24.25, 24.29, 21.08, 24.26
		[  0.00] ENCOUNTER_START: 613, Firemaw, 186, 40, 0
		[ 19.43] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
			 Triggered 11x, delta times: 19.43, 17.83, 22.67, 21.05, 17.64, 17.96, 22.67, 24.25, 24.29, 21.08, 24.26
	Wing Buffet, time=31.00, type=cd, spellId=23339, triggerDeltas = 0.00, 30.91, 33.88, 38.88, 32.34, 33.96, 35.67, 31.77
		[  0.00] ENCOUNTER_START: 613, Firemaw, 186, 40, 0
		[ 30.91] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
			 Triggered 7x, delta times: 30.91, 33.88, 38.88, 32.34, 33.96, 35.67, 31.77

Announces:
	Casting Shadow Flame: 2.0 sec, type=cast, spellId=22539, triggerDeltas = 19.43, 17.83, 22.67, 21.05, 17.64, 17.96, 22.67, 24.25, 24.29, 21.08, 24.26
		[ 19.43] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
			 Triggered 11x, delta times: 19.43, 17.83, 22.67, 21.05, 17.64, 17.96, 22.67, 24.25, 24.29, 21.08, 24.26
	Flame Buffet on >%s< (%d), type=stack, spellId=23341, triggerDeltas = 17.82, 33.86, 11.51, 12.94, 3.24, 48.55, 24.28, 6.47, 27.52, 43.72
		[ 17.82] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 4, 0
			 Triggered 10x, delta times: 17.82, 33.86, 11.51, 12.94, 3.24, 48.55, 24.28, 6.47, 27.52, 43.72

Special warnings:
	Wing Buffet!, type=spell, spellId=23339, triggerDeltas = 30.91, 33.88, 38.88, 32.34, 33.96, 35.67, 31.77
		[ 30.91] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
			 Triggered 7x, delta times: 30.91, 33.88, 38.88, 32.34, 33.96, 35.67, 31.77
	Static Electricity - move away from others, type=moveaway, spellId=366305, triggerDeltas = 48.59, 6.53, 59.86, 9.09, 28.13, 6.47, 61.55, 8.07
		[ 48.59] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 7, 0
			 Triggered 8x, delta times: 48.59, 6.53, 59.86, 9.09, 28.13, 6.47, 61.55, 8.07

Yells:
	Static Electricity on PlayerName (%d), type=count, spellId=366305
		[ 48.59] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 7, 0
			 Triggered 12x, delta times: 48.59, 3.10, 3.43, 59.86, 6.47, 2.62, 28.13, 3.23, 3.24, 61.55, 3.23, 4.84

Voice pack sounds:
	VoicePack/runout
		[ 48.59] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 7, 0
			 Triggered 8x, delta times: 48.59, 6.53, 59.86, 9.09, 28.13, 6.47, 61.55, 8.07

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 613, Firemaw, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 23339 22539, SPELL_AURA_APPLIED_DOSE 23341 366305, SPELL_AURA_APPLIED 366305
		StartTimer: 18.0, Shadow Flame
		StartTimer: 30.0, Wing Buffet
	[ 17.82] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 4, 0
		ShowAnnounce: Flame Buffet on PlayerName (4)
	[ 19.43] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[ 30.91] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
		StartTimer: 31.0, Wing Buffet
		ShowSpecialWarning: Wing Buffet!
	[ 37.26] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[ 48.59] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 7, 0
		ShowSpecialWarning: Static Electricity - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Static Electricity on PlayerName (7)
	[ 51.68] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 4, 0
		ShowAnnounce: Flame Buffet on PlayerName (4)
	[ 51.69] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 8, 0
		ShowYell: Static Electricity on PlayerName (8)
	[ 55.12] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 9, 0
		ShowSpecialWarning: Static Electricity - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Static Electricity on PlayerName (9)
	[ 59.93] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[ 63.19] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 6, 0
		ShowAnnounce: Flame Buffet on PlayerName (6)
	[ 64.79] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
		StartTimer: 31.0, Wing Buffet
		ShowSpecialWarning: Wing Buffet!
	[ 76.13] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 8, 0
		ShowAnnounce: Flame Buffet on PlayerName (8)
	[ 79.37] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 10, 0
		ShowAnnounce: Flame Buffet on PlayerName (10)
	[ 80.98] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[ 98.62] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[103.67] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
		StartTimer: 31.0, Wing Buffet
		ShowSpecialWarning: Wing Buffet!
	[114.98] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 7, 0
		ShowSpecialWarning: Static Electricity - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Static Electricity on PlayerName (7)
	[116.58] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[121.45] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 8, 0
		ShowYell: Static Electricity on PlayerName (8)
	[124.07] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 9, 0
		ShowSpecialWarning: Static Electricity - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Static Electricity on PlayerName (9)
	[127.92] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 4, 0
		ShowAnnounce: Flame Buffet on PlayerName (4)
	[136.01] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
		StartTimer: 31.0, Wing Buffet
		ShowSpecialWarning: Wing Buffet!
	[139.25] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[152.20] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 4, 0
		ShowAnnounce: Flame Buffet on PlayerName (4)
	[152.20] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 7, 0
		ShowSpecialWarning: Static Electricity - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Static Electricity on PlayerName (7)
	[155.43] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 8, 0
		ShowYell: Static Electricity on PlayerName (8)
	[158.67] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 6, 0
		ShowAnnounce: Flame Buffet on PlayerName (6)
	[158.67] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 9, 0
		ShowSpecialWarning: Static Electricity - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Static Electricity on PlayerName (9)
	[163.50] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[169.97] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
		StartTimer: 31.0, Wing Buffet
		ShowSpecialWarning: Wing Buffet!
	[186.19] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 4, 0
		ShowAnnounce: Flame Buffet on PlayerName (4)
	[187.79] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[205.64] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
		StartTimer: 31.0, Wing Buffet
		ShowSpecialWarning: Wing Buffet!
	[208.87] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[220.22] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 7, 0
		ShowSpecialWarning: Static Electricity - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Static Electricity on PlayerName (7)
	[223.45] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 8, 0
		ShowYell: Static Electricity on PlayerName (8)
	[228.29] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Static Electricity] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 366305, Static Electricity, 0, DEBUFF, 9, 0
		ShowSpecialWarning: Static Electricity - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Static Electricity on PlayerName (9)
	[229.91] SPELL_AURA_APPLIED_DOSE: [Firemaw->Healer3: Flame Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, Player-1-00000007, Healer3, 0x511, 23341, Flame Buffet, 0, DEBUFF, 4, 0
		ShowAnnounce: Flame Buffet on PlayerName (4)
	[233.13] SPELL_CAST_START: [Firemaw: Shadow Flame] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 22539, Shadow Flame, 0, 0
		ShowAnnounce: Casting Shadow Flame: 2.0 sec
		StartTimer: 14.0, Shadow Flame
	[237.41] SPELL_CAST_START: [Firemaw: Wing Buffet] Creature-0-1-469-1-11983-0000000001, Firemaw, 0xa48, "", nil, 0x0, 23339, Wing Buffet, 0, 0
		StartTimer: 31.0, Wing Buffet
		ShowSpecialWarning: Wing Buffet!
	[250.94] ENCOUNTER_END: 613, Firemaw, 186, 40, 0, 0
		EndCombat: ENCOUNTER_END
]]
