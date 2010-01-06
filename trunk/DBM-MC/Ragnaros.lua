local mod	= DBM:NewMod("Ragnaros", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(11502)
mod:RegisterCombat("combat")

mod:RegisterEvents(
)