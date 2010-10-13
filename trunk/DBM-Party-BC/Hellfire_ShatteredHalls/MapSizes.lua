local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("TheShatteredHalls",
	1, 1063.74697875977, 709.164993286133
)