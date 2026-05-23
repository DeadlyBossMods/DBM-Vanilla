local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 2
else--retail or wrath classic and later
	catID = 1
end
local mod	= DBM:NewMod("Sartura", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260419000000) -- 2026, April 19th
mod:DisableHardcodedOptions()
mod:SetCreatureID(15516)
mod:SetEncounterID(711)
mod:SetModelID(15583)
mod:SetZone(531)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 26083 8269",
	"UNIT_DIED"
)

mod:NewGtfo{spell = 26084, spellAura = false, spellPeriodicDamage = false}

--Add sundering cleave?
local warnEnrageSoon	= mod:NewSoonAnnounce(8269, 2)
local warnEnrage		= mod:NewSpellAnnounce(8269, 4)
local warnWhirlwind		= mod:NewSpellAnnounce(26083, 3)
local warnGuardDied		= mod:NewAnnounce("WarnGuardDied", 2, "133572")

local specWarnWhirlwind	= mod:NewSpecialWarningRun(26083, nil, nil, 2, 4, 2)
local addsGuidCheck = {}

mod.vb.prewarn_enrage = false
mod.vb.guardsRemaining = 3

function mod:OnCombatStart()
	table.wipe(addsGuidCheck)
	self.vb.guardsRemaining = 3
	self.vb.prewarn_enrage = false
	self:RegisterShortTermEvents(
		"UNIT_HEALTH"
	)
end

function mod:OnCombatEnd()
	table.wipe(addsGuidCheck)
	self:UnregisterShortTermEvents()
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(26083) and args:IsSrcTypeHostile() and self:AntiSpam(4, 1) then
		if self:CheckInterruptFilter(args.sourceGUID, true) and self.Options.SpecWarn26083run then
			specWarnWhirlwind:Show()
			specWarnWhirlwind:Play("justrun")
		else
			warnWhirlwind:Show()
		end
	elseif args:IsSpell(8269) and args:IsSrcTypeHostile() then
		warnEnrage:Show()
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) == 15516 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.35 then
		self:SendSync("EnrageSoon")
		self:UnregisterShortTermEvents()
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "EnrageSoon" and not self.vb.prewarn_enrage then
		self.vb.prewarn_enrage = true
		warnEnrageSoon:Show()
	end
end

function mod:UNIT_DIED(args)
    local guid = args.destGUID
    local cid = self:GetCIDFromGUID(guid)

    if cid == 15984 then -- Sartura's Royal Guard
        if not addsGuidCheck[guid] then
            addsGuidCheck[guid] = true
            self.vb.guardsRemaining = self.vb.guardsRemaining - 1
            warnGuardDied:Show(self.vb.guardsRemaining, 3)
        end
    end
end
