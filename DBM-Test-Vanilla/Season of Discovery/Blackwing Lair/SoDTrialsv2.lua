-- Bomb timers were changed in week 3
DBM.Test:DefineTest{
	name = "SoD/BWL/SoDTrials/Synthetic/Week3",
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
		-- A bit async, Blue first, this is pretty much what we got
		{1.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		{6.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		-- Wait for a minute to check auto-loop correctness
		-- Very async, Blue first
		{60.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		{80.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		-- Green first, a bit async
		{150.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466435, "Nature's Fury", 0x0, "DEBUFF", nil},
		{151.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Creature-0-1-469-1-231678-0000000001", "(DNT) Invisible Stalker", 0xa48, 0x0, "Player-1-00000001", "Player1", 0x510, 0x0, 466357, "Arcane Bomb", 0x0, "DEBUFF", nil},
		{180.00, "PLAYER_REGEN_DISABLED", "+Entering combat!"}, -- To keep the test alive
	},
}
