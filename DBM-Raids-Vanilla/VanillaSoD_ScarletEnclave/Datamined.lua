if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("ScarletDatamine", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")
mod:SetZone(2856)
mod.isTrashMod = true
mod.isTrashModBossFightAllowed = true

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 1233901",
	"SPELL_AURA_APPLIED_DOSE 1233901",
	"UNIT_AURA player target"
)



local warnPoison		= mod:NewTargetNoFilterAnnounce(1233901)
local specWarnPoison	= mod:NewSpecialWarningYou(1233901, nil, nil, nil, 1, 2)
local yellPoison		= mod:NewYell(1233901)


function mod:PoisonYou()
	if self:AntiSpam(10, "Poison")  then
		specWarnPoison:Show()
		specWarnPoison:Play("bombyou")
		yellPoison:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1233901) then
		warnPoison:CombinedShow(0.1, args.destName)
		if args:IsPlayer() then
			self:PoisonYou()
		end
		self:SetIcon(args.destName, 8) -- FIXME: use different icons in a mod with proper icon id sync
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED


function mod:UNIT_AURA(uId)
	if UnitIsUnit(uId, "player") and DBM:UnitAura(uId, 1233901) then
		self:PoisonYou()
	end
end
