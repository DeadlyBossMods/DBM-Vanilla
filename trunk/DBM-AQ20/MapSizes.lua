local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13329 then return end

DBM:RegisterMapSize("RuinsofAhnQiraj",
	1, 2512.49987792969, 1675.0
)