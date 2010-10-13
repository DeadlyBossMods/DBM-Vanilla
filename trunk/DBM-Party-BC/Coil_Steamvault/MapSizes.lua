local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("TheSteamvault",
	1, 786.764007568359, 524.508987426758,
	2, 786.764007568359, 524.508987426758
)