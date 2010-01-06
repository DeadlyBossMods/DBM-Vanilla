local mod	= DBM:NewMod("Lucifron", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(12118)
mod:RegisterCombat("combat")

mod:RegisterEvents(
)