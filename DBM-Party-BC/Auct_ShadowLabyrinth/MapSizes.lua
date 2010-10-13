local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("ShadowLabyrinth",
	1, 930.521987915039, 620.347671508789
)