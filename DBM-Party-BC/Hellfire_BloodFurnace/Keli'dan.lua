local mod	= DBM:NewMod("Keli'dan", "DBM-Party-BC", 2)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17377, 17653)--17377 is boss, 17653 are channelers that just pull with him.
mod:SetModelID(17153)

mod:RegisterCombat("combat")
mod:RegisterKill("kill", 17377)

mod:RegisterEvents(
	"SPELL_AURA_APPLIED"
)