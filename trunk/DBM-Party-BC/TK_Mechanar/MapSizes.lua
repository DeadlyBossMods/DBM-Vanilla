local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("TheMechanar",
	1, 676.238006591797, 450.824989318848,
	2, 676.238006591797, 450.824989318848
)