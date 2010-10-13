local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("TheBloodFurnace",
	1, 898.519012451172, 599.012886047363
)