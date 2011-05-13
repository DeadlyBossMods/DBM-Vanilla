local mod	= DBM:NewMod("Kargath", "DBM-Party-BC", 3)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(16808)
mod:SetModelID(19799)

mod:RegisterCombat("combat")

mod:RegisterEvents(
)
