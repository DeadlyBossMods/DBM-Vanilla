local mod	= DBM:NewMod("Stalker", "DBM-Party-BC", 5)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17882)
mod:SetModelID(18194)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START"
)