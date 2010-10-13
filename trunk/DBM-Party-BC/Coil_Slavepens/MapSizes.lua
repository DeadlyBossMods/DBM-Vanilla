local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("TheSlavePens",
	1, 890.058124542236, 593.372009277344,
	2, 890.058124542236, 593.372009277344
)