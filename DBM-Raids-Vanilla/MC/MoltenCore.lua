if not DBM:IsSeasonal("SeasonOfDiscovery") then return end
local mod	= DBM:NewMod("MoltenCore", "DBM-Raids-Vanilla", 6)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
--mod:SetCreatureID(11988)
mod:SetEncounterID(3018)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 460890",
	"SPELL_AURA_APPLIED_DOSE 460890",
	"SPELL_CAST_SUCCESS 462619"
)

local warnMeltArmor	= mod:NewStackAnnounce(460890, 2)
local warnAdds		= mod:NewSpellAnnounce(462619)

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(460890) then
		local uId = DBM:GetRaidUnitId(args.destName)
		if self:IsTanking(uId, nil, nil, false, args.sourceGUID) then
			local amount = args.amount or 1
			warnMeltArmor:Show(args.destName, amount)
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(462619) then
		warnAdds:Show()
	end
end
