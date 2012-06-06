local mod = DBM:NewMod("Syth", "DBM-Party-BC", 9)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))

mod:SetCreatureID(18472)
mod:SetModelID(20599)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_SUMMON"
)

local warnSummon   = mod:NewAnnounce("SummonElementals", 3, 33539)

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(33537, 33538, 33539, 33540) and self:AntiSpam() then
		warnSummon:Show()
	end
end