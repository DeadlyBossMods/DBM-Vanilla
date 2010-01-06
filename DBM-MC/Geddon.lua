local mod	= DBM:NewMod("Geddon", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(12056)
mod:RegisterCombat("combat")

mod:RegisterEvents(
)