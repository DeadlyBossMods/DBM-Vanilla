local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("AuchenaiCrypts",
	1, 817.539978027344, 545.026992797852,602,
	2, 817.539978027344, 545.026992797852,602
)