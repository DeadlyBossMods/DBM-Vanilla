local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13329 then return end

DBM:RegisterMapSize("AhnQiraj",
	1, 2777.54411315918, 1851.6904296875,
	2, 977.559936523438, 651.7001953125,
	3, 577.559936523438, 385.0400390625
)