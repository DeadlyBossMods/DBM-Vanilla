DBM.Test:DefineTest{
	name = "SoD/ScarletEnclave/Beatrix/Normal",
	gameVersion = "SeasonOfDiscovery",
	addon = "DBM-Raids-Vanilla",
	mod = "Beatrix",
	instanceInfo = {name = "Scarlet Enclave", instanceType = "raid", difficultyID = 186, difficultyName = "40 Player", difficultyModifier = 0, maxPlayers = 40, dynamicDifficulty = 0, isDynamic = false, instanceID = 2856, instanceGroupSize = 40, lfgDungeonID = nil},
	players = {
		{"Healer1", "Player-1-00000001", class = "SHAMAN", logRecorder = true},
	},
	perspective = "Healer1",
	log = {
		{0.00, "ENCOUNTER_START", 3187, "Beatrix", 186, 40},
		{0.01, "IsEncounterInProgress()", true},
		{0.00, "GetInstanceInfo()", "Scarlet Enclave", "raid", 186, "40 Player", 40, 0, false, 2856, 40, nil},
		{1.00, "CHAT_MSG_MONSTER_YELL", "Shield Warden, break their ranks!", "High Commander Beatrix", "", "", "", "", 0, 0, "", 0, 2557, nil, 0, false, false, false, false},
		{10.00, "CHAT_MSG_MONSTER_YELL", "At once, Beatrix!", "Cannon Mistress Lind", "", "", "", "", 0, 0, "", 0, 2557, nil, 0, false, false, false, false},
		{35.00, "CHAT_MSG_MONSTER_YELL", "Understood! Ready your lances!", "Knight-Captain Fratley", "", "", "", "", 0, 0, "", 0, 2557, nil, 0, false, false, false, false},
		{60.00, "ENCOUNTER_END", 3187, "Beatrix", 186, 40, 1},
	},
}
