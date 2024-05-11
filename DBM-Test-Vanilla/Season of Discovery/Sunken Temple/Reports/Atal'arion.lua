DBM.Test:Report[[
Test: SoD/ST/Atalarion
Mod:  DBM-Raids-Vanilla/AtalalarionSoD

Registered but untriggered events:
	None

Unused objects:
	None

Timers:
	Pillars of Might (%s), time=12.20, type=cdcount, spellId=437503
		[ 0.00] ENCOUNTER_START: 2952, Atal'alarion, 215, 20, 0
		[ 6.30] SPELL_CAST_START: [Atal'alarion: Pillars of Might] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437503, Pillars of Might, 0, 0
			 Triggered 4x, delta times: 6.3, 13.34, 12.02, 13.53
	Demolishing Smash (%s), time=27.10, type=cdcount, spellId=437597
		[ 0.00] ENCOUNTER_START: 2952, Atal'alarion, 215, 20, 0
		[24.14] SPELL_CAST_START: [Atal'alarion: Demolishing Smash] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437597, Demolishing Smash, 0, 0

Announces:
	Pillars of Might (%s), type=count, spellId=437503
		[ 6.30] SPELL_CAST_START: [Atal'alarion: Pillars of Might] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437503, Pillars of Might, 0, 0
			 Triggered 4x, delta times: 6.3, 13.34, 12.02, 13.53

Special warnings:
	Demolishing Smash! (%s), type=count, spellId=437597
		[24.14] SPELL_CAST_START: [Atal'alarion: Demolishing Smash] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437597, Demolishing Smash, 0, 0

Yells:
	None

Voice pack sounds:
	VoicePack/carefly
		[24.14] SPELL_CAST_START: [Atal'alarion: Demolishing Smash] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437597, Demolishing Smash, 0, 0
	VoicePack/movetopillar
		Unknown trigger

Event trace:
	[ 0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: InCombat, SPELL_CAST_START 437503 437597
	[ 0.00] ENCOUNTER_START: 2952, Atal'alarion, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 437503 437597
		StartTimer: 4.8, Pillars of Might (1)
		StartTimer: 21.3, Demolishing Smash (1)
	[ 6.30] SPELL_CAST_START: [Atal'alarion: Pillars of Might] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437503, Pillars of Might, 0, 0
		ShowAnnounce: Pillars of Might (1)
		StartTimer: 12.2, Pillars of Might (2)
	[19.64] SPELL_CAST_START: [Atal'alarion: Pillars of Might] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437503, Pillars of Might, 0, 0
		ShowAnnounce: Pillars of Might (2)
		StartTimer: 12.2, Pillars of Might (3)
	[24.14] SPELL_CAST_START: [Atal'alarion: Demolishing Smash] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437597, Demolishing Smash, 0, 0
		ShowSpecialWarning: Demolishing Smash! (1)
		PlaySound: VoicePack/carefly
		StartTimer: 27.1, Demolishing Smash (2)
	Unknown trigger
		PlaySound: VoicePack/movetopillar
	[31.66] SPELL_CAST_START: [Atal'alarion: Pillars of Might] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437503, Pillars of Might, 0, 0
		ShowAnnounce: Pillars of Might (3)
		StartTimer: 12.2, Pillars of Might (4)
	[45.19] SPELL_CAST_START: [Atal'alarion: Pillars of Might] Creature-0-5208-109-4570-218624-00003BC782, Atal'alarion, 0xa48, "", nil, 0x0, 437503, Pillars of Might, 0, 0
		ShowAnnounce: Pillars of Might (4)
		StartTimer: 12.2, Pillars of Might (5)
]]
