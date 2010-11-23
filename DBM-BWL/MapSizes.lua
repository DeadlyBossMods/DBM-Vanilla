local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13329 then return end

DBM:RegisterMapSize("BlackwingLair",
	1, 499.428039550781, 332.94970703125,
	2, 649.427062988281, 432.94970703125,
	3, 649.427062988281, 432.94970703125,
	4, 649.427062988281, 432.94970703125
)