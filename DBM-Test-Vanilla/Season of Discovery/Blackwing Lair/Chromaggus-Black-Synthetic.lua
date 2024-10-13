
local spells = {
	breath1 = 23187,
	breath2 = 23308,
	breath3 = 23310,
	breath4 = 23313,
	breath5 = 23315,
	fetch = 467883,
	roll = 468594
}
local function spellEvent(time, subEvent, spell)
	local id = spells[spell]
	local name = GetSpellInfo(id)
	return {time, "COMBAT_LOG_EVENT_UNFILTERED", subEvent, "Vehicle-0-1-469-1-14020-0000000001", "Chromaggus", 0xa48, 0x0, "", nil, 0x0, 0x0, id, name, 0x0, nil, nil}
end

DBM.Test:DefineTest{
	name = "SoD/BWL/Chromaggus/Black/Synthetic",
	gameVersion = "SeasonOfDiscovery",
	addon = "DBM-Raids-Vanilla",
	mod = "Chromaggus",
	instanceInfo = {name = "Blackwing Lair", instanceType = "raid", difficultyID = 186, difficultyName = "40 Player", difficultyModifier = 1, maxPlayers = 40, dynamicDifficulty = 0, isDynamic = false, instanceID = 469, instanceGroupSize = 40, lfgDungeonID = nil},
	players = {
		{"Player1", "Player-1-00000008", logRecorder = true},
	},
	perspective = "Player1",
	log = {
		{0.00, "ENCOUNTER_START", 616, "Chromaggus", 186, 40},
		{0.00, "IsEncounterInProgress()", true},
		-- Fetch
		spellEvent(21.00, "SPELL_CAST_SUCCESS", "fetch"),
		-- Regular cast
		spellEvent(30.73, "SPELL_CAST_START",   "breath3"),
		spellEvent(32.73, "SPELL_CAST_SUCCESS", "breath3"),
		-- Volley
		spellEvent(40.73, "SPELL_CAST_START",   "breath1"),
		spellEvent(42.73, "SPELL_CAST_SUCCESS", "breath1"),
		spellEvent(43.67, "SPELL_CAST_START",   "breath2"),
		spellEvent(45.67, "SPELL_CAST_SUCCESS", "breath2"),
		spellEvent(46.90, "SPELL_CAST_START",   "breath3"),
		spellEvent(48.90, "SPELL_CAST_SUCCESS", "breath3"),
		spellEvent(50.12, "SPELL_CAST_START",   "breath4"),
		spellEvent(52.12, "SPELL_CAST_SUCCESS", "breath4"),
		spellEvent(53.37, "SPELL_CAST_START",   "breath5"),
		spellEvent(55.37, "SPELL_CAST_SUCCESS", "breath5"),
		-- Regular cast
		spellEvent(61.45, "SPELL_CAST_START",   "breath2"),
		-- Fetch cancels breath (bug?) Timers are triggered on _START, so not a problem
		spellEvent(61.45, "SPELL_CAST_SUCCESS", "fetch"),
		-- Regular cast
		spellEvent(92.20, "SPELL_CAST_START",   "breath3"),
		spellEvent(94.20, "SPELL_CAST_SUCCESS", "breath3"),
		-- Fetch
		spellEvent(101.90, "SPELL_CAST_SUCCESS", "fetch"),
		-- Volley
		spellEvent(121.34, "SPELL_CAST_START",   "breath1"),
		spellEvent(123.34, "SPELL_CAST_SUCCESS", "breath1"),
		spellEvent(124.57, "SPELL_CAST_START",   "breath2"),
		spellEvent(126.57, "SPELL_CAST_SUCCESS", "breath2"),
		spellEvent(127.80, "SPELL_CAST_START",   "breath3"),
		spellEvent(129.80, "SPELL_CAST_SUCCESS", "breath3"),
		spellEvent(131.10, "SPELL_CAST_START",   "breath4"),
		spellEvent(133.10, "SPELL_CAST_SUCCESS", "breath4"),
		spellEvent(134.30, "SPELL_CAST_START",   "breath5"),
		spellEvent(136.30, "SPELL_CAST_SUCCESS", "breath5"),
		-- Regular cast, delayed by Volley
		spellEvent(139.15, "SPELL_CAST_START",   "breath2"),
		spellEvent(141.15, "SPELL_CAST_SUCCESS", "breath2"),
		-- Fetch without a bad breath interaction
		spellEvent(142.38, "SPELL_CAST_SUCCESS", "fetch"),
		-- Regular cast
		spellEvent(153.73, "SPELL_CAST_START",   "breath3"),
		spellEvent(155.73, "SPELL_CAST_SUCCESS", "breath3"),
		-- 60% HP
		spellEvent(168.3, "SPELL_CAST_SUCCESS", "roll"),
		-- Regular cast, TODO: get a log where this would be affected by roll over
		spellEvent(200.70, "SPELL_CAST_START",   "breath2"),
		spellEvent(202.70, "SPELL_CAST_SUCCESS", "breath2"),
		{230.00, "ENCOUNTER_END", 616, "Chromaggus", 186, 40, 1},
		{230.00, "BOSS_KILL", 616, "Chromaggus"}
	},
}
