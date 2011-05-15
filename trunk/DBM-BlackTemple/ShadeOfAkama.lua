local mod	= DBM:NewMod("Akama", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(22841, 23215, 23216)
mod:SetModelID(21357)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
)

