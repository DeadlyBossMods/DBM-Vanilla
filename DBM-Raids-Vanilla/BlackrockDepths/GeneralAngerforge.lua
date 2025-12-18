local mod	= DBM:NewMod(2668, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(226316)
mod:SetEncounterID(3045)
--mod:SetUsedIcons(8, 7, 6)
mod:SetHotfixNoticeRev(20241027000000)
--mod:SetMinSyncRevision(20211203000000)
mod:SetZone(2792)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 466107 466265 467415 464417 467464 466096 466086 466111 467505",
	"SPELL_CAST_SUCCESS 466254",
--	"SPELL_SUMMON 469955 467755 467622",
	"SPELL_AURA_APPLIED 464426 466107 464417 467607 466111 466258",
	"SPELL_AURA_APPLIED_DOSE 466107",
	"SPELL_AURA_REMOVED 464426 464413 466258",
--	"SPELL_PERIODIC_DAMAGE",
--	"SPELL_PERIODIC_MISSED",
	"UNIT_DIED",
	"UNIT_SPELLCAST_SUCCEEDED_UNFILTERED",
	"CHAT_MSG_RAID_BOSS_EMOTE",
	"INSTANCE_ENCOUNTER_ENGAGE_UNIT"
)

--[[

--]]
--TODO, adjust frequency of tank stack alert?
--TODO, do boss timers start on engage or only phase 2 when shields go down
--TODO, auto mark sappers or rogues?
--TODO, how many stacks for Crippling Dispel?
--NOTE, No heal or mind freeze nameplate timer because it doesn't actually go on cooldown when you kick it
--[[
(ability.id = 466107 or ability.id = 466265 or ability.id = 467415 or ability.id = 464417 or ability.id = 467464 or ability.id = 466096 or ability.id = 466086 or ability.id = 466111 or ability.id = 467505) and type = "begincast"
 or (ability.id = 466254 or ability.id = 467424) and type = "cast"
 or (source.type = "NPC" and source.firstSeen = timestamp and source.id = 226316) or (target.type = "NPC" and target.firstSeen = timestamp or target.id = 226316)
--]]
--General Angerforge
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30828))
local warnShatterArmor						= mod:NewStackAnnounce(466107, 3)
local warnDarkIronBombs						= mod:NewCountAnnounce(466265, 2)
local warnMoleMachine						= mod:NewCountAnnounce(467758, 2)
local warnStage2							= mod:NewPhaseAnnounce(2, nil, nil, nil, nil, nil, nil, 2)

local specWarnFireburstGrenade				= mod:NewSpecialWarningMoveTo(467415, nil, nil, nil, 1, 12)
--local yellHoneyMarinade					= mod:NewShortYell(438025)
--local yellHoneyMarinadeFades				= mod:NewShortFadesYell(438025)

local timerShatterArmorCD					= mod:NewCDCountTimer(17, 466107, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK)--Boss version
local timerDarkIronBombsCD					= mod:NewCDCountTimer(10, 466265, nil, nil, nil, 3)
local timerFireburstGrenadeCD				= mod:NewCDCountTimer(20, 467415, nil, nil, nil, 3)

mod:AddNamePlateOption("NPOnCommandingAura", 464426)
--Harbinger of Flames
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30835))
--local warnWorldinFlames						= mod:NewAddsLeftAnnounce(464413, 2)
--Shadowforge Flame Keeper
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30836))
local warnTorchDropped						= mod:NewCountAnnounce(467607, 1)
local warnTorchCarried						= mod:NewTargetNoFilterAnnounce(467607, 2)

local specWarnKeepersFlameDispel			= mod:NewSpecialWarningDispel(464417, "RemoveMagic", nil, nil, 1, 2)
local specWarnRingsOfFire					= mod:NewSpecialWarningDodge(467464, nil, nil, nil, 2, 2)

local timerKeepersFlameCD					= mod:NewCDPNPTimer(7, 464417, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)
local timerRingsOfFireCD					= mod:NewCDPNPTimer(23, 467464, nil, nil, nil, 3)

--mod:AddSetIconOption("SetIconOnBees", 438025, true, 5, {8, 7, 6})
--Anvilrage Officer
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30831))

local timerShatterArmorCDNP					= mod:NewCDNPTimer(16.7, 466107, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK)--Add version
--Anvilrage Medic
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30830))

local specWarnHeal							= mod:NewSpecialWarningInterruptCount(466096, "HasInterrupt", nil, nil, 1, 2)
local specWarnMindBlast						= mod:NewSpecialWarningInterrupt(466086, "HasInterrupt", nil, nil, 1, 2)

--local timerHealCD							= mod:NewCDPNPTimer(33, 466096, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
--local timerMindBlastCD					= mod:NewCDNPTimer(33, 466086, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
--Anvilrage Rogue
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30832))
--local warnStealthRemoved					= mod:NewFadesAnnounce(466234, 3)
local warnShadowstep						= mod:NewYouAnnounce(466254, 2)
local warnFixate							= mod:NewTargetAnnounce(466258, 2)

local specWarnCripplingDispel				= mod:NewSpecialWarningDispel(466111, "RemovePoison", nil, nil, 1, 2)
local specWarnFixate						= mod:NewSpecialWarningYou(466258, nil, nil, nil, 1, 2)

local timerCripplingPoisonCD				= mod:NewCDNPTimer(10.6, 466111, nil, nil, nil, 3, nil, DBM_COMMON_L.POISON_ICON)
local timerShadowstepCD						= mod:NewCDNPTimer(10.9, 466254, nil, nil, nil, 3)

mod:AddNamePlateOption("NPOnFixate", 466258)
--Anvilrage Artillerist
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30777))
--local warnMortar							= mod:NewSpellAnnounce(467505, 2)

local warnSpecWarnMortar					= mod:NewSpecialWarningDodge(467505, nil, nil, nil, 2, 2)

--local timerArtilleryBarrageCD				= mod:NewCDNPTimer(33, 467424, nil, nil, nil, 3)
--local timerMortarCD						= mod:NewCDNPTimer(33, 467505, nil, nil, nil, 3)
--Anvilrage Dragoon
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30829))
local specWarnFiringLine					= mod:NewSpecialWarningDodge(469943, nil, nil, nil, 2, 2)

--local timerFiringLineCD					= mod:NewCDNPTimer(33, 469943, nil, nil, nil, 3)

local castsPerGUID = {}
--mod.vb.FlamesRemaining = 3
mod.vb.addsCount = 0
mod.vb.torchesDropped = 0
--Stage 2
mod.vb.shatteredCount = 0
mod.vb.IronBombCount = 0
mod.vb.FireburstCount = 0

--Shatter Armor triggers 6 second ICD
--Dark Iron bombs trigger 3.6 ICD
--Fireburst Grenade triggers 7.2 ICD
local function updateAllTimers(self, ICD)
	DBM:Debug("updateAllTimers running", 3)
	if timerShatterArmorCD:GetRemaining(self.vb.shatteredCount+1) < ICD then
		local elapsed, total = timerShatterArmorCD:GetTime(self.vb.shatteredCount+1)
		local extend = ICD - (total-elapsed)
		DBM:Debug("timerShatterArmorCD extended by: "..extend, 2)
		timerShatterArmorCD:Update(elapsed, total+extend, self.vb.shatteredCount+1)
	end
	if timerDarkIronBombsCD:GetRemaining(self.vb.IronBombCount+1) < ICD then
		local elapsed, total = timerDarkIronBombsCD:GetTime(self.vb.IronBombCount+1)
		local extend = ICD - (total-elapsed)
		DBM:Debug("timerDarkIronBombsCD extended by: "..extend, 2)
		timerDarkIronBombsCD:Update(elapsed, total+extend, self.vb.IronBombCount+1)
	end
	if timerFireburstGrenadeCD:GetRemaining(self.vb.FireburstCount+1) < ICD then
		local elapsed, total = timerFireburstGrenadeCD:GetTime(self.vb.FireburstCount+1)
		local extend = ICD - (total-elapsed)
		DBM:Debug("timerFireburstGrenadeCD extended by: "..extend, 2)
		timerFireburstGrenadeCD:Update(elapsed, total+extend, self.vb.FireburstCount+1)
	end
end

function mod:OnCombatStart(delay)
	table.wipe(castsPerGUID)
--	self.vb.FlamesRemaining = 3
	self.vb.torchesDropped = 0
	self.vb.addsCount = 0
	self:SetStage(1)
	--Start boss timers that start here if applicable
	if self.Options.NPOnCommandingAura or self.Options.NPOnFixate then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
	end
end

function mod:OnCombatEnd()
	if self.Options.NPOnCommandingAura or self.Options.NPOnFixate then
		DBM.Nameplate:Hide(true, nil, nil, nil, true, true)
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 466107 then
		if args:GetSrcCreatureID() == 226316 then--Boss
			self.vb.shatteredCount = self.vb.shatteredCount + 1
			timerShatterArmorCD:Start(nil, self.vb.shatteredCount+1)
			updateAllTimers(self, 6)
		else--Adds
			timerShatterArmorCDNP:Start(nil, args.sourceGUID)
		end
	elseif spellId == 466265 then
		self.vb.IronBombCount = self.vb.IronBombCount + 1
		warnDarkIronBombs:Show(self.vb.IronBombCount)
		timerDarkIronBombsCD:Start(nil, self.vb.IronBombCount+1)
		updateAllTimers(self, 3.6)
	elseif spellId == 467415 then
		self.vb.FireburstCount = self.vb.FireburstCount + 1
		specWarnFireburstGrenade:Show(DBM_COMMON_L.BREAK_LOS)
		specWarnFireburstGrenade:Play("breaklos")
		timerFireburstGrenadeCD:Start(nil, self.vb.FireburstCount+1)
		updateAllTimers(self, 7.2)
	elseif spellId == 464417 then
		timerKeepersFlameCD:Start(nil, args.sourceGUID)
	elseif spellId == 467464 then
		specWarnRingsOfFire:Show()
		specWarnRingsOfFire:Play("watchstep")
		timerRingsOfFireCD:Start(nil, args.sourceGUID)
		timerKeepersFlameCD:Stop(args.sourceGUID)
		timerKeepersFlameCD:Start(11, args.sourceGUID)
	elseif spellId == 466096 then
		--timerHealCD:Start(nil, args.sourceGUID)
		if not castsPerGUID[args.sourceGUID] then
			castsPerGUID[args.sourceGUID] = 0
		end
		castsPerGUID[args.sourceGUID] = castsPerGUID[args.sourceGUID] + 1
		local count = castsPerGUID[args.sourceGUID]
		if self:CheckInterruptFilter(args.sourceGUID, false, false) then--Count interrupt, so cooldown is not checked
			specWarnHeal:Show(args.sourceName, count)
			if count < 6 then
				specWarnHeal:Play("kick"..count.."r")
			else
				specWarnHeal:Play("kickcast")
			end
		end
	elseif spellId == 466086 then
		--timerMindBlastCD:Start(nil, args.sourceGUID)
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnMindBlast:Show(args.sourceName)
			specWarnMindBlast:Play("kickcast")
		end
	elseif spellId == 466111 then
		timerCripplingPoisonCD:Start(nil, args.sourceGUID)
	elseif spellId == 467505 and self:AntiSpam(30, 1) then
--		warnMortar:Show()
		warnSpecWarnMortar:Show()
		warnSpecWarnMortar:Play("watchstep")
		--timerMortarCD:Start(nil, args.sourceGUID)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 466254 then
		if args:IsPlayer() then
			warnShadowstep:Show()
		end
		timerShadowstepCD:Start(nil, args.sourceGUID)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 464426 then
		if self.Options.NPOnCommandingAura then
			DBM.Nameplate:Show(true, args.destGUID, spellId)
		end
	elseif spellId == 466107 then
		local amount = args.amount or 1
		if amount % 3 == 0 then
			warnShatterArmor:Show(args.destName, amount)
		end
	elseif spellId == 464417 and self:CheckDispelFilter("magic") then
		specWarnKeepersFlameDispel:Show(args.destName)
		specWarnKeepersFlameDispel:Play("dispelboss")
	elseif spellId == 467607 then
--		warnTorchCarried:Show(args.destName)
		DBM:AddMsg("Blizzard has fixed torches not showing in combat log. Report to DBM authors if you see this message")
	elseif spellId == 466111 and self:CheckDispelFilter("poison") then
		specWarnCripplingDispel:Show(args.destName)
		specWarnCripplingDispel:Play("helpdispel")
	elseif spellId == 466258 then
		if args:IsPlayer() then
			specWarnFixate:Show()
			specWarnFixate:Play("targetyou")
			if self.Options.NPOnFixate then
				DBM.Nameplate:Show(true, args.sourceGUID, spellId)
			end
		else
			warnFixate:Show(args.destName)
		end
	--elseif spellId == 469943 and self:AntiSpam(10, 1) then
	--	specWarnFiringLine:Show()
	--	specWarnFiringLine:Play("farfromline")
		--timerFiringLineCD:Start(nil, args.destGUID)
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 464426 then
		if self.Options.NPOnCommandingAura then
			DBM.Nameplate:Hide(true, args.destGUID, spellId)
		end
	elseif spellId == 464413 then
		DBM:Debug("World in Flames Removed and logged")
		--self.vb.FlamesRemaining = self.vb.FlamesRemaining - 1
		--warnWorldinFlames:Show(self.vb.FlamesRemaining)
--	elseif spellId == 466234 then
--		warnStealthRemoved:Show()
	elseif spellId == 466258 then
		if args:IsPlayer() then
			if self.Options.NPOnFixate then
				DBM.Nameplate:Hide(true, args.sourceGUID, spellId)
			end
		end
	end
end

--[[
function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 440141 and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
--]]

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 231554 then--Shadowforge Flame Keeper
		timerKeepersFlameCD:Stop(args.destGUID)
		timerRingsOfFireCD:Stop(args.destGUID)
	elseif cid == 231555 or cid == 232247 then--Anvilrage Officer (231555 confirmed, 232247 unconfirmed)
		timerShatterArmorCDNP:Stop(args.destGUID)
	elseif cid == 232246 or cid == 231561 then--Anvilrage Medic (231561 confirmed, 232246 unconfirmed)
		castsPerGUID[args.sourceGUID] = nil
		--timerHealCD:Stop(args.destGUID)
		--timerMindBlastCD:Stop(args.destGUID)
	elseif cid == 231563 or cid == 232252 then--Anvilrage Rogue (231563 confirmed, 232252 unconfirmed)
		timerCripplingPoisonCD:Stop(args.destGUID)
		timerShadowstepCD:Stop(args.destGUID)
--	elseif cid == 232244 or cid == 233208 or cid == 231565 then--Anvilrage Artillerist
		--timerArtilleryBarrageCD:Stop(args.destGUID)
		--timerMortarCD:Stop(args.destGUID)
	elseif cid == 232245 or cid == 231562 or cid == 233205 then--Anvilrage Dragoon
		--timerFiringLineCD:Stop(args.destGUID)
	end
end

--Spells not logged and have no other detection
function mod:UNIT_SPELLCAST_SUCCEEDED_UNFILTERED(uId, _, spellId)
	if spellId == 467622 and self:AntiSpam(5, 3) then
		self:SendSync("TorchDropped")
	elseif spellId == 469943 and self:AntiSpam(5, 4) then--Limited range, will only detect if near the nameplate of the caster or it's your actual target
		self:SendSync("FiringLine")
	elseif spellId == 467607 and self:AntiSpam(5, 5) then
		local name = DBM:GetUnitFullName(uId) or "UNKNOWN"
		warnTorchCarried:Show(name)
	end
end

--"<116.14 21:34:04> [CHAT_MSG_RAID_BOSS_EMOTE] |TInterface\\ICONS\\Ability_Racial_MoleMachine.BLP:20|t General Angerforge deploys a |cFFFF0000|Hspell:467758|h[Mole Machine]|h|r.#General Angerforge#####0#0##0#2690#nil#0#false#false#false#false",
function mod:CHAT_MSG_RAID_BOSS_EMOTE(msg)
	if msg:find("spell:467758") then
		self.vb.addsCount = self.vb.addsCount + 1
		warnMoleMachine:Show(self.vb.addsCount)
		--timerMoleMachineCD:Start(nil, self.vb.addsCount+1)
	end
end

function mod:INSTANCE_ENCOUNTER_ENGAGE_UNIT()
	local GUID = UnitGUID("boss1")
	if GUID and self:GetStage(1) then
		self:SetStage(2)
		warnStage2:Show()
		warnStage2:Play("ptwo")
		timerShatterArmorCD:Start(5.4, 1)
		timerDarkIronBombsCD:Start(10.4, 1)
		timerFireburstGrenadeCD:Start(15.1, 1)
	end
end

function mod:OnSync(msg, sender)
	if msg == "TorchDropped" then
		self.vb.torchesDropped = self.vb.torchesDropped + 1
		warnTorchDropped:Show(self.vb.torchesDropped)
	elseif msg == "FiringLine" then
		specWarnFiringLine:Show()
		specWarnFiringLine:Play("farfromline")
		--timerFiringLineCD:Start()
	end
end
