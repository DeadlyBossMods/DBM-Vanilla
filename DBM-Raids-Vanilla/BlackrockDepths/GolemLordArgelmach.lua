if DBM:GetTOC() < 110005 then return end
local mod	= DBM:NewMod(2666, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr,normal,heroic"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(226302)
mod:SetEncounterID(3046)
--mod:SetUsedIcons(8, 7, 6)
--mod:SetHotfixNoticeRev(20220322000000)
--mod:SetMinSyncRevision(20211203000000)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 463821 470014 470073 467919 463823 463829 463837",
	"SPELL_CAST_SUCCESS 467926 463847",
	"SPELL_AURA_APPLIED 464939 470655 463852 467927 463848 464609",
	"SPELL_AURA_APPLIED_DOSE 470655",
	"SPELL_AURA_REMOVED 464939 463852 467927 463848 464609",
	"SPELL_PERIODIC_DAMAGE 464473",
	"SPELL_PERIODIC_MISSED 464473",
	"UNIT_DIED"
--	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

--[[

--]]
--TODO, do more with chain lightning if it's valuable enough to do, but i think most of time boss will spend possessing golems
--TODO, does golem energy reset when posessed is removed? if not, gotta do energy based calculation resume timers (or just pause and fade them and unpause and unfade)
--TODO, possibly nameplate hybrid timers for everything
--TODO, add scheduler to check if you have poison soaked debuff to alert to move to magmatron few seconds prior
--TODO, appropriate tank stacks for https://www.wowhead.com/ptr-2/spell=470655/melt-armor
--TODO, chemical bomb targets? emote? target scan?
--TODO, Do you spread for Chain Lighting? if so, add spread warning
--TODO, yes, blizzard gave two diff mechanics the same name.
--TODO, detect player pairs for lethal attraction and warn them who to move to?
--Ultimates cast every 22 seconds give or take (does energy start on cast finish or cast start, if cast start, 22 for all, if cast finish, it'll be 22-27)
--Golem Lord Argelmach
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30783))
--local warnSnackTime						= mod:NewCountAnnounce(438025, 3)
local warnPossessed							= mod:NewTargetNoFilterAnnounce(464939, 2)

local specWarnChainLightning				= mod:NewSpecialWarningInterrupt(463821, nil, nil, nil, 1, 2)
local specWarnGTFO							= mod:NewSpecialWarningGTFO(464473, nil, nil, nil, 1, 8)

mod:AddNamePlateOption("NPOnOverdrive", 463852)
--Arcanotron Mk. II
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30785))
local warnArcaneOvercharge					= mod:NewCountAnnounce(470014, 3)--Fallback if not opted into special warning

local specWarnArcaneOvercharge				= mod:NewSpecialWarningCount(470014, "Tank", nil, nil, 1, 2)--Tank default, per journal
local specWarnPowerGeneratorSoak			= mod:NewSpecialWarningSoakCount(470073, "Dps", nil, nil, 2, 2)

local timerArcaneOverchargeCD				= mod:NewAITimer(33, 470014, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)--Set to tank only by default?
local timerPowerGeneratorSoakCD				= mod:NewAITimer(22, 470073, nil, nil, nil, 5)

--Magmatron Mk. II
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30787))
local warnMeltArmor							= mod:NewStackAnnounce(470655, 2)

local specWarnFlamethrower					= mod:NewSpecialWarningCount(467919, nil, nil, nil, 1, 2)--Not a dodge warning on purpose because you don't always want to dodge it
local specWarnIncineration					= mod:NewSpecialWarningCount(463823, nil, nil, nil, 2, 2)

local timerFlamethrowerCD					= mod:NewAITimer(33, 467919, nil, nil, nil, 3)
local timerIncinerationCD					= mod:NewAITimer(22, 463823, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON)
--Toxitron Mk. II
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30789))
local warnPoisonMist						= mod:NewCountAnnounce(463837, 2)
local warnChemicalBomb						= mod:NewCountAnnounce(463829, 2)

local specWarnChemicalBomb					= mod:NewSpecialWarningBait(463829, false, nil, 2, 2, 2)

local timerChemicalBombCD					= mod:NewAITimer(33, 463829, nil, nil, nil, 3)
local timerPoisonMistCD						= mod:NewAITimer(22, 463837, nil, nil, nil, 2, nil, DBM_COMMON_L.HEALER_ICON)
--Electron Mk. II
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30792))
local warnLiveWire							= mod:NewTargetAnnounce(467926, 2)
local warnLethalAttraction					= mod:NewTargetAnnounce(463847, 2)
local warnLethalAttractionOver				= mod:NewFadesAnnounce(463847, 1)

local specWarnLiveWire						= mod:NewSpecialWarningMoveAway(467926, nil, nil, nil, 1, 2)
local yellLiveWire							= mod:NewShortYell(467926)
local yellLiveWireFades						= mod:NewShortFadesYell(467926)
local specWarnLethalAttraction				= mod:NewSpecialWarningMoveTo(463847, nil, nil, nil, 1, 2)
local yellLethalAttraction					= mod:NewYell(463847, nil, nil, nil, "YELL")

local timerLiveWireCD						= mod:NewAITimer(33, 467926, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)
local timerLethalAttractionCD				= mod:NewAITimer(22, 463847, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)

--mod:AddSetIconOption("SetIconOnBees", 438025, true, 5, {8, 7, 6})

--local castsPerGUID = {}

mod.vb.overchargeCount = 0
mod.vb.generatorCount = 0
mod.vb.flamethrowerCount = 0
mod.vb.incinerationCount = 0
mod.vb.chemicalBombCount = 0
mod.vb.mistCount = 0
mod.vb.livewireCount = 0
mod.vb.lethalCount = 0

function mod:OnCombatStart(delay)
	self.vb.overchargeCount = 0
	self.vb.generatorCount = 0
	self.vb.flamethrowerCount = 0
	self.vb.incinerationCount = 0
	self.vb.chemicalBombCount = 0
	self.vb.mistCount = 0
	self.vb.livewireCount = 0
	self.vb.lethalCount = 0
	--Arcanotron
	timerArcaneOverchargeCD:Start(1)
	--Magmatron
	timerFlamethrowerCD:Start(1)
	--Toxitron
	timerChemicalBombCD:Start(1)
	--Electron
	timerLiveWireCD:Start(1)
	if self.Options.NPOnOverdrive  then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
	end
end

function mod:OnCombatEnd()
	if self.Options.NPOnOverdrive then
		DBM.Nameplate:Hide(true, nil, nil, nil, true, true)
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 463821 and self:CheckInterruptFilter(args.sourceGUID, nil, true) then
		specWarnChainLightning:Show(args.sourceName)
		specWarnChainLightning:Play("kickcast")
	elseif spellId == 470014 then
		self.vb.overchargeCount = self.vb.overchargeCount + 1
		if self.Options.SpecWarn470014count then
			specWarnArcaneOvercharge:Show(self.vb.overchargeCount)
			specWarnArcaneOvercharge:Play("catchballs")
		else
			warnArcaneOvercharge:Show(self.vb.overchargeCount)
		end
		timerArcaneOverchargeCD:Start()--, self.vb.overchargeCount+1
	elseif spellId == 470073 then
		self.vb.generatorCount = self.vb.generatorCount + 1
		specWarnPowerGeneratorSoak:Show(self.vb.generatorCount)
		specWarnPowerGeneratorSoak:Play("helpsoak")
		timerPowerGeneratorSoakCD:Start()--, self.vb.generatorCount+1
	elseif spellId == 467919 then
		self.vb.flamethrowerCount = self.vb.flamethrowerCount + 1
		specWarnFlamethrower:Show(self.vb.flamethrowerCount)
		specWarnFlamethrower:Play("frontal")
		timerFlamethrowerCD:Start()--, self.vb.flamethrowerCount+1
	elseif spellId == 463823 then
		self.vb.incinerationCount = self.vb.incinerationCount + 1
		specWarnIncineration:Show(self.vb.incinerationCount)
		specWarnIncineration:Play("aesoon")
		timerIncinerationCD:Start()--, self.vb.incinerationCount+1
	elseif spellId == 463829 then
		self.vb.chemicalBombCount = self.vb.chemicalBombCount + 1
		if self.Options.SpecWarn463829count then
			specWarnChemicalBomb:Show()
			specWarnChemicalBomb:Play("bait")
		else
			warnChemicalBomb:Show(self.vb.chemicalBombCount)
		end
		timerChemicalBombCD:Start()--, self.vb.chemicalBombCount+1
	elseif spellId == 463837 then
		self.vb.mistCount = self.vb.mistCount + 1
		warnPoisonMist:Show(self.vb.mistCount)
		timerPoisonMistCD:Start()--, self.vb.mistCount+1
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 467926 then
		self.vb.livewireCount = self.vb.livewireCount + 1
		timerLiveWireCD:Start()--, self.vb.livewireCount+1
	elseif spellId == 463847 then
		self.vb.lethalCount = self.vb.lethalCount + 1
		timerLethalAttractionCD:Start()--, self.vb.lethalCount+1
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 464939 then--Possessed
		warnPossessed:Show(args.destName)
		local cid = self:GetCIDFromGUID(args.destGUID)
		if cid == 230219 then--Arcanotron Mk. II
			timerPowerGeneratorSoakCD:Start(2)
		elseif cid == 230216 then--Magmatron Mk. II
			timerIncinerationCD:Start(2)
		elseif cid == 230217 then--Toxitron Mk. II
			timerPoisonMistCD:Start(2)
		elseif cid == 230218 then--Electron Mk. II
			timerLethalAttractionCD:Start(2)
		end
	elseif spellId == 470655 then
		local amount = args.amount or 1
		if amount % 20 == 0 then--Place holder. it likely stacks rapidly and need to know a good number for this
			warnMeltArmor:Show(args.destName, amount)
		end
	elseif spellId == 463852 then
		if self.Options.NPOnOverdrive then
			DBM.Nameplate:Show(true, args.destGUID, spellId)
		end
	elseif spellId == 467927 then
		warnLiveWire:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnLiveWire:Show()
			specWarnLiveWire:Play("runout")
			yellLiveWire:Yell()
			yellLiveWireFades:Countdown(spellId)
		end
	elseif spellId == 463848 or spellId == 464609 then
		warnLethalAttraction:CombinedShow(0.3, args.destName)
		if args:IsPlayer() then
			specWarnLethalAttraction:Show()
			specWarnLethalAttraction:Play("linegather")
			yellLethalAttraction:Yell()
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 464939 then--Possessed
		local cid = self:GetCIDFromGUID(args.destGUID)
		if cid == 230219 then--Arcanotron Mk. II
			timerPowerGeneratorSoakCD:Stop()
		elseif cid == 230216 then--Magmatron Mk. II
			timerIncinerationCD:Stop()
		elseif cid == 230217 then--Toxitron Mk. II
			timerPoisonMistCD:Stop()
		elseif cid == 230218 then--Electron Mk. II
			timerLethalAttractionCD:Stop()
		end
	elseif spellId == 463852 then
		if self.Options.NPOnOverdrive then
			DBM.Nameplate:Hide(true, args.destGUID, spellId)
		end
	elseif spellId == 467927 then
		if args:IsPlayer() then
			yellLiveWireFades:Cancel()
		end
	elseif spellId == 463848 or spellId == 464609 then
		if args:IsPlayer() then
			warnLethalAttractionOver:Show()
		end
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 464473 and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 230219 then--Arcanotron Mk. II
		timerArcaneOverchargeCD:Stop()
		timerPowerGeneratorSoakCD:Stop()
	elseif cid == 230216 then--Magmatron Mk. II
		timerFlamethrowerCD:Stop()
		timerIncinerationCD:Stop()
	elseif cid == 230217 then--Toxitron Mk. II
		timerChemicalBombCD:Stop()
		timerPoisonMistCD:Stop()
	elseif cid == 230218 then--Electron Mk. II
		timerLiveWireCD:Stop()
		timerLethalAttractionCD:Stop()
	end
end

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 74859 then

	end
end
--]]
