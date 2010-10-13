local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("Mana-Tombs",
	1, 763.285003662109, 508.856811523438
)