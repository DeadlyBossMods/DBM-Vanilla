local WowBuild = select(2, GetBuildInfo())
if tonumber(WowBuild) < 13165 then return end

DBM:RegisterMapSize("TheBotanica",
	1, 757.401992797852, 504.934997558594
)