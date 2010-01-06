local mod	= DBM:NewMod("Nefarian", "DBM-BWL", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(11583)
mod:RegisterCombat("yell", L.YellPull)

mod:RegisterEvents(
)