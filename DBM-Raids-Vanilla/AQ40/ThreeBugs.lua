local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 2
else--retail or wrath classic and later
	catID = 1
end
local mod	= DBM:NewMod("ThreeBugs", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15544, 15511, 15543)
mod:SetEncounterID(710)
mod:SetModelID(15657)
mod:SetZone(531)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 26580 25812",
	"SPELL_CAST_START 25807",
	"UNIT_DIED"
)

mod:AddInfoFrameOption()

local warnFear				= mod:NewSpellAnnounce(26580, 2)
local warnToxicVolley		= mod:NewSpellAnnounce(25812, 2, nil, "RemovePoison")
local warnHeal				= mod:NewCastAnnounce(25807, 3)
local warnBugDied			= mod:NewAnnounce("WarnBugDied", 2, "133570")

local specWarnHeal			= mod:NewSpecialWarningInterrupt(25807, "HasInterrupt", nil, nil, 1, 2)
local specWarnGTFO			= mod:NewSpecialWarningGTFO(25786, nil, nil, nil, 1, 8)

local timerFearCD			= mod:NewVarTimer("v20.3-29.4", 26580, nil, nil, nil, 2)
local timerToxicVolleyCD 	= mod:NewVarTimer("v8.1-32.5", 25812, nil, "RemovePoison", nil, 2, nil, DBM_COMMON_L.POISON_ICON)

local bugsGuidCheck = {}

mod.vb.bugsRemaining = 3

function mod:OnCombatStart()
	table.wipe(bugsGuidCheck)
	self.vb.bugsRemaining = 3
	timerFearCD:Start("v10.6-18.4")
	timerToxicVolleyCD:Start("v8.1-33.9")
	if self:IsEvent() or not self:IsTrivial() then
		self:UnscheduleMethod("UnregisterShortTermEvents")
		self:RegisterShortTermEvents(
			"SPELL_AURA_APPLIED 25786 25989",
			"SPELL_PERIODIC_DAMAGE 25786 25989",
			"SPELL_PERIODIC_MISSED 25786 25989"
		)
	end
	if self.Options.InfoFrame then
		DBM.InfoFrame:Show(10, "bosshealth", {
			[15511] = true,
			[15543] = true,
			[15544] = true,
		})
		self.bossHealthUpdateTime = 0.5
	end
end

function mod:OnCombatEnd()
	-- Poison cloud stays around after the boss dies
	table.wipe(bugsGuidCheck)
	self:ScheduleMethod(60, "UnregisterShortTermEvents")
	if self.Options.InfoFrame then
	DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(26580) and args:IsSrcTypeHostile() and self:AntiSpam(3, 1) then
		warnFear:Show()
		timerFearCD:Start()
	elseif args:IsSpell(25812) then
		warnToxicVolley:Show()
		timerToxicVolleyCD:Start()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(25807) and args:IsSrcTypeHostile() then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnHeal:Show(args.sourceName)
			specWarnHeal:Play("kickcast")
		else
			warnHeal:Show()
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(25786, 25989) and args:IsPlayer() and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(args.spellName)
		specWarnGTFO:Play("watchfeet")
	end
end

do
	local ToxicVaper = DBM:GetSpellName(25786)--Classic Note
	local Toxin 	 = DBM:GetSpellName(25989)--Classic Note
	function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, destName, _, _, spellId, spellName)
		if (spellId == 25786 or spellId == 25989 or spellName == ToxicVaper or spellName == Toxin) and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
			specWarnGTFO:Show(spellName)
			specWarnGTFO:Play("watchfeet")
		end
	end
	mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
end

function mod:UNIT_DIED(args)
    local guid = args.destGUID
    local cid = self:GetCIDFromGUID(guid)

    if not bugsGuidCheck[guid] then
        bugsGuidCheck[guid] = true

        if cid == 15511 then -- Lord Kri
			timerToxicVolleyCD:Stop()
            self.vb.bugsRemaining = self.vb.bugsRemaining - 1
            warnBugDied:Show(L.Kri, self.vb.bugsRemaining)

        elseif cid == 15543 then -- Princess Yauj
			timerFearCD:Stop()
            self.vb.bugsRemaining = self.vb.bugsRemaining - 1
            warnBugDied:Show(L.Yauj, self.vb.bugsRemaining)

        elseif cid == 15544 then -- Vem
            self.vb.bugsRemaining = self.vb.bugsRemaining - 1
            warnBugDied:Show(L.Vem, self.vb.bugsRemaining)
        end
    end
end
