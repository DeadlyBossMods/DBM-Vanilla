DBM.Test:DefineTest{
	name = "SoD/BWL/SoDTrials/Synthetic/Week1",
	gameVersion = "SeasonOfDiscovery",
	addon = "DBM-Raids-Vanilla",
	mod = "SoDBWLTrials",
	instanceInfo = {name = "Blackwing Lair", instanceType = "raid", difficultyID = 186, difficultyName = "40 Player", difficultyModifier = 6, maxPlayers = 40, dynamicDifficulty = 0, isDynamic = false, instanceID = 469, instanceGroupSize = 40, lfgDungeonID = nil},
	players = {
		{"Player1", "Player-1-00000001"},
		{"Player2", "Player-1-00000002"},
		{"Player3", "Player-1-00000003"},
	},
	perspective = "Player1",
	log = {
		{0.00, "PLAYER_REGEN_DISABLED", "+Entering combat!"},
		-- Both on you
		{1.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		{1.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		-- Both on someone else (same player)
		{10.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000002", "Player2", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		{10.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000002", "Player2", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		-- Both on someone else (different players)
		{19.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000002", "Player2", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		{19.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000003", "Player3", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		-- Blue on you, Green on someone else
		{28.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		{28.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000002", "Player2", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		-- Green on you, Blue on someone else
		{37.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		{37.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000002", "Player2", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		-- Only Blue, you are the target
		{46.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		-- Only Blue, someone else is the the target
		{55.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000002", "Player2", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		-- Only Green, you are the target
		{64.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		-- Only Green, someone else is the the target
		{73.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-2-00000002", "Player2", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		{90.00, "PLAYER_REGEN_ENABLED", "-Leaving combat!"},
		-- We expect a new timer to start at ~120.36, even if not in combat and no buff happens
		{125.00, "PLAYER_REGEN_DISABLED", "+Entering combat!"},
		-- Leaving dungeon
		{128.00, "LOADING_SCREEN_ENABLED"},
		{128.00, "DBM_MOCK_UPDATE_INSTANCE_INFO", {name = "Kalimdor", instanceType = "none", difficultyID = 0, difficultyName = "", difficultyModifier = nil, maxPlayers = 0, dynamicDifficulty = 0, isDynamic = false, instanceID = 1, instanceGroupSize = 0, lfgDungeonID = nil}},
		{128.00, "LOADING_SCREEN_DISABLED"},
		-- And coming back 2 minutes later, time should show up again and show and run until ~262.5, so ~14.5 seconds remaining
		{248.00, "LOADING_SCREEN_ENABLED"},
		{248.00, "DBM_MOCK_UPDATE_INSTANCE_INFO", {name = "Blackwing Lair", instanceType = "raid", difficultyID = 186, difficultyName = "40 Player", difficultyModifier = 6, maxPlayers = 40, dynamicDifficulty = 0, isDynamic = false, instanceID = 469, instanceGroupSize = 40, lfgDungeonID = nil}},
		{248.00, "LOADING_SCREEN_DISABLED"},
		{270.00, "PLAYER_REGEN_DISABLED", "+Entering combat!"}, -- To keep the test alive
	},
}
