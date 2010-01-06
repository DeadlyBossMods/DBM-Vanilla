local mod	= DBM:NewMod("Jindo", "DBM-ZG", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(11380)
mod:RegisterCombat("combat")

mod:RegisterEvents(
)