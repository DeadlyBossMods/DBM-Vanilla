local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("SethekkHalls",
	1, 703.494995117188, 468.996994018555,187.697998046875,
	2, 703.494995117188, 468.996994018555,187.697998046875
)