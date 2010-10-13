local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("CoTTheBlackMorass",
	1, 1377.0830078125, 918.749877929688
)