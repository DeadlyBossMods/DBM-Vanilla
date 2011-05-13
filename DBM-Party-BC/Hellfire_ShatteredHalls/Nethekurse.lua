local mod	= DBM:NewMod("Nethekurse", "DBM-Party-BC", 3)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(16807)
mod:SetModelID(16628)

mod:RegisterCombat("combat")

mod:RegisterEvents(
)
