DBM.Test:DefineTest{
	name = "SoD/ScarletEnclave/Beastmaster/Normal",
	gameVersion = "SeasonOfDiscovery",
	addon = "DBM-Raids-Vanilla",
	mod = "Beastmaster",
	instanceInfo = {name = "Scarlet Enclave", instanceType = "raid", difficultyID = 186, difficultyName = "40 Player", difficultyModifier = 0, maxPlayers = 40, dynamicDifficulty = 0, isDynamic = false, instanceID = 2856, instanceGroupSize = 40, lfgDungeonID = nil},
	players = {
		{"Healer1", "Player-1-00000001", class = "SHAMAN", logRecorder = true},
	},
	perspective = "Healer1",
	log = {
		{0.00, "ENCOUNTER_START", 3196, "Beastmaster", 186, 40},
		{0.00, "GetInstanceInfo()", "Scarlet Enclave", "raid", 186, "40 Player", 40, 0, false, 2856, 40, nil},
		{5.00, "ENCOUNTER_END", 3196, "Beastmaster", 186, 40, 1},
	},
}
