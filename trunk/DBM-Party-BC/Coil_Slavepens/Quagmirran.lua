local mod	= DBM:NewMod("Quagmirran", "DBM-Party-BC", 4)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17942)
mod:SetModelID(18224)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START"
)