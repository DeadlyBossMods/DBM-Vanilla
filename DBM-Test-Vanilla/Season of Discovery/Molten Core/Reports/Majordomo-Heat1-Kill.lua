DBM.Test:Report[[
Test: SoD/MC/Majordomo/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Majordomo

Findings:
	Unused event registration: SPELL_CAST_START 461056 (Raging Flare)
	Unused event registration: SPELL_CAST_SUCCESS 461056 (Raging Flare)

Unused objects:
	[Announce] Damage Shield, type=spell, spellId=21075
	[Special Warning] Raging Flare!, type=spell, spellId=461056

Timers:
	Next Shield, time=30.30, type=cd, spellId=<none>, triggerDeltas = 0.00, 28.91, 30.73, 30.74, 30.81, 30.72, 30.71, 30.75, 30.79
		[  0.00] ENCOUNTER_START: 671, Majordomo Executus, 226, 20, 0
		[ 28.91] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
			 Triggered 5x, delta times: 28.91, 123.00, 30.71, 30.75, 30.79
		[ 59.64] SPELL_CAST_SUCCESS: [Majordomo Executus: Damage Shield] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 21075, Damage Shield, 0, 0
			 Triggered 3x, delta times: 59.64, 30.74, 30.81
	Teleport, time=25.00, type=cd, spellId=20534, triggerDeltas = 0.00, 17.57, 29.12, 29.14, 27.56, 26.30, 27.48, 30.31, 25.89, 29.17
		[  0.00] ENCOUNTER_START: 671, Majordomo Executus, 226, 20, 0
		[ 17.57] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
			 Triggered 9x, delta times: 17.57, 29.12, 29.14, 27.56, 26.30, 27.48, 30.31, 25.89, 29.17
	Magic Reflection ends, time=10.00, type=active, spellId=20619, triggerDeltas = 28.91, 123.00, 30.71, 30.75, 30.79
		[ 28.91] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
			 Triggered 5x, delta times: 28.91, 123.00, 30.71, 30.75, 30.79
	Damage Shield ends, time=10.00, type=active, spellId=21075, triggerDeltas = 59.64, 30.74, 30.81
		[ 59.64] SPELL_CAST_SUCCESS: [Majordomo Executus: Damage Shield] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 21075, Damage Shield, 0, 0
			 Triggered 3x, delta times: 59.64, 30.74, 30.81
	Raging Flare, time=30.00, type=next, spellId=461056, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 671, Majordomo Executus, 226, 20, 0

Announces:
	Teleport on >%s<, type=target, spellId=20534, triggerDeltas = 17.57, 29.12, 29.14, 27.56, 26.30, 27.48, 30.31, 25.89, 29.17
		[ 17.57] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
			 Triggered 9x, delta times: 17.57, 29.12, 29.14, 27.56, 26.30, 27.48, 30.31, 25.89, 29.17

Special warnings:
	Magic Reflection on >%s< - stop attacking, type=reflect, spellId=20619, triggerDeltas = 28.91, 123.00, 30.71, 30.75, 30.79
		[ 28.91] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
			 Triggered 5x, delta times: 28.91, 123.00, 30.71, 30.75, 30.79
	Damage Shield on >%s< - stop attacking, type=reflect, spellId=21075, triggerDeltas = 59.64, 30.74, 30.81
		[ 59.64] SPELL_CAST_SUCCESS: [Majordomo Executus: Damage Shield] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 21075, Damage Shield, 0, 0
			 Triggered 3x, delta times: 59.64, 30.74, 30.81
	Dark Mending - interrupt >%s<!, type=interrupt, spellId=364908, triggerDeltas = 35.38, 6.47, 3.22, 1.62, 1.62, 48.56, 39.28, 6.07, 35.95, 14.18, 21.02
		[ 35.38] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-00000000BC, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
			 Triggered 11x, delta times: 35.38, 6.47, 3.22, 1.62, 1.62, 48.56, 39.28, 6.07, 35.95, 14.18, 21.02

Yells:
	None

Voice pack sounds:
	VoicePack/kickcast
		[ 35.38] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-00000000BC, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
			 Triggered 11x, delta times: 35.38, 6.47, 3.22, 1.62, 1.62, 48.56, 39.28, 6.07, 35.95, 14.18, 21.02
	VoicePack/stopattack
		[ 28.91] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
			 Triggered 5x, delta times: 28.91, 123.00, 30.71, 30.75, 30.79
		[ 59.64] SPELL_CAST_SUCCESS: [Majordomo Executus: Damage Shield] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 21075, Damage Shield, 0, 0
			 Triggered 3x, delta times: 59.64, 30.74, 30.81

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 671, Majordomo Executus, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 461056 364908, SPELL_CAST_SUCCESS 20619 21075 20534 461056
		StartTimer: 19.4, Teleport
		StartTimer: 27.8, Next Shield
		StartTimer: 16.0, Raging Flare
	[ 17.57] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[ 28.91] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
		ShowSpecialWarning: Magic Reflection on Boss - stop attacking
		PlaySound: VoicePack/stopattack
		StartTimer: 10.0, Magic Reflection ends
		StartTimer: 33.9, Next Shield
	[ 35.38] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-00000000BC, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[ 41.85] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-0000000001, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[ 45.07] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-00000000BC, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[ 46.69] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[ 46.69] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-00000000BC, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[ 48.31] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-0000000001, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[ 59.64] SPELL_CAST_SUCCESS: [Majordomo Executus: Damage Shield] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 21075, Damage Shield, 0, 0
		ShowSpecialWarning: Damage Shield on Boss - stop attacking
		PlaySound: VoicePack/stopattack
		StartTimer: 10.0, Damage Shield ends
		StartTimer: 33.9, Next Shield
	[ 75.83] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[ 90.38] SPELL_CAST_SUCCESS: [Majordomo Executus: Damage Shield] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 21075, Damage Shield, 0, 0
		ShowSpecialWarning: Damage Shield on Boss - stop attacking
		PlaySound: VoicePack/stopattack
		StartTimer: 10.0, Damage Shield ends
		StartTimer: 33.9, Next Shield
	[ 96.87] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-0000000001, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[103.39] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[121.19] SPELL_CAST_SUCCESS: [Majordomo Executus: Damage Shield] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 21075, Damage Shield, 0, 0
		ShowSpecialWarning: Damage Shield on Boss - stop attacking
		PlaySound: VoicePack/stopattack
		StartTimer: 10.0, Damage Shield ends
		StartTimer: 33.9, Next Shield
	[129.69] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[136.15] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-0000000001, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[142.22] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-0000000109, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[151.91] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
		ShowSpecialWarning: Magic Reflection on Boss - stop attacking
		PlaySound: VoicePack/stopattack
		StartTimer: 10.0, Magic Reflection ends
		StartTimer: 33.9, Next Shield
	[157.17] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[178.17] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-0000000109, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[182.62] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
		ShowSpecialWarning: Magic Reflection on Boss - stop attacking
		PlaySound: VoicePack/stopattack
		StartTimer: 10.0, Magic Reflection ends
		StartTimer: 33.9, Next Shield
	[187.48] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[192.35] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-0000000109, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[213.37] SPELL_CAST_START: [Flamewaker Healer: Dark Mending] Creature-0-1-409-1-228837-0000000109, Flamewaker Healer, 0xa48, "", nil, 0x0, 364908, Dark Mending, 0, 0
		ShowSpecialWarning: Dark Mending - interrupt Flamewaker Healer!
		PlaySound: VoicePack/kickcast
	[213.37] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
		ShowSpecialWarning: Magic Reflection on Boss - stop attacking
		PlaySound: VoicePack/stopattack
		StartTimer: 10.0, Magic Reflection ends
		StartTimer: 33.9, Next Shield
	[213.37] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[242.54] SPELL_CAST_SUCCESS: [Majordomo Executus->Tank1: Teleport] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, Player-1-00000002, Tank1, 0x512, 20534, Teleport, 0, 0
		ShowAnnounce: Teleport on Tank1
		StartTimer: 25.0, Teleport
	[244.16] SPELL_CAST_SUCCESS: [Majordomo Executus: Magic Reflection] Creature-0-1-409-1-228437-0000000001, Majordomo Executus, 0xa48, "", nil, 0x0, 20619, Magic Reflection, 0, 0
		ShowSpecialWarning: Magic Reflection on Boss - stop attacking
		PlaySound: VoicePack/stopattack
		StartTimer: 10.0, Magic Reflection ends
		StartTimer: 33.9, Next Shield
	[253.52] ENCOUNTER_END: 671, Majordomo Executus, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
