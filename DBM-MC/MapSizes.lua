local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13329 then return end

DBM:RegisterMapSize("MoltenCore",
	1, 1264.80006408691, 843.199066162109
)