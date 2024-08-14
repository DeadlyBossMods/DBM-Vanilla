DBM.Test:Report[[
Test: SoD/MC/Golemagg/Heat-2/Kill
Mod:  DBM-Raids-Vanilla/Golemagg

Findings:
	Unused event registration: SPELL_CAST_SUCCESS 20553 (Golemagg's Trust)

Unused objects:
	None

Timers:
	Falling Rocks, time=25.00, type=cd, spellId=461463, triggerDeltas = 0.00, 25.90, 30.80
		[ 0.00] ENCOUNTER_START: 670, Golemagg the Incinerator, 226, 20, 0
		[25.90] SPELL_CAST_SUCCESS: "", nil, 0x0, "", nil, 0x0, 461463, Falling Rocks, 0, 0
			 Triggered 2x, delta times: 25.90, 30.80

Announces:
	Earthquake, type=spell, spellId=19798, triggerDeltas = 30.77, 16.18, 30.78
		[30.77] SPELL_CAST_SUCCESS: [Golemagg the Incinerator: Earthquake] Creature-0-1-409-1-228435-0000000001, Golemagg the Incinerator, 0xa48, "", nil, 0x0, 19798, Earthquake, 0, 0
			 Triggered 3x, delta times: 30.77, 16.18, 30.78

Special warnings:
	Falling Rocks - dodge attack, type=dodge, spellId=461463, triggerDeltas = 25.90, 30.80
		[25.90] SPELL_CAST_SUCCESS: "", nil, 0x0, "", nil, 0x0, 461463, Falling Rocks, 0, 0
			 Triggered 2x, delta times: 25.90, 30.80

Yells:
	{rt%1$d}, type=repeaticon, spellId=461463
		[56.70] SPELL_CAST_SUCCESS: "", nil, 0x0, "", nil, 0x0, 461463, Falling Rocks, 0, 0

Voice pack sounds:
	VoicePack/watchstep
		[25.90] SPELL_CAST_SUCCESS: "", nil, 0x0, "", nil, 0x0, 461463, Falling Rocks, 0, 0
			 Triggered 2x, delta times: 25.90, 30.80

Icons:
	None

Event trace:
	[ 0.00] ENCOUNTER_START: 670, Golemagg the Incinerator, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 20553 19798 461463
		StartTimer: 25.0, Falling Rocks
	[25.90] SPELL_CAST_SUCCESS: "", nil, 0x0, "", nil, 0x0, 461463, Falling Rocks, 0, 0
		ShowSpecialWarning: Falling Rocks - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 25.0, Falling Rocks
	[30.77] SPELL_CAST_SUCCESS: [Golemagg the Incinerator: Earthquake] Creature-0-1-409-1-228435-0000000001, Golemagg the Incinerator, 0xa48, "", nil, 0x0, 19798, Earthquake, 0, 0
		ShowAnnounce: Earthquake
	[46.95] SPELL_CAST_SUCCESS: [Golemagg the Incinerator: Earthquake] Creature-0-1-409-1-228435-0000000001, Golemagg the Incinerator, 0xa48, "", nil, 0x0, 19798, Earthquake, 0, 0
		ShowAnnounce: Earthquake
	[56.70] SPELL_CAST_SUCCESS: "", nil, 0x0, "", nil, 0x0, 461463, Falling Rocks, 0, 0
		ShowSpecialWarning: Falling Rocks - dodge attack
		PlaySound: VoicePack/watchstep
		StartTimer: 25.0, Falling Rocks
		ShowYell: {rt0}
	[77.73] SPELL_CAST_SUCCESS: [Golemagg the Incinerator: Earthquake] Creature-0-1-409-1-228435-0000000001, Golemagg the Incinerator, 0xa48, "", nil, 0x0, 19798, Earthquake, 0, 0
		ShowAnnounce: Earthquake
	[78.87] ENCOUNTER_END: 670, Golemagg the Incinerator, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
