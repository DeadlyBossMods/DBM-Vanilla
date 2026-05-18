local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isBCC or isClassic then
	catID = 4
elseif isWrath then--Wrath classic
	catID = 3
else--Cataclysm classic
	catID = 5
end
local mod	= DBM:NewMod("Venoxis", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(14507)
mod:SetEncounterID(784)
mod:SetHotfixNoticeRev(20200724000000)--2020, 7, 24
mod:SetMinSyncRevision(20260419000000) -- 2026, April 19th
mod:SetZone(309)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 23861",
	"SPELL_AURA_APPLIED 23895 23860 23865",
	"SPELL_AURA_REMOVED 23895 23860",
	"UNIT_SPELLCAST_SUCCEEDED"
)

local warnSerpent		= mod:NewTargetNoFilterAnnounce(23865, 2)
local warnCloud			= mod:NewSpellAnnounce(23861)
local warnRenew			= mod:NewTargetNoFilterAnnounce(23895, 3, nil, "MagicDispeller")
local warnFire			= mod:NewTargetNoFilterAnnounce(23860, 2, nil, "RemoveMagic|Healer")
local warnPhase2Soon	= mod:NewPrePhaseAnnounce(2)
local warnPhase 		= mod:NewPhaseChangeAnnounce(2, nil, nil, nil, nil, nil, 2)

local specWarnRenew		= mod:NewSpecialWarningDispel(23895, "MagicDispeller", nil, nil, 1, 2)

local timerCloud		= mod:NewBuffActiveTimer(10, 23861, nil, nil, nil, 3)
local timerRenew		= mod:NewTargetTimer(15, 23895, nil, "MagicDispeller", nil, 5, nil, DBM_COMMON_L.MAGIC_ICON)
local timerFire			= mod:NewTargetTimer(8, 23860, nil, "RemoveMagic|Healer", nil, 5, nil, DBM_COMMON_L.MAGIC_ICON)

function mod:OnCombatStart()
	self:SetStage(1)
	warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(1))
	self:RegisterShortTermEvents(
		"UNIT_HEALTH"
	)
end

function mod:OnCombatEnd()
	self:UnregisterShortTermEvents()
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(23861) then
		warnCloud:Show()
		timerCloud:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(23895) and args:IsDestTypeHostile() then
		if self.Options.SpecWarn23895dispel then
			specWarnRenew:Show(args.destName)
			specWarnRenew:Play("dispelboss")
		else
			warnRenew:Show(args.destName)
		end
		timerRenew:Start(args.destName)
	elseif args:IsSpell(23860) and args:IsDestTypePlayer() then
		warnFire:Show(args.destName)
		timerFire:Start(args.destName)
	elseif args:IsSpell(23865) then
		warnSerpent:Show(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(23895) and args:IsDestTypeHostile() then
		timerRenew:Stop(args.destName)
	elseif args:IsSpell(23860) and args:IsDestTypePlayer() then
		timerFire:Stop(args.destName)
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetStage(1) and self:GetUnitCreatureId(uId) == 14507 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.55 then
		self:SendSync("Phase", 1.5)
		self:UnregisterShortTermEvents()
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
   if self:GetStage(1.5) and spellId == 23849 then
		self:SendSync("Phase", 2)
   end
end

function mod:OnSync(msg, arg)
	if not self:IsInCombat() then return end
	if msg == "Phase" then
		local phase = tonumber(arg)
		if not phase then return end
		if self:GetStage(phase, 3) then
			self:SetStage(phase)
			if phase % 1 == 0 then
				warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(phase))
			end
			if phase == 1.5 then
				warnPhase2Soon:Show()
			elseif phase == 2 then
				warnPhase:Play("ptwo")
			end
		end
	end
end
