local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 2
else--retail or wrath classic and later
	catID = 1
end
local mod	= DBM:NewMod("Skeram", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 176525 or 15263)
mod:SetEncounterID(709)
if not mod:IsClassic() then
	mod:SetModelID(15345)
end
mod:SetUsedIcons(4, 5, 6, 7, 8)
mod:DisableBossDeathKill()
mod:SetHotfixNoticeRev(20210522000000)--2021-05-22
mod:SetMinSyncRevision(20210522000000)
mod:SetZone(531)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 785",
	"SPELL_AURA_REMOVED 785",
	"SPELL_CAST_SUCCESS 20449 4801 8195",
	"SPELL_CAST_START 26192",
	"SPELL_SUMMON 747",
	"UNIT_HEALTH"
)

--TODO, special warning optimizing?
local warnMindControl	= mod:NewTargetNoFilterAnnounce(785, 4)
local warnTeleport		= mod:NewSpellAnnounce(20449, 3)
local warnSummon		= mod:NewSpellAnnounce(747, 3)
local warnSummonSoon	= mod:NewSoonAnnounce(747, 2)

local timerMindControl	= mod:NewBuffActiveTimer(20, 785, nil, nil, nil, 3)
local specWarnAoE		= mod:NewSpecialWarningInterrupt(26192, "HasInterrupt", nil, nil, 1, 2)

mod:AddSetIconOption("SetIconOnMC", 785, true, 0, {4, 5, 6, 7, 8})

mod.vb.splitCount = 0
mod.vb.MCIcon = 8

function mod:OnCombatStart(delay)
	self.vb.splitCount = 0
	self.vb.MCIcon = 8
end

local function resetMcIcon(self)
	self.vb.MCIcon = 8
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(785) then
		if self.Options.SetIconOnMC then
			self:SetIcon(args.destName, self.vb.MCIcon)
		end
		self.vb.MCIcon = self.vb.MCIcon - 1
		self:Unschedule(resetMcIcon)
		self:Schedule(3, resetMcIcon, self)
	end
	warnMindControl:CombinedShow(0.3, args.destName)
	timerMindControl:Start()
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(785) and self.Options.SetIconOnMC then
		self:SetIcon(args.destName, 0)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(20449, 4801, 8195) and args:IsSrcTypeHostile() and self:AntiSpam(3, 1) then
		warnTeleport:Show()
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpell(747) and self:AntiSpam(3, 2) then
		warnSummon:Show()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(26192) and self:AntiSpam(3, "ArcaneExplosion") then
		specWarnAoE:Show(args.sourceName)
		specWarnAoE:Play("kickcast")
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) == 15263 or self:GetUnitCreatureId(uId) == 176525 then
		local percent = UnitHealth(uId) / UnitHealthMax(uId) * 100
		if percent <= 81 and percent >= 77 and self.vb.splitCount < 1 then
			warnSummonSoon:Show()
			self.vb.splitCount = 1
		elseif percent <= 56 and percent >= 52 and self.vb.splitCount < 2 then
			warnSummonSoon:Show()
			self.vb.splitCount = 2
		elseif percent <= 31 and percent >= 27 and self.vb.splitCount < 3 then
			warnSummonSoon:Show()
			self.vb.splitCount = 3
		end
	end
end
