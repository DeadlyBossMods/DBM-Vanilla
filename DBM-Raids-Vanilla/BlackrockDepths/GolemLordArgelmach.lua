local mod	= DBM:NewMod(2666, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr,normal,heroic"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(230219, 230219, 230217, 230218)--Golem Lord 226306, Arcanotron 230219, Magmatron 230216, Toxitron 230217, Electron 230218
mod:SetEncounterID(3046)
--mod:SetUsedIcons(8, 7, 6)
--mod:SetHotfixNoticeRev(20220322000000)
--mod:SetMinSyncRevision(20211203000000)
--mod.respawnTime = 29

mod:RegisterCombat("combat")
mod:SetWipeTime(10)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 463821 470014 470073 467919 463823 463829 463837",
--	"SPELL_CAST_SUCCESS 467926 463847",
	"SPELL_AURA_APPLIED 470655 463852 463848 464609 463837",
	"SPELL_AURA_APPLIED_DOSE 470655",
	"SPELL_AURA_REMOVED 463852 463848 464609",
	"SPELL_PERIODIC_DAMAGE 464473",
	"SPELL_PERIODIC_MISSED 464473",
	"UNIT_DIED",
--	"UNIT_POWER_UPDATE boss1 boss2 boss3 boss4"
	"UNIT_SPELLCAST_SUCCEEDED boss1 boss2 boss3 boss4",
	"RAID_BOSS_WHISPER"
)

--[[
(ability.id = 463821 or ability.id = 470014 or ability.id = 470073 or ability.id = 467919 or ability.id = 463823 or ability.id = 463829 or ability.id = 463837) and type = "begincast"
 or (ability.id = 467926 or ability.id = 463847) and type = "cast"
 or (ability.id = 464609 or ability.id = 463848) and type = "applydebuff"
 or target.id = 226306 and type = "death"
--]]
--TODO, possibly nameplate hybrid timers for everything
--TODO, appropriate tank stacks for https://www.wowhead.com/ptr-2/spell=470655/melt-armor
--TODO, Do you spread for Chain Lighting? if so, add spread warning
--Ultimates cast every 22 seconds give or take (does energy start on cast finish or cast start, if cast start, 22 for all, if cast finish, it'll be 22-27)
--Golem Lord Argelmach
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30783))
--local warnPossessed							= mod:NewTargetNoFilterAnnounce(464939, 2)

local specWarnChainLightning				= mod:NewSpecialWarningInterrupt(463821, nil, nil, nil, 1, 2)
local specWarnGTFO							= mod:NewSpecialWarningGTFO(464473, nil, nil, nil, 1, 8)

mod:AddNamePlateOption("NPOnOverdrive", 463852)
--Arcanotron Mk. II
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30785))
local warnArcaneOvercharge					= mod:NewCountAnnounce(470014, 3)--Fallback if not opted into special warning

local specWarnArcaneOvercharge				= mod:NewSpecialWarningCount(470014, "Tank", nil, nil, 1, 2)--Tank default, per journal
local specWarnPowerGeneratorSoak			= mod:NewSpecialWarningSoakCount(470073, "Dps", nil, nil, 2, 2)

local timerArcaneOverchargeCD				= mod:NewCDCountTimer(51.0, 470014, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)--Set to tank only by default?
local timerPowerGeneratorSoakCD				= mod:NewCDCountTimer(22, 470073, nil, nil, nil, 5)

--Magmatron Mk. II
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30787))
local warnMeltArmor							= mod:NewStackAnnounce(470655, 2)

local specWarnFlamethrower					= mod:NewSpecialWarningCount(467919, nil, nil, nil, 1, 2)--Not a dodge warning on purpose because you don't always want to dodge it
local specWarnIncineration					= mod:NewSpecialWarningCount(463823, nil, nil, nil, 2, 2)

local timerFlamethrowerCD					= mod:NewCDCountTimer(21.8, 467919, nil, nil, nil, 3)
local timerIncinerationCD					= mod:NewCDCountTimer(22, 463823, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON)
--Toxitron Mk. II
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30789))
local warnPoisonMist						= mod:NewCountAnnounce(463837, 2)
local warnChemicalBomb						= mod:NewCountAnnounce(463829, 2, nil, "Tank", 2)--Really only tanks need to know new puddles up to clear them with magmatron

local specWarnPoisonMist					= mod:NewSpecialWarningMoveTo(463837, "-Tank", nil, nil, 1, 2)

local timerChemicalBombCD					= mod:NewCDCountTimer(7, 463829, nil, "Tank", 2, 3)
local timerPoisonMistCD						= mod:NewCDCountTimer(22, 463837, nil, nil, nil, 2, nil, DBM_COMMON_L.HEALER_ICON)
--Electron Mk. II
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30792))
local warnLiveWire							= mod:NewTargetCountAnnounce(467926, 2)
local warnLethalAttraction					= mod:NewCountAnnounce(463847, 2)
local warnLethalAttractionOver				= mod:NewFadesAnnounce(463847, 1)

local specWarnLiveWire						= mod:NewSpecialWarningMoveAway(467926, nil, nil, nil, 1, 2)
local yellLiveWire							= mod:NewShortYell(467926)
local specWarnLethalAttraction				= mod:NewSpecialWarningMoveTo(463847, nil, nil, nil, 1, 2)
local yellLethalAttraction					= mod:NewIconRepeatYell(463847, DBM_CORE_L.AUTO_YELL_ANNOUNCE_TEXT.shortyell)

local timerLiveWireCD						= mod:NewCDCountTimer(34, 467926, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)
local timerLethalAttractionCD				= mod:NewCDCountTimer(22, 463847, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)

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
mod.vb.lastActivated = 0
mod.vb.lastIcon = 1
local flameThrower = DBM:GetSpellName(467919)

local function FatalYellRepeater(self, icon)
	yellLethalAttraction:Yell(icon)
	self:Schedule(2, FatalYellRepeater, self, icon)
end

function mod:OnCombatStart(delay)
	self.vb.overchargeCount = 0
	self.vb.generatorCount = 0
	self.vb.flamethrowerCount = 0
	self.vb.incinerationCount = 0
	self.vb.chemicalBombCount = 0
	self.vb.mistCount = 0
	self.vb.livewireCount = 0
	self.vb.lethalCount = 0
	self.vb.lastActivated = 0
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
		timerArcaneOverchargeCD:Start(nil, self.vb.overchargeCount+1)
	elseif spellId == 470073 then
		self.vb.generatorCount = self.vb.generatorCount + 1
		specWarnPowerGeneratorSoak:Show(self.vb.generatorCount)
		specWarnPowerGeneratorSoak:Play("helpsoak")
		--Toxitron -- > Electron --> Magmatron --> Arcanotron
		timerPoisonMistCD:Start(self:IsHeroic() and 32.7 or 34.9, self.vb.mistCount+1)
	elseif spellId == 467919 then
		self.vb.flamethrowerCount = self.vb.flamethrowerCount + 1
		specWarnFlamethrower:Show(self.vb.flamethrowerCount)
		specWarnFlamethrower:Play("frontal")
		timerFlamethrowerCD:Start(nil, self.vb.flamethrowerCount+1)
	elseif spellId == 463823 then
		self.vb.incinerationCount = self.vb.incinerationCount + 1
		specWarnIncineration:Show(self.vb.incinerationCount)
		specWarnIncineration:Play("aesoon")
		--Toxitron -- > Electron --> Magmatron --> Arcanotron
		timerPowerGeneratorSoakCD:Start(self:IsHeroic() and 30.3 or 35, self.vb.generatorCount+1)
	elseif spellId == 463829 then
		self.vb.chemicalBombCount = self.vb.chemicalBombCount + 1
		warnChemicalBomb:Show(self.vb.chemicalBombCount)
		timerChemicalBombCD:Start(nil, self.vb.chemicalBombCount+1)--
	elseif spellId == 463837 then
		self.vb.mistCount = self.vb.mistCount + 1
		warnPoisonMist:Show(self.vb.mistCount)
		--Toxitron -- > Electron --> Magmatron --> Arcanotron
		timerLethalAttractionCD:Start(self:IsHeroic() and 29.1 or 35, self.vb.lethalCount+1)
	end
end

--[[
function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 467926 then
		self.vb.livewireCount = self.vb.livewireCount + 1
		timerLiveWireCD:Start()--, self.vb.livewireCount+1
--	elseif spellId == 463847 then
--		self.vb.lethalCount = self.vb.lethalCount + 1
--		timerLethalAttractionCD:Start()--, self.vb.lethalCount+1
	end
end
--]]

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 470655 then
		local amount = args.amount or 1
		if amount % 20 == 0 then--Place holder. it likely stacks rapidly and need to know a good number for this
			warnMeltArmor:Show(args.destName, amount)
		end
	elseif spellId == 463852 then
		if self.Options.NPOnOverdrive then
			DBM.Nameplate:Show(true, args.destGUID, spellId)
		end
	elseif spellId == 463848 or spellId == 464609 then
		local playerIsInPair = false
		local icon = self.vb.lastIcon
		if args:IsPlayer() then
			playerIsInPair = true
			specWarnLethalAttraction:Show(args.sourceName)
			specWarnLethalAttraction:Play("linegather")
		elseif args:IsPlayerSource() then
			playerIsInPair = true
			specWarnLethalAttraction:Show(args.destName)
			specWarnLethalAttraction:Play("linegather")
		end
		if playerIsInPair then
			self:Unschedule(FatalYellRepeater)
			self:Schedule(2, FatalYellRepeater, self, icon)
			yellLethalAttraction:Yell(icon)
		end
		self.vb.lastIcon = self.vb.lastIcon + 1
	elseif spellId == 463837 then
		if args:IsPlayer() then
			specWarnPoisonMist:Show(flameThrower)
			specWarnPoisonMist:Play("movetoflamethrower")
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 463852 then
		if self.Options.NPOnOverdrive then
			DBM.Nameplate:Hide(true, args.destGUID, spellId)
		end
	elseif spellId == 463848 or spellId == 464609 then
		if args:IsPlayer() or args:IsPlayerSource() then
			warnLethalAttractionOver:Show()
			self:Unschedule(FatalYellRepeater)
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
	elseif cid == 226306 then--First dude dying and activating golems
		--Not perfect, variation due to RP and activation of golems
		--Arcanotron
		timerArcaneOverchargeCD:Start(9.7, 1)
		--Magmatron
		timerFlamethrowerCD:Start(11.7, 1)
		--Toxitron (First Possessed)
		timerChemicalBombCD:Start(3.6, 1)
		timerPoisonMistCD:Start(self:IsHeroic() and 25.8 or 30.2, 1)
		--Electron
		timerLiveWireCD:Start(32.7, 1)--Can't check on WCL, need heroic transcriptor for heroic
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 463847 then--Electrons Ultimate, Lethal Attraction
		self.vb.lastIcon = 1
		self.vb.lethalCount = self.vb.lethalCount + 1
		warnLethalAttraction:Show(self.vb.lethalCount)
		--Toxitron -- > Electron --> Magmatron --> Arcanotron
		timerIncinerationCD:Start(self:IsHeroic() and 25.4 or 29.9, self.vb.incinerationCount+1)
	elseif spellId == 467926 then
		self.vb.livewireCount = self.vb.livewireCount + 1
		timerLiveWireCD:Start(nil, self.vb.livewireCount+1)
	end
end

function mod:RAID_BOSS_WHISPER(msg)
	if msg:find("467926") then--Eruption Backup (if scan fails)
		specWarnLiveWire:Show()
		specWarnLiveWire:Play("scatter")
		yellLiveWire:Yell()
	end
end

function mod:OnTranscriptorSync(msg, targetName)
	if msg:find("467926") and targetName then--Eruption Backup (if scan fails)
		targetName = Ambiguate(targetName, "none")
		warnLiveWire:Show(self.vb.livewireCount, targetName)
	end
end
