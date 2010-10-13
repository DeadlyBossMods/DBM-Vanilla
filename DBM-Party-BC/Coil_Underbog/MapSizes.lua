local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("TheUnderbog",
	1, 894.918014526367, 596.612991333008,
	2, 894.918014526367, 596.612991333008,
	3, 894.918014526367, 596.612991333008
)