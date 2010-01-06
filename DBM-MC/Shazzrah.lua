local mod	= DBM:NewMod("Shazzrah", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(12264)
mod:RegisterCombat("combat")

mod:RegisterEvents(
)