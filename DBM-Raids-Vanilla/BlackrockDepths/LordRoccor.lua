local mod	= DBM:NewMod(2663, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(226315)
mod:SetEncounterID(3042)
--mod:SetUsedIcons(8, 7, 6)
mod:SetHotfixNoticeRev(20241028000000)
--mod:SetMinSyncRevision(20211203000000)
mod:SetZone(2792)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 462351 463674 462319 462320 462317",
--	"SPELL_SUMMON",
	"SPELL_AURA_APPLIED 462348 400279",
	"SPELL_AURA_APPLIED_DOSE 462348 400279",
	"SPELL_AURA_REMOVED 462348",
	"SPELL_PERIODIC_DAMAGE 462352",
	"SPELL_PERIODIC_MISSED 462352"
--	"UNIT_DIED"
--	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

--[[
(ability.id = 462351 or ability.id = 463674 or ability.id = 462319 or ability.id = 462320 or ability.id = 462317) and type = "begincast"
--]]
--auto mark igneous based on add power using https://www.wowhead.com/ptr-2/spell=462330/igneous-crystallization or https://www.wowhead.com/ptr-2/spell=462329/igneous-crystallization or https://www.wowhead.com/ptr-2/spell=462328/igneous-crystallization or https://www.wowhead.com/ptr-2/spell=462326/igneous-crystallization
--NOTE: This boss has disasterous spell queuing issues that can delay spells up to 40 full seconds
local warnRoilingMagma						= mod:NewCountAnnounce(462351, 3)
local warnCrystallize						= mod:NewCountAnnounce(463674, 2)
local warnSlagArmorStack					= mod:NewStackAnnounce(400279, 2, nil, "Tank|Healer")

local specWarnEruption						= mod:NewSpecialWarningSwitchCount(462319, nil, nil, nil, 1, 17)
local specWarnVolcanicUpheaval				= mod:NewSpecialWarningCount(462317, nil, nil, nil, 2, 2)
--local specWarnLivingMagma					= mod:NewSpecialWarningStack(462348, nil, 12, nil, nil, 1, 6)
local specWarnGTFO							= mod:NewSpecialWarningGTFO(462352, nil, nil, nil, 1, 8)

local timerRoilingMagmaCD					= mod:NewCDCountTimer(19.4, 462351, nil, nil, nil, 3)--13.3(19.4)-41.3
local timerCrystallizeCD					= mod:NewCDCountTimer(64.3, 463674, nil, nil, nil, 1)--40.1(64.3)-96.1
local timerEruptionCD						= mod:NewCDCountTimer(21.1, 462319, nil, nil, nil, 1)--21.1-94
local timerIgneousCrystallization			= mod:NewCastTimer(12, 462320, nil, nil, nil, 5)
local timerVolcanicUpheavalCD				= mod:NewCDCountTimer(47.2, 462317, nil, nil, nil, 2, nil, DBM_COMMON_L.HEALER_ICON .. DBM_COMMON_L.DEADLY_ICON)--47.3-61

--mod:AddNamePlateOption("NPOnHoney", 443983)
--mod:AddSetIconOption("SetIconOnBees", 438025, true, 5, {8, 7, 6})
mod:AddInfoFrameOption(462348, true)

mod.vb.RoilingMagmaCount = 0
mod.vb.CrystallizeCount = 0
mod.vb.EruptionCount = 0
mod.vb.VolcanicUpheavalCount = 0
local MagmaStacks = {}

--Eruption triggers 5 second ICD
--Igneous Crystallization triggers 12.0 (usually 12.4) second ICD
--Volcanic Upheaval triggers 9.7 second ICD
local function updateAllTimers(self, ICD)
	DBM:Debug("updateAllTimers running", 3)
	if timerRoilingMagmaCD:GetRemaining(self.vb.RoilingMagmaCount+1) < ICD then
		local elapsed, total = timerRoilingMagmaCD:GetTime(self.vb.RoilingMagmaCount+1)
		local extend = ICD - (total-elapsed)
		DBM:Debug("timerRoilingMagmaCD extended by: "..extend, 2)
		timerRoilingMagmaCD:Update(elapsed, total+extend, self.vb.RoilingMagmaCount+1)
	end
	if timerCrystallizeCD:GetRemaining(self.vb.CrystallizeCount+1) < ICD then
		local elapsed, total = timerCrystallizeCD:GetTime(self.vb.CrystallizeCount+1)
		local extend = ICD - (total-elapsed)
		DBM:Debug("timerCrystallizeCD extended by: "..extend, 2)
		timerCrystallizeCD:Update(elapsed, total+extend, self.vb.CrystallizeCount+1)
	end
	if timerEruptionCD:GetRemaining(self.vb.EruptionCount+1) < ICD then
		local elapsed, total = timerEruptionCD:GetTime(self.vb.EruptionCount+1)
		local extend = ICD - (total-elapsed)
		DBM:Debug("timerEruptionCD extended by: "..extend, 2)
		timerEruptionCD:Update(elapsed, total+extend, self.vb.EruptionCount+1)
	end
	if timerVolcanicUpheavalCD:GetRemaining(self.vb.VolcanicUpheavalCount+1) < ICD then
		local elapsed, total = timerVolcanicUpheavalCD:GetTime(self.vb.VolcanicUpheavalCount+1)
		local extend = ICD - (total-elapsed)
		DBM:Debug("timerVolcanicUpheavalCD extended by: "..extend, 2)
		timerVolcanicUpheavalCD:Update(elapsed, total+extend, self.vb.VolcanicUpheavalCount+1)
	end
end

function mod:OnCombatStart(delay)
	self.vb.RoilingMagmaCount = 0
	self.vb.CrystallizeCount = 0
	self.vb.EruptionCount = 0
	self.vb.VolcanicUpheavalCount = 0
	table.wipe(MagmaStacks)
	if self:IsHeroic() then
		--Even all iniital abilities can see massive 30+ second delays due to bad blizzard code
		timerEruptionCD:Start(10.4-delay, 1)--Iffy
		timerRoilingMagmaCD:Start(12.0-delay, 1)
		timerCrystallizeCD:Start(45.6-delay, 1)
		timerVolcanicUpheavalCD:Start(47-delay, 1)
	else
		--Even all iniital abilities can see massive 30+ second delays due to bad blizzard code
		timerEruptionCD:Start(8.4-delay, 1)
		timerRoilingMagmaCD:Start(12.0-delay, 1)
		timerVolcanicUpheavalCD:Start(45.6-delay, 1)
		timerCrystallizeCD:Start(58.4-delay, 1)
	end
	if self.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellName(462348))
		DBM.InfoFrame:Show(10, "table", MagmaStacks, 1)
	end
end

function mod:OnCombatEnd()
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 462351 then
		self.vb.RoilingMagmaCount = self.vb.RoilingMagmaCount + 1
		warnRoilingMagma:Show(self.vb.RoilingMagmaCount)
		timerRoilingMagmaCD:Start(self:IsHeroic() and 13.4 or 19.4, self.vb.RoilingMagmaCount+1)
	elseif spellId == 463674 then
		self.vb.CrystallizeCount = self.vb.CrystallizeCount + 1
		warnCrystallize:Show(self.vb.CrystallizeCount)
		timerCrystallizeCD:Start(self:IsHeroic() and 40.1 or 64.3, self.vb.CrystallizeCount+1)
	elseif spellId == 462319 then
		self.vb.EruptionCount = self.vb.EruptionCount + 1
		specWarnEruption:Show(self.vb.EruptionCount)
		specWarnEruption:Play("runovermobs")
		timerEruptionCD:Start(nil, self.vb.EruptionCount+1)
		updateAllTimers(self, 5)
	elseif spellId == 462320 then
		timerIgneousCrystallization:Start()
		updateAllTimers(self, 12.0)
	elseif spellId == 462317 then
		self.vb.VolcanicUpheavalCount = self.vb.VolcanicUpheavalCount + 1
		specWarnVolcanicUpheaval:Show(self.vb.VolcanicUpheavalCount)
		specWarnVolcanicUpheaval:Play("aesoon")
		timerVolcanicUpheavalCD:Start(nil, self.vb.VolcanicUpheavalCount+1)
		updateAllTimers(self, 9.7)
	end
end

--[[
function mod:SPELL_SUMMON(args)
	local spellId = args.spellId
	if spellId == 438665 then

	end
end
--]]

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 462348 then
		local amount = args.amount or 1
		MagmaStacks[args.destName] = amount
		--if args:IsPlayer() and (amount == 12 or amount >= 15 and amount % 2 == 1) then--12, 15, 17, 19
		--	specWarnLivingMagma:Show(amount)
		--	specWarnLivingMagma:Play("stackhigh")
		--end
		if self.Options.InfoFrame then
			DBM.InfoFrame:UpdateTable(MagmaStacks)
		end
	elseif spellId == 400279 then
		local uId = DBM:GetRaidUnitId(args.destName)
		--(basically filters everyone who's not actively tanking mob such as melee in wrong place)
		if self:IsTanking(uId, nil, nil, true, args.sourceGUID) then
			local amount = args.amount or 1
			if amount % 3 == 0 then--Tweak as needed
				warnSlagArmorStack:Show(args.destName, amount)
			end
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED


function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 462348 then
		MagmaStacks[args.destName] = nil
		if self.Options.InfoFrame then
			DBM.InfoFrame:UpdateTable(MagmaStacks)
		end
	end
end


function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 462352 and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

--[[
function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 229444 then--Son of Roccor

	end
end
--]]

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 74859 then

	end
end
--]]
