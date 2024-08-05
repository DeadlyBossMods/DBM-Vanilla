DBM.Test:Report[[
Test: SoD/MC/Lucifron/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Lucifron

Findings:
	Unused event registration: SPELL_AURA_REMOVED 20604 (Dominate Mind)
	Unused event registration: SPELL_CAST_START 20604 (Dominate Mind)
	Unused event registration: SPELL_CAST_SUCCESS 460931 (Impending Doom)
	Unused event registration: SPELL_CAST_SUCCESS 460932 (Lucifron's Curse)

Unused objects:
	[Announce] Dominate Mind on >%s<, type=target, spellId=20604
	[Special Warning] Dominate Mind on you, type=you, spellId=20604
	[Yell] Dominate Mind on PlayerName, type=yell, spellId=20604

Timers:
	Impending Doom, time=20.00, type=cd, spellId=19702, triggerDeltas = 0.00, 6.49, 16.19, 17.79, 16.19
		[ 0.00] ENCOUNTER_START: 663, Lucifron, 226, 20, 0
		[ 6.49] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19702, Impending Doom, 0, 0
			 Triggered 4x, delta times: 6.49, 16.19, 17.79, 16.19
	Lucifron's Curse, time=20.50, type=cd, spellId=19703, triggerDeltas = 0.00, 12.66, 22.97
		[ 0.00] ENCOUNTER_START: 663, Lucifron, 226, 20, 0
		[12.66] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19703, Lucifron's Curse, 0, 0
			 Triggered 2x, delta times: 12.66, 22.97

Announces:
	Impending Doom, type=spell, spellId=19702, triggerDeltas = 6.49, 16.19, 17.79, 16.19
		[ 6.49] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19702, Impending Doom, 0, 0
			 Triggered 4x, delta times: 6.49, 16.19, 17.79, 16.19
	Lucifron's Curse, type=spell, spellId=19703, triggerDeltas = 12.66, 22.97
		[12.66] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19703, Lucifron's Curse, 0, 0
			 Triggered 2x, delta times: 12.66, 22.97

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[ 0.00] ENCOUNTER_START: 663, Lucifron, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 20604, SPELL_CAST_SUCCESS 19702 19703 460931 460932, SPELL_AURA_REMOVED 20604
		StartTimer: 7.0, Impending Doom
		StartTimer: 12.0, Lucifron's Curse
	[ 6.49] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19702, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[12.66] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19703, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[22.68] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19702, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[35.63] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19703, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[40.47] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19702, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[56.66] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000001, Lucifron, 0xa48, "", nil, 0x0, 19702, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[58.03] ENCOUNTER_END: 663, Lucifron, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 20604
]]
