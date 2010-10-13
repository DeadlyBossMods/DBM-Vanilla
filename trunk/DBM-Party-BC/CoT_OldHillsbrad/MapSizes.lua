local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("CoTHillsbradFoothills",
	1, 1668.74990844727, 1112.49987792969
)