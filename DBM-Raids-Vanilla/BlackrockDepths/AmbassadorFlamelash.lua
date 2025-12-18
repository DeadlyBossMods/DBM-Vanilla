local mod	= DBM:NewMod(2669, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(226302)
mod:SetEncounterID(3047)
mod:SetHotfixNoticeRev(20241029000000)
--mod:SetMinSyncRevision(20211203000000)
mod:SetZone(2792)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 470203 470164 464379 470244 464378 470330 464372",
	"SPELL_AURA_APPLIED 470203 470207 464981",
	"SPELL_AURA_REMOVED 470203 464981",
	"UNIT_DIED"
)

--[[
(ability.id = 470203 or ability.id = 470164 and source.id = 226302 or ability.id = 470244 or ability.id = 464378  or ability.id = 464372) and type = "begincast"
or (ability.id = 464379 or ability.id = 470330) and type = "begincast"
--]]
local warnMagmaInfusion						= mod:NewCountAnnounce(470164, 2)
local warnMagmaSweep						= mod:NewCountAnnounce(464379, 3, nil, nil, nil ,nil, nil, 17)
local warnSummonFirestarters				= mod:NewCountAnnounce(470244, 3)
local warnExplosiveDemise					= mod:NewCastAnnounce(470330, 4)
local warnAnchorsRemaining					= mod:NewAddsLeftAnnounce(464771, 2)

local specWarnCremate						= mod:NewSpecialWarningMoveTo(470203, nil, nil, nil, 1, 2)
local yellCremate							= mod:NewShortYell(470203)
local yellCremateFades						= mod:NewShortFadesYell(470203)
local specWarnFlamelash						= mod:NewSpecialWarningTaunt(470207, nil, nil, nil, 1, 2)
local yellSweep								= mod:NewShortYell(464379, DBM_COMMON_L.FRONTAL)
local specWarnFixate						= mod:NewSpecialWarningYou(464981, nil, nil, nil, 1, 2)
local specWarnSummonFlamewalker				= mod:NewSpecialWarningSwitchCount(464378, "-Healer", nil, nil, 1, 2)
local specWarnPortalAnchors					= mod:NewSpecialWarningSwitchCount(464771, nil, nil, nil, 1, 2)

local timerCremateCD						= mod:NewCDCountTimer(33, 470203, DBM_COMMON_L.GROUPSOAK.." (%s)", nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
local timerMagmaInfusionCD					= mod:NewCDCountTimer(33, 470164, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerSummonFirestartersCD				= mod:NewCDCountTimer(130, 470244, nil, nil, nil, 1)
local timerSummonFlamewalkerCD				= mod:NewCDCountTimer(33, 464378, nil, nil, nil, 1, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerPortalAnchorsCD					= mod:NewCDCountTimer(33, 464771, nil, nil, nil, 6)
local timerBerserk							= mod:NewBerserkTimer(600)

mod:AddNamePlateOption("NPOnFixate", 464981)
--mod:AddSetIconOption("SetIconOnBees", 438025, true, 5, {8, 7, 6})

local difficulty = "normal"
local allTimers = {
	["heroic"] = {--Complete up to 6:34, some may be missing at end
		[470203] = {52.9, 53, 63, 68, 60, 64},--Cremate
		[470164] = {18.8, 69, 63, 66, 63, 66, 63},--Magma Infusion
		[470244] = {10, 70, 60, 70, 60, 70},--Summon Firestarters
		[464378] = {30, 90, 40, 67.9, 25, 36.7, 88},--Summon Flamewalker
		[464372] = {65, 124, 130},--Portal Anchors
	},
	["normal"] = {--Complete up to 7 minute berserk
		[470203] = {51.9, 53, 63, 58, 70, 59.5},--Cremate
		[470164] = {19.1, 62, 66, 62, 66, 62, 66},--Magma Infusion
		[470244] = {10, 130, 130},--Summon Firestarters
		[464378] = {30, 90, 40, 77, 18, 35, 90, 40},--Summon Flamewalker
		[464372] = {65, 124, 130},--Portal Anchors
	},
	["lfr"] = {--Complete up to 7 minute berserk
		[470203] = {51.9, 53, 63, 58, 70, 58.4},--Cremate
		[470164] = {18.3, 62, 66, 55, 66, 62, 68},--Magma Infusion
		[470244] = {9.2, 130, 115, 130},--Summon Firestarters
		[464378] = {30, 90, 32, 76.8, 18, 35, 90, 40},--Summon Flamewalker
		[464372] = {65, 124, 130},--Portal Anchors
	},
}

local castsPerGUID = {}
mod.vb.cremateCount = 0
mod.vb.infusionCount = 0
mod.vb.sweepCount = 0
mod.vb.firestartersCount = 0
mod.vb.flamewalkerCount = 0
mod.vb.portalCount = 0
mod.vb.anchorCount = 12

function mod:OnCombatStart(delay)
	self.vb.cremateCount = 0
	self.vb.infusionCount = 0
	self.vb.firestartersCount = 0
	self.vb.flamewalkerCount = 0
	self.vb.portalCount = 0
	if self:IsHeroic() then
		difficulty = "heroic"
	elseif self:IsNormal() then
		difficulty = "normal"
	else
		difficulty = "lfr"
	end
	timerMagmaInfusionCD:Start(allTimers[difficulty][470164][1]-delay, 1)
	timerSummonFirestartersCD:Start(allTimers[difficulty][470244][1]-delay, 1)
	timerSummonFlamewalkerCD:Start(allTimers[difficulty][464378][1]-delay, 1)
	timerCremateCD:Start(allTimers[difficulty][470203][1]-delay, 1)
	timerPortalAnchorsCD:Start(allTimers[difficulty][464372][1]-delay, 1)
	timerBerserk:Start(428-delay)
	if self.Options.NPOnFixate then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
	end
end

function mod:OnCombatEnd()
	table.wipe(castsPerGUID)
	if self.Options.NPOnFixate then
		DBM.Nameplate:Hide(true, nil, nil, nil, true, true)
	end
end

function mod:OnTimerRecovery()
	if self:IsHeroic() then
		difficulty = "heroic"
	elseif self:IsNormal() then
		difficulty = "normal"
	else
		difficulty = "lfr"
	end
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 470203 then
		self.vb.cremateCount = self.vb.cremateCount + 1
		local timer = self:GetFromTimersTable(allTimers, difficulty, false, spellId, self.vb.cremateCount+1)
		if timer and timer > 0 then
			timerCremateCD:Start(timer, self.vb.cremateCount+1)
		end
	elseif spellId == 470164 and args:GetSrcCreatureID() == 226302 then
		self.vb.infusionCount = self.vb.infusionCount + 1
		self.vb.sweepCount = 0
		warnMagmaInfusion:Show(self.vb.infusionCount)
		local timer = self:GetFromTimersTable(allTimers, difficulty, false, spellId, self.vb.infusionCount+1)
		if timer and timer > 0 then
			timerMagmaInfusionCD:Start(timer, self.vb.infusionCount+1)
		end
	elseif spellId == 464379 then
		if args:GetSrcCreatureID() == 226302 then--From Boss
			self.vb.sweepCount = self.vb.sweepCount + 1
			warnMagmaSweep:Show(self.vb.sweepCount)
			warnMagmaSweep:Play("frontal")
		else--From Adds
			if not castsPerGUID[args.sourceGUID] then castsPerGUID[args.sourceGUID] = 0 end
			castsPerGUID[args.sourceGUID] = castsPerGUID[args.sourceGUID] + 1
			warnMagmaSweep:Show(castsPerGUID[args.sourceGUID])
			warnMagmaSweep:Play("frontal")
		end
		if self:IsTanking("player", nil, nil, true, args.sourceGUID) then
			yellSweep:Yell()
		end
	elseif spellId == 470244 then
		self.vb.firestartersCount = self.vb.firestartersCount + 1
		warnSummonFirestarters:Show(self.vb.firestartersCount)
		local timer = self:GetFromTimersTable(allTimers, difficulty, false, spellId, self.vb.firestartersCount+1)
		if timer and timer > 0 then
			timerSummonFirestartersCD:Start(timer, self.vb.firestartersCount+1)
		end
	elseif spellId == 464378 then
		self.vb.flamewalkerCount = self.vb.flamewalkerCount + 1
		specWarnSummonFlamewalker:Show(self.vb.flamewalkerCount)
		specWarnSummonFlamewalker:Play("killmob")
		local timer = self:GetFromTimersTable(allTimers, difficulty, false, spellId, self.vb.flamewalkerCount+1)
		if timer and timer > 0 then
			timerSummonFlamewalkerCD:Start(timer, self.vb.flamewalkerCount+1)
		end
	elseif spellId == 470330 then
		warnExplosiveDemise:Show()
	elseif spellId == 464372 then
		self.vb.portalCount = self.vb.portalCount + 1
		self.vb.anchorCount = 12
		specWarnPortalAnchors:Show(self.vb.portalCount)
		specWarnPortalAnchors:Play("targetchange")
		local timer = self:GetFromTimersTable(allTimers, difficulty, false, spellId, self.vb.portalCount+1)
		if timer and timer > 0 then
			timerPortalAnchorsCD:Start(timer, self.vb.portalCount+1)
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 470203 then
		if args:IsPlayer() then
			specWarnCremate:Show(DBM_COMMON_L.EDGE)
			specWarnCremate:Play("runtoedge")
			yellCremate:Yell()
			yellCremateFades:Countdown(spellId)
		else
			specWarnCremate:Show(args.destName)
			specWarnCremate:Play("helpsoak")
		end
	elseif spellId == 470207 and not args:IsPlayer() then
		specWarnFlamelash:Show(args.destName)
		specWarnFlamelash:Play("tauntboss")
	elseif spellId == 464981 then
		if args:IsPlayer() then
			specWarnFixate:Show()
			specWarnFixate:Play("targetyou")
			if self.Options.NPOnFixate then
				DBM.Nameplate:Show(true, args.sourceGUID, spellId)
			end
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 470203 then
		if args:IsPlayer() then
			yellCremateFades:Cancel()
		end
	elseif spellId == 464981 then
		if args:IsPlayer() then
			if self.Options.NPOnFixate then
				DBM.Nameplate:Hide(true, args.sourceGUID, spellId)
			end
		end
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 230807 then
		self.vb.anchorCount = self.vb.anchorCount - 1
		if self.vb.anchorCount % 3 == 0 then
			warnAnchorsRemaining:Show(self.vb.anchorCount)
		end
	end
end
