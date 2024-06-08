local mod	= DBM:NewMod("ThermapluggSoD", "DBM-Raids-Vanilla", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218538, 218970, 218972, 218974, 218537)--(red, blue, green, gray, thermaplugg)
mod:SetEncounterID(2940)
mod:SetBossHPInfoToHighest()
mod:SetHotfixNoticeRev(20240214000000)
mod:SetMinSyncRevision(20240214000000)

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
mod:SetMinCombatTime(25)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 438713 438723",
	"SPELL_CAST_SUCCESS 11518 11521 11798 11524 11526 11527 438683 438719 438726 438732",
	"SPELL_AURA_APPLIED 438710 438720 438727 438735",
	"SPELL_AURA_REMOVED 438735",
	"SPELL_AURA_APPLIED_DOSE 438710 438720 438727",
	"UNIT_DIED",
	"UNIT_SPELLCAST_SUCCEEDED"
)

--NOTE: Fire --> Frost --> Poison --> Hybrid (has powers of 3 previous ones)
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
local warningSummonBomb				= mod:NewCountAnnounce(437853, 2)

local timerRP						= mod:NewCombatTimer(12.45)
local timerSummonBombCD				= mod:NewCDTimer(10.1, 437853, nil, nil, nil, 1)--10.1 but can't be cast while bots are casting other things, and gets long delay during their long breath casts

mod:AddInfoFrameOption(438735)
mod:AddSetIconOption("SetIconOnButtonDebuff", 438735, true, 0, {1, 2, 3, 4, 5, 6})

--Stage 1: STX-96/FR
mod:AddTimerLine(SCENARIO_STAGE:format(1))
local warningSprocketfire			= mod:NewSpellAnnounce(438683, 2, nil, false, 2)
local warnSprocketFireDebuff		= mod:NewStackAnnounce(438710, 2, nil, "Tank|Healer")

local specWarnFurnaceSurge			= mod:NewSpecialWarningRun(438713, nil, nil, nil, 4, 2)

local timerSprocketfireCD			= mod:NewCDTimer(5.2, 438683, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--5.2-8.5
local timerFurnaceSurgeCD			= mod:NewCDTimer(33.9, 438713, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
--Stage 2: STX-97/IC
mod:AddTimerLine(SCENARIO_STAGE:format(2))
local warningSupercooledSmash		= mod:NewSpellAnnounce(438719, 2, nil, false, 2)
local warnFreezing					= mod:NewStackAnnounce(438720, 2, nil, "Tank|Healer")
local warningCoolantDischarge		= mod:NewSpellAnnounce(438723, 3)

local timerSupercooledSmashCD		= mod:NewCDTimer(5.2, 438719, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--5.2-8.5
local timerCoolantDischargeCD		= mod:NewCDTimer(24.2, 438723, nil, nil, nil, 2)
--Stage 3: STX-98/PO
mod:AddTimerLine(SCENARIO_STAGE:format(3))
local warningHazHammer				= mod:NewSpellAnnounce(438726, 2, nil, false, 2)
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

mod.vb.currentIcon = 8

-- "<0.77 20:49:45> [ENCOUNTER_START] 2940#Mekgineer Thermaplugg#198#10", -- [1]
-- "<2.04 20:49:46> [CHAT_MSG_MONSTER_YELL] Usurpers! Gnomeregan is mine!#Mekgineer Thermaplugg###Mekgineer Thermaplugg##0#0##0#26662#nil#0#false#false#false#false", -- [1]
-- "<13.18 20:49:57> [CLEU] SWING_DAMAGE#Vehicle-0-5250-90-10566-218538-00004BC7DE#STX-96/FR#Player-5826-01FA12C2#Frankblack#618#-1#nil#nil", -- [80]
-- "<13.22 20:49:57> [PLAYER_REGEN_DISABLED] +Entering combat!", -- [3]
-- "<13.66 20:49:57> [UNIT_SPELLCAST_SUCCEEDED] PLAYER_SPELL{Frankblack} -Sunder Armor- [[raid6:Cast-3-5250-90-10566-8380-000B4BC7E5:8380]]", -- [86]

function mod:OnCombatStart(delay)
	self.vb.currentIcon = 1
	self:SetStage(1)
	timerRP:Start(-delay)
	timerSprocketfireCD:Start(21.4-delay)
	timerFurnaceSurgeCD:Start(33.7-delay)--33-36
	if self.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellName(438735))
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
		timerSummonBombCD:Stop()
		timerSummonBombCD:Start(14)
		timerSprocketfireCD:Stop()
		timerSprocketfireCD:Start(18.9)--18.9-24.3
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
		timerSummonBombCD:Start()
		if args:IsSpell(11518) then -- Activate Bomb 01
			warningSummonBomb:Show(1)
		elseif args:IsSpell(11521) then -- Activate Bomb 02
			warningSummonBomb:Show(2)
		elseif args:IsSpell(11798) then -- Activate Bomb 03B (yes 03B)
			-- Never actually shows up in combat log at the moment, see UNIT_SPELLCAST_SUCCEEDED below for triggering this one.
			warningSummonBomb:Show(3)
		elseif args:IsSpell(11524) then -- Activate Bomb 04
			warningSummonBomb:Show(4)
		elseif args:IsSpell(11526) then -- Activate Bomb 05
			warningSummonBomb:Show(5)
		elseif args:IsSpell(11527) then -- Activate Bomb 06
			warningSummonBomb:Show(6)
		end
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
			local playerUID, bossUID, bossUIDTwo = DBM:GetRaidUnitId(args.destName), DBM:GetUnitIdFromCID(218538), DBM:GetUnitIdFromCID(218974)
			--Freezing is also applied ot others who walk through ice on ground, so we try to scope it to tanks only by only reporting units who are highest threat on bots threat table
			if (bossUID or bossUIDTwo) and self:IsTanking(playerUID, bossUIDTwo or bossUID, nil, true) then
				warnSprocketFireDebuff:Cancel()
				warnSprocketFireDebuff:Schedule(1, args.destName, amount)
			end
		end
	elseif args:IsSpell(438720) then
		local amount = args.amount or 1
		if amount >= 3 then--ability is cast in 3s for most part so a good starting point
			local playerUID, bossUID, bossUIDTwo = DBM:GetRaidUnitId(args.destName), DBM:GetUnitIdFromCID(218972), DBM:GetUnitIdFromCID(218974)
			--Freezing is also applied ot others who walk through ice on ground, so we try to scope it to tanks only by only reporting units who are highest threat on bots threat table
			if (bossUID or bossUIDTwo) and self:IsTanking(playerUID, bossUIDTwo or bossUID, nil, true) then
				warnFreezing:Cancel()
				warnFreezing:Schedule(1, args.destName, amount)
			end
		end
	elseif args:IsSpell(438727) then
		local amount = args.amount or 1
		if amount >= 3 then--ability is cast in 3s for most part so a good starting point
			warnRadiationSickness:Show(args.destName, amount)
		end
	elseif args:IsSpell(438735) and self.Options.SetIconOnButtonDebuff then
		self:SetIcon(args.destName, self.vb.currentIcon)
		self.vb.currentIcon = self.vb.currentIcon % 6 + 1
		-- Get rid of the icon a bit early, if you have a second left you are a good designated button clicker
		self:ScheduleMethod(29, "RemoveIcon", args.destName)
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(438735) and self.Options.SetIconOnButtonDebuff then
		-- Shouldn't be necessary since removal is scheduled 1 second prior to expiration
		self:RemoveIcon(args.destName)
	end
end

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 218974 then--The only mech that dies
		self:SetStage(5)
		--Should not need to subtrack bosses left manually here, UNIT_DIED should increment it - 1
		timerTankCD:Stop()
		timerSpecialCD:Stop()
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 438572 then--Vehicle Damaged (Fires for the end of stage 1-4
		local cid = self:GetUnitCreatureId(uId)
		self:SendSync("PhaseChange", cid)
	elseif spellId == 11523 then -- Activate Bomb 03, missing from SPELL_CAST_START
		self:SendSync("Bomb3")
	end -- There is also 11511 which is "Bomb A" (whatever that is). All other bombs are missing vom UCS but are in combat log
end

--Support early stopping previous stage timers at very least.
--Can't start next stage timers here though do to inconsistency with transition time (due to RP walking)
function mod:OnSync(msg, cid)
	if not self:IsInCombat() then return end
	if msg == "PhaseChange" and cid and self:AntiSpam(10, 2) then
		cid = tonumber(cid)
		if cid == 218538 then--STX-96/FR (Fire)
			timerSprocketfireCD:Stop()
			timerFurnaceSurgeCD:Stop()
		elseif cid == 218970 then--STX-97/IC (Fire)
			timerSupercooledSmashCD:Stop()
			timerCoolantDischargeCD:Stop()
		elseif cid == 218972 then--STX-98/PO (Poison)
			timerHazHammerCD:Stop()
			timerToxicVentilationCD:Stop()
		elseif cid == 218974 then--STX-99/XD (Hybrid)
			timerTankCD:Stop()
			timerSpecialCD:Stop()
		end
	elseif msg == "Bomb3" and self:AntiSpam(3, 1) then
		warningSummonBomb:Show(3)
	end
end
