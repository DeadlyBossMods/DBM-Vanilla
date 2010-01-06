local mod	= DBM:NewMod("Venoxis", "DBM-ZG", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(14507)
mod:RegisterCombat("combat")

mod:RegisterEvents(
)