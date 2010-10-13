local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("TheArcatraz",
	1, 889.684020996094,593.122680664062,
	2, 889.684020996094,593.122680664062,
	3, 889.684020996094,593.122680664062
)