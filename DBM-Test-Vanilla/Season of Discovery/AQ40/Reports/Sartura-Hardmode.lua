DBM.Test:Report[[
Test: SoD/AQ40/Sartura/Hardmode
Mod:  DBM-Raids-Vanilla/Sartura

Findings:
	None

Unused objects:
	[Special Warning] Whirlwind - run away, type=run, spellId=26083

Timers:
	None

Announces:
	Enrage soon, type=soon, spellId=8269, triggerDeltas = 369.48
		[369.48] UNIT_HEALTH: target, 0
	Enrage, type=spell, spellId=8269, triggerDeltas = 403.19
		[403.19] SPELL_CAST_SUCCESS: [Battleguard Sartura: Enrage] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 8269, Enrage, 0, 0
	Whirlwind, type=spell, spellId=26083, triggerDeltas = 12.90, 25.98, 24.25, 24.29, 22.70, 24.30, 27.54, 24.26, 25.87, 24.27, 25.95, 21.07, 25.89, 29.14, 21.07, 25.89, 27.54, 24.31, 22.63, 24.28
		[ 12.90] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
			 Triggered 20x, delta times: 12.90, 25.98, 24.25, 24.29, 22.70, 24.30, 27.54, 24.26, 25.87, 24.27, 25.95, 21.07, 25.89, 29.14, 21.07, 25.89, 27.54, 24.31, 22.63, 24.28

Special warnings:
	%s damage - move away, type=gtfo, spellId=26084, triggerDeltas = 77.14, 38.00, 158.19, 91.15, 25.90
		[ 77.14] SPELL_DAMAGE: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
			 Triggered 3x, delta times: 77.14, 196.19, 91.15
		[115.14] SPELL_MISSED: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
			 Triggered 2x, delta times: 115.14, 275.24

Yells:
	None

Voice pack sounds:
	VoicePack/watchfeet
		[ 77.14] SPELL_DAMAGE: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
			 Triggered 3x, delta times: 77.14, 196.19, 91.15
		[115.14] SPELL_MISSED: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
			 Triggered 2x, delta times: 115.14, 275.24

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 711, Battleguard Sartura, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 26083 8269, SPELL_DAMAGE 26084, SPELL_MISSED 26084
		RegisterEvents: ShortTerm, UNIT_HEALTH
		RegisterEvents: Regular, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[ 12.90] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[ 38.88] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[ 63.13] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[ 77.14] SPELL_DAMAGE: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
		AntiSpam: gtfo
		ShowSpecialWarning: Whirlwind damage - move away
		PlaySound: VoicePack/watchfeet
	[ 87.42] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[110.12] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[115.14] SPELL_MISSED: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
		AntiSpam: gtfo
		ShowSpecialWarning: Whirlwind damage - move away
		PlaySound: VoicePack/watchfeet
	[134.42] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[161.96] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[186.22] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[212.09] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[236.36] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[262.31] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[273.33] SPELL_DAMAGE: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
		AntiSpam: gtfo
			Filtered: 1x SPELL_DAMAGE at 274.33
		ShowSpecialWarning: Whirlwind damage - move away
		PlaySound: VoicePack/watchfeet
	[283.38] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[309.27] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[338.41] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[359.48] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[364.48] SPELL_DAMAGE: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
		AntiSpam: gtfo
		ShowSpecialWarning: Whirlwind damage - move away
		PlaySound: VoicePack/watchfeet
	[369.48] UNIT_HEALTH: target, 0
		ShowAnnounce: Enrage soon
		UnregisterEvents: ShortTerm, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
		UnregisterEvents: Regular, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[385.37] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[390.38] SPELL_MISSED: [Battleguard Sartura->Healer1: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, Player-1-00000005, Healer1, 0x511, 26084, Whirlwind, 0, 0
		AntiSpam: gtfo
		ShowSpecialWarning: Whirlwind damage - move away
		PlaySound: VoicePack/watchfeet
	[403.19] SPELL_CAST_SUCCESS: [Battleguard Sartura: Enrage] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 8269, Enrage, 0, 0
		ShowAnnounce: Enrage
	[412.91] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[437.22] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[459.85] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[484.13] SPELL_CAST_SUCCESS: [Battleguard Sartura: Whirlwind] Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, "", nil, 0x0, 26083, Whirlwind, 0, 0
		AntiSpam: 1
		ShowAnnounce: Whirlwind
	[487.65] UNIT_DIED: [->Battleguard Sartura] "", nil, 0x0, Creature-0-1-531-1-15516-0000000001, Battleguard Sartura, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
]]
