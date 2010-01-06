local mod	= DBM:NewMod("Ebonroc", "DBM-BWL", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(14601)
mod:RegisterCombat("combat")

mod:RegisterEvents(
)