DBM.Test:DefineTest{
	name = "SoD/ScarletEnclave/Trash/Synthetic",
	gameVersion = "SeasonOfDiscovery",
	addon = "DBM-Raids-Vanilla",
	mod = "SE_Trash",
	instanceInfo = {name = "Scarlet Enclave", instanceType = "raid", difficultyID = 186, difficultyName = "40 Player", difficultyModifier = 0, maxPlayers = 40, dynamicDifficulty = 0, isDynamic = false, instanceID = 2856, instanceGroupSize = 40, lfgDungeonID = nil},
	players = {
		{"Healer1", "Player-1-00000001", class = "SHAMAN", logRecorder = true},
	},
	perspective = "Healer1",
	log = {
		{1.00, "COMBAT_LOG_EVENT_UNFILTERED", "DAMAGE_SHIELD", "Creature-0-1-2856-1-240798-0000000001", "Scarlet Knight", 0xa48, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1232703, "Retribution Aura", 0x0, 202, -1},
		{2.00, "COMBAT_LOG_EVENT_UNFILTERED", "DAMAGE_SHIELD_MISSED", "Creature-0-1-2856-1-240798-0000000001", "Scarlet Knight", 0xa48, 0x0, "Player-1-00000001", "Healer1", 0x510, 0x0, 1232703, "Retribution Aura", 0x0, 202, -1},
	},
}
