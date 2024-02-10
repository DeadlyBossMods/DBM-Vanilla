local mod	= DBM:NewMod("ThermapluggSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218538, 218970, 218972, 218974, 218537)--(red, blue, green, gray, thermaplugg)
mod:SetEncounterID(2940)
mod:SetBossHPInfoToHighest()
mod:SetHotfixNoticeRev(20240209000000)
mod:SetMinSyncRevision(20240209000000)

--[[
STX-99/XD 218975 (inactive id for gray/hybrid main boss)
STX-98/PO 218973 (inactive id for green/Poison main boss)
STX-97/IC 218971 (inactive id for blue/Ice main boss
STX-96/FR 218969 (inactive id for red/Fire main boss)

STX-99/XD 218974 (active id for gray main boss)
STX-98/PO 218972 (active id for green main boss)
STX-97/IC 218970 (active id for blue main boss)
STX-96/FR 218538 (active id for red main boss)
--]]

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 438713 438723",
	"SPELL_CAST_SUCCESS 11518 11521 11798 11524 11526 11527 438683 438719 438726 438732",
	"SPELL_AURA_APPLIED 438710 438720 438727",
	"SPELL_AURA_APPLIED_DOSE 438710 438720 438727",
	"UNIT_DIED"
)

--NOTE: Fire --> Frost --> Poison --> Hybrid (has powers of 3 previous ones)
--TODO, what causes https://www.wowhead.com/classic/spell=441448/charged ? warn for it?
--TODO, dispel alerts for tank stacks?
--TODO, verify combat timer with transcriptor
--TODO, better phase change transitions with transcriptor
--[[
(ability.id = 438723 or ability.id = 438713) and type = "begincast"
 or (ability.id = 438719 or ability.id = 438732 or ability.id = 438726 or ability.id = 11518 or ability.id = 11521 or ability.id = 11798 or ability.id = 11524 or ability.id = 11526 or ability.id = 11527 or ability.id = 438683) and type = "cast"
 or (source.type = "NPC" and source.firstSeen = timestamp) and (source.id = 218538 or source.id = 218970 or source.id = 218972 or source.id = 218974 or source.id = 218537) or (target.type = "NPC" and target.firstSeen = timestamp) and (target.id = 218538 or target.id = 218970 or target.id = 218972 or target.id = 218974 or target.id = 218537)
 or type = "death" and (target.id = 218538 or target.id = 218970 or target.id = 218972 or target.id = 218974 or target.id = 218537)
--]]
--General
local warningSummonBomb				= mod:NewSpellAnnounce(437853, 2)

--local timerRP						= mod:NewCombatTimer(13)
local timerSummonBombCD				= mod:NewCDTimer(10.1, 437853, nil, nil, nil, 1)--10.1 but can't be cast while bots are casting other things, and gets long delay during their long breath casts

mod:AddInfoFrameOption(438735)
--Stage 1: STX-96/FR
mod:AddTimerLine(SCENARIO_STAGE:format(1))
local warningSprocketfire			= mod:NewSpellAnnounce(438683, 2, nil, "Tank|Healer")
local warnSprocketFireDebuff		= mod:NewStackAnnounce(438710, 2, nil, "Tank|Healer")

local specWarnFurnaceSurge			= mod:NewSpecialWarningRun(438713, nil, nil, nil, 4, 2)

local timerSprocketfireCD			= mod:NewCDTimer(5.2, 438683, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--5.2-8.5
local timerFurnaceSurgeCD			= mod:NewCDTimer(33.9, 438713, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
--Stage 2: STX-97/IC
mod:AddTimerLine(SCENARIO_STAGE:format(2))
local warningSupercooledSmash		= mod:NewSpellAnnounce(438719, 2, nil, "Tank|Healer")
local warnFreezing					= mod:NewStackAnnounce(438720, 2, nil, "Tank|Healer")
local warningCoolantDischarge		= mod:NewSpellAnnounce(438723, 3)

local timerSupercooledSmashCD		= mod:NewCDTimer(5.2, 438719, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--5.2-8.5
local timerCoolantDischargeCD		= mod:NewCDTimer(24.2, 438723, nil, nil, nil, 2)
--Stage 3: STX-98/PO
mod:AddTimerLine(SCENARIO_STAGE:format(3))
local warningHazHammer				= mod:NewSpellAnnounce(438726, 2, nil, "Tank|Healer")
local warnRadiationSickness			= mod:NewStackAnnounce(438727, 2, nil, "Tank|Healer")

local specWarnToxicVentilation		= mod:NewSpecialWarningInterrupt(438732, nil, nil, nil, 1, 2)

local timerHazHammerCD				= mod:NewCDTimer(5.2, 438726, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--5.2-8.5
local timerToxicVentilationCD		= mod:NewCDTimer(22.6, 438732, nil, nil, nil, 2)
--Stage 4: STX-99/XD
mod:AddTimerLine(SCENARIO_STAGE:format(4))
local timerTankCD					= mod:NewTimer(5.2, "timerTankCD", nil, "Tank|Healer", nil, 5, DBM_COMMON_L.TANK_ICON)--Shared timer for 3 tank abilities
local timerSpecialCD				= mod:NewCDSpecialTimer(21)--Shared timer for all 3 spells (furnace, coolant, and toxic)

--This function manually subtracks bossLeft, since first 3 don't die (thus core isn't auto subtracking)
--(variable declared and reset in core on engage based on # entries in CID table)
local function uglyAssStageChangeBecauseBlizzardHatesCombatLog(self, guid)
	local cid = self:GetCIDFromGUID(guid)
	if cid == 218974 and self:GetStage(4, 1) then
		self.vb.bossLeft = 2
		self:SetStage(4)
		timerHazHammerCD:Stop()
		timerToxicVentilationCD:Stop()
		timerSpecialCD:Start(13.9)--Still confident it's 20-21 after true phase change
		--Bomb timer doesn't restart, it just gets spell queued to death behind transition and bots higher prio spells
--		timerSummonBombCD:AddTime()
	elseif cid == 218972 and self:GetStage(3, 1) then
		self.vb.bossLeft = 3
		self:SetStage(3)
		timerSupercooledSmashCD:Stop()
		timerCoolantDischargeCD:Stop()
		timerToxicVentilationCD:Start(14.5)--Approx, since dirty phase change detection. Confident it's 20-21 after true phase change
		--Bomb timer doesn't restart, it just gets spell queued to death behind transition and bots higher prio spells
--		timerSummonBombCD:AddTime()
	elseif cid == 218970 and self:GetStage(2, 1) then
		self.vb.bossLeft = 4
		self:SetStage(2)
		timerSprocketfireCD:Stop()
		timerFurnaceSurgeCD:Stop()
		timerCoolantDischargeCD:Start(14.5)--Approx, since dirty phase change detection. Confident it's 20-21 after true phase change
		--Bomb timer doesn't restart, it just gets spell queued to death behind transition and bots higher prio spells
--		timerSummonBombCD:AddTime()
	end
end

function mod:OnCombatStart(delay)
	self:SetStage(1)
--	timerRP:Start(13-delay)
	timerSprocketfireCD:Start(21.4-delay)
	timerFurnaceSurgeCD:Start(33.7-delay)--33-36
	if self.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellInfo(438735))
		DBM.InfoFrame:Show(10, "playerdebuffremaining", 438735)
	end
end

function mod:OnCombatEnd()
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(438713) then
		timerSummonBombCD:Restart(14)
		timerSprocketfireCD:Restart(18.9)--18.9-24.3
		if self:GetStage(4) then
			timerSpecialCD:Start(21)
		else
			timerFurnaceSurgeCD:Start()
		end
		if self:IsTanking("player", nil, nil, nil, args.sourceGUID) then
			specWarnFurnaceSurge:Show()
			specWarnFurnaceSurge:Play("justrun")
			specWarnFurnaceSurge:ScheduleVoice(1.5, "keepmove")
		end
	elseif args:IsSpell(438723) then
		warningCoolantDischarge:Show()
		if self:GetStage(4) then
			timerSpecialCD:Start(21)
		else
			timerCoolantDischargeCD:Start()
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(11518, 11521, 11798, 11524, 11526, 11527) and self:AntiSpam(3, 1) then
		warningSummonBomb:Show()
		timerSummonBombCD:Start()
	elseif args:IsSpell(438683) then
		warningSprocketfire:Show()
		if self:GetStage(4) then
			timerTankCD:Start()
		else
			timerSprocketfireCD:Start()
			uglyAssStageChangeBecauseBlizzardHatesCombatLog(self, args.sourceGUID)--Stage 1 ability but also stage 4
		end
	elseif args:IsSpell(438719) then
		warningSupercooledSmash:Show()
		if self:GetStage(4) then
			timerTankCD:Start()
		else
			timerSupercooledSmashCD:Start()
			uglyAssStageChangeBecauseBlizzardHatesCombatLog(self, args.sourceGUID)--Stage 2 ability but also stage 4
		end
	elseif args:IsSpell(438726) then
		warningHazHammer:Show()
		if self:GetStage(4) then
			timerTankCD:Start()
		else
			timerHazHammerCD:Start()
			uglyAssStageChangeBecauseBlizzardHatesCombatLog(self, args.sourceGUID)--Stage 3 ability but also stage 4
		end
	elseif args:IsSpell(438732) then
		specWarnToxicVentilation:Show(args.sourceName)
		specWarnToxicVentilation:Play("kickcast")
		if self:GetStage(4) then
			timerSpecialCD:Start(21)
		else
			timerToxicVentilationCD:Start()
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(438710) then
		local amount = args.amount or 1
		if amount >= 3 then--ability is cast in 3s for most part so a good starting point
			warnSprocketFireDebuff:Show(args.destName, amount)
		end
	elseif args:IsSpell(438720) then
		local amount = args.amount or 1
		if amount >= 3 then--ability is cast in 3s for most part so a good starting point
			local playerUID, bossUID = DBM:GetRaidUnitId(args.destName), DBM:GetUnitIdFromCID(218972)
			--Freezing is also applied ot others who walk through ice on ground, so we try to scope it to tanks only by only reporting units who are highest threat on bots threat table
			if bossUID and self:IsTanking(playerUID, bossUID, nil, true) then
				warnFreezing:Show(args.destName, amount)
			end
		end
	elseif args:IsSpell(438727) then
		local amount = args.amount or 1
		if amount >= 3 then--ability is cast in 3s for most part so a good starting point
			warnRadiationSickness:Show(args.destName, amount)
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 218974 then--The only mech that dies
		self:SetStage(5)
		--Should not need to subtrack bosses left manually here, UNIT_DIED should increment it - 1
		timerTankCD:Stop()
		timerSpecialCD:Stop()
	end
end

--[[
--https://www.wowhead.com/classic/spell=438505/mech-pilot-transform-red
--https://www.wowhead.com/classic/spell=438602/mech-pilot-transform-blue
--https://www.wowhead.com/classic/spell=438603/mech-pilot-transform-green
--https://www.wowhead.com/classic/spell=438604/mech-pilot-transform-gray
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 411583 then--Replace Stand with Swim
		self:SendSync("PhaseChange")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "PhaseChange" and self:AntiSpam(30, 2) then

	end
end
--]]
