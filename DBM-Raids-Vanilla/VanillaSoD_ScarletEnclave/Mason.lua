if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Mason", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3197)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 1231592 1229005",
	"SPELL_AURA_APPLIED_DOSE 1229005"
)

-- Mortal Wound, might require a tank swap, but not sure when exactly, for now just a stack warning
local warnMortalWoundStack = mod:NewStackAnnounce(1229005)

-- Decurse this
local warnDrown = mod:NewSpecialWarningDispel(1231592, "RemoveCurse", nil, nil, 2, 8)

-- Canon Fire and Burning Oil: I don't understand these, very low damage, but can stack. Probably need a GTFO warning, but when do we trigger it?

local berserkTimer = mod:NewBerserkTimer(360)

function mod:OnCombatStart(delay)
	berserkTimer:Start(360 - delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1231592) then
		if self:AntiSpam(5, "Decurse") then
			warnDrown:Show(RAID)
			warnDrown:Play("helpdispel")
		end
	elseif args:IsSpell(1229005) then
		local amount = args.amount or 1
		local uId = DBM:GetRaidUnitId(args.destName)
		if self:IsTanking(uId, nil, nil, false, args.sourceGUID) then
			warnMortalWoundStack:Show(args.destName, amount)
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
