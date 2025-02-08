DBM.Test:DefineTest{
	name = "SoD/Naxx/Hardmode/Military/Synthetic",
	gameVersion = "SeasonOfDiscovery",
	addon = "DBM-Raids-Vanilla",
	mod = "SoD_NaxxHardmode",
	instanceInfo = {name = "Naxxramas", instanceType = "raid", difficultyID = 186, difficultyName = "Heroic", difficultyModifier = 2, maxPlayers = 40, dynamicDifficulty = 0, isDynamic = false, instanceID = 533, instanceGroupSize = 40, lfgDungeonID = nil},
	players = {
		{"Healer1", "Player-1-00000001", class = "SHAMAN", logRecorder = true},
	},
	perspective = "Healer1",
	log = {
		{0.00, "PLAYER_REGEN_DISABLED", "+Entering combat!"},

		-- Fully known emote
		{0.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219060, "Marching Orders", 0x0, "DEBUFF", nil},
		{0.10, "CHAT_MSG_RAID_WARNING", "Get on your knees and PRAY!", "Tandanu", nil, nil, "Tandanu", nil, 0, 0, nil, 0, 2602, "Player-1-00000001", 0, false, false, false, false},
		{0.40, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219058, "Marching Orders", 0x0, "DEBUFF", nil},

		-- Emote only known through EMOTE token
		{10.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219060, "Marching Orders", 0x0, "DEBUFF", nil},
		{10.10, "CHAT_MSG_RAID_WARNING", "Not a real text, but PURR is an emote token", "Tandanu", nil, nil, "Tandanu", nil, 0, 0, nil, 0, 2602, "Player-1-00000001", 0, false, false, false, false},
		{10.40, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219058, "Marching Orders", 0x0, "DEBUFF", nil},

		-- Unknown emote
		{20.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219060, "Marching Orders", 0x0, "DEBUFF", nil},
		{20.10, "CHAT_MSG_RAID_WARNING", "Unknown sadufausd emote", "Tandanu", nil, nil, "Tandanu", nil, 0, 0, nil, 0, 2602, "Player-1-00000001", 0, false, false, false, false},
		{20.40, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219058, "Marching Orders", 0x0, "DEBUFF", nil},

		-- Fallback "Unknown" warning because of missing message
		{30.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219060, "Marching Orders", 0x0, "DEBUFF", nil},
		{30.40, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219058, "Marching Orders", 0x0, "DEBUFF", nil},

		-- Fallback detection: CHAT_MSG_RAID_BOSS_EMOTE
		{40.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219060, "Marching Orders", 0x0, "DEBUFF", nil},
		{40.10, "CHAT_MSG_RAID_BOSS_EMOTE", "%s blabla PRAY bla", "Something", "", "", "", "", 0, 0, "", 0, 6082, nil, 0, false, false, false, false},
		{40.40, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219058, "Marching Orders", 0x0, "DEBUFF", nil},

		-- Fallback detection: RAID_BOSS_EMOTE
		{50.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219060, "Marching Orders", 0x0, "DEBUFF", nil},
		{50.10, "RAID_BOSS_EMOTE", "%s blabla ROAR", "Something", 0, true},
		{50.40, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219058, "Marching Orders", 0x0, "DEBUFF", nil},

		-- Fallback detection: CHAT_MSG_RAID_BOSS_WHISPER
		{60.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219060, "Marching Orders", 0x0, "DEBUFF", nil},
		{60.10, "CHAT_MSG_RAID_BOSS_WHISPER", "blabla SALUTE blabla", "Healer1", 0, false},
		{60.40, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219058, "Marching Orders", 0x0, "DEBUFF", nil},

		-- Fallback detection: no spam on multiple
		{70.00, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_APPLIED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219060, "Marching Orders", 0x0, "DEBUFF", nil},
		{70.10, "RAID_BOSS_EMOTE", "%s blabla ROAR", "Something", 0, true},
		{70.30, "CHAT_MSG_RAID_WARNING", "ROAR for me!", "Tandanu", nil, nil, "Tandanu", nil, 0, 0, nil, 0, 2602, "Player-1-00000001", 0, false, false, false, false},
		{70.40, "COMBAT_LOG_EVENT_UNFILTERED", "SPELL_AURA_REMOVED", "Player-1-00000001", "Healer1", 0x510, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1219058, "Marching Orders", 0x0, "DEBUFF", nil},

	},
}
