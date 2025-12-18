local mod	= DBM:NewMod(2670, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(226305, 226314)
mod:SetEncounterID(3049)
--mod:SetUsedIcons(8, 7, 6)
mod:SetHotfixNoticeRev(20241028000000)
--mod:SetMinSyncRevision(20211203000000)
mod:SetZone(2792)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 466447 465210 465089 465091 466371 465086 470599 466504 470609 470605 465225 470649 465100 465093 465268",
	"SPELL_EXTRA_ATTACKS 465062",
--	"SPELL_SUMMON",
	"SPELL_AURA_APPLIED 465069 470603 470600",
	"SPELL_AURA_APPLIED_DOSE 465070",
--	"SPELL_AURA_REMOVED",
--	"SPELL_PERIODIC_DAMAGE",
--	"SPELL_PERIODIC_MISSED",
	"UNIT_DIED",
	"UNIT_AURA_UNFILTERED",
	"UNIT_SPELLCAST_SUCCEEDED boss1 boss2 boss3"
)

--[[
(ability.id = 466447 or ability.id = 465210 or ability.id = 465086 or ability.id = 470599 or ability.id = 466504 or ability.id = 470609 or ability.id = 470605 or ability.id = 465225 or ability.id = 470649 or ability.id = 465100 or ability.id = 465268) and type = "begincast"
 or ability.id = 465069 and type = "applybuff"
 or (ability.id = 465093 or ability.id = 465089 or ability.id = 465091 or ability.id = 466371) and type = "begincast"
--]]
--Emperor Dagran Thaurissan
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30904))

local warnIronfoe							= mod:NewSpellAnnounce(465062, 3)
local warnHandofTHaurissan					= mod:NewTargetNoFilterAnnounce(466447, 4)
local warnMagmaClap							= mod:NewCountAnnounce(465065, 3)
local warnCallGuard							= mod:NewSpellAnnounce(465077, 2, nil, nil, nil, nil, nil, 12)
local warnCallAmbassador					= mod:NewSpellAnnounce(465079, 2)
local warnIronBrandStack					= mod:NewStackAnnounce(465070, 2, nil, "Tank")

local specWarnCallAmbassador				= mod:NewSpecialWarningSwitch(465079, "Ranged", nil, nil, 1, 2)
local specWarnIronBrandtaunt				= mod:NewSpecialWarningTaunt(465070, nil, nil, nil, 1, 2)
local specWarnHandofThaurissan				= mod:NewSpecialWarningYou(466447, nil, nil, nil, 1, 2)
local yellHandofThaurissan					= mod:NewShortYell(466447)
--local yellHandofThaurissanFades			= mod:NewShortFadesYell(466447)

local timerIronfoeCD						= mod:NewCDTimer(6.8, 465062, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--6.8-20
local timerHandofThaurissanCD				= mod:NewCDCountTimer(33, 466447, nil, nil, nil, 3)
local timerMagmaClapCD						= mod:NewCDCountTimer(40, 465065, nil, nil, nil, 3)
local timerCallGuardCD						= mod:NewCDCountTimer(30, 465077, nil, nil, nil, 1)
local timerCallAmbassadorCD					= mod:NewCDTimer(45, 465079, nil, nil, nil, 1)
--Guards
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30907))
local warnShrapnal							= mod:NewSpellAnnounce(465089, 2, nil, nil, nil, nil, nil, 2)

local timerShrapnalCD						= mod:NewCDNPTimer(12.1, 465089, nil, nil, nil, 5)
--Ambassador
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30908))
local warnMomentofTwilight					= mod:NewCastAnnounce(466371, 4)

local specWarnPyroblast						= mod:NewSpecialWarningInterruptCount(465091, "HasInterrupt", nil, nil, 1, 2)

local timerMomentofTwilight					= mod:NewCastNPTimer(5, 466371, nil, nil, nil, 2)
--Princess Moira Bronzebeard
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30905))
local warnNemesis							= mod:NewSpellAnnounce(466504, 2)
local warnNecrosis							= mod:NewSpellAnnounce(470599, 2)
local warnRadiantInfusion					= mod:NewSpellAnnounce(470605, 2, nil, nil, nil, nil, nil, 17)

local specWarnMindBlast						= mod:NewSpecialWarningInterrupt(465086, "HasInterrupt", nil, nil, 1, 2)
local specWarnNecrosis						= mod:NewSpecialWarningMoveAway(470600, nil, nil, nil, 1, 2)
local yellNecrosis							= mod:NewYell(470600)
local specWarnLingeringNecrosis				= mod:NewSpecialWarningYou(470603, nil, nil, nil, 1, 2)
local specWarnMindShatteringScreams			= mod:NewSpecialWarningDodge(470609, nil, nil, nil, 2, 2)

local timerNemesisCD						= mod:NewCDTimer(9.6, 466504, nil, nil, nil, 5, nil, DBM_COMMON_L.MAGIC_ICON)
--local timerNecrosisCD						= mod:NewCDTimer(30, 470599, nil, nil, nil, 3)--Possibly health based
--local timerMindShatteringScreamsCD			= mod:NewCDTimer(57.1, 470609, nil, nil, nil, 3)--57.1-69 (probably also health based_
--Avatar of Ragnaros
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30906))

local specWarnVolcanicBlast					= mod:NewSpecialWarningYou(465225, nil, nil, nil, 1, 2)
local yellVolcanicBlast						= mod:NewYell(465225, nil, nil, nil, "YELL")
local yellVolcanicBlastFades				= mod:NewShortFadesYell(465225, nil, nil, nil, "YELL")
local specWarnVolcanicBlastSoak				= mod:NewSpecialWarningMoveTo(465225, nil, nil, nil, 1, 2)
local specWarnVolcanicVolley				= mod:NewSpecialWarningCount(470649, nil, nil, nil, 2, 2)
local specWarnSummonFireguard				= mod:NewSpecialWarningSwitchCount(465100, "Dps", nil, nil, 1, 2)
local specWarnFireNova						= mod:NewSpecialWarningInterrupt(465093, "HasInterrupt", nil, nil, 1, 2)
local specWarnFieryDemise					= mod:NewSpecialWarningSoak(465268, nil, nil, nil, 2, 2)

local timerVolcanicBlastCD					= mod:NewCDCountTimer(26.1, 465225, nil, nil, nil, 3)
local timerVolcanicVolleyCD					= mod:NewCDCountTimer(15, 470649, nil, nil, nil, 2)
local timerSummonFireguardCD				= mod:NewCDCountTimer(30, 465100, nil, nil, nil, 1)

--mod:AddNamePlateOption("NPOnHoney", 465225)
--mod:AddSetIconOption("SetIconOnBees", 438025, true, 5, {8, 7, 6})

local handWarned = {}
local castsPerGUID = {}
mod.vb.hammerCount = 0
mod.vb.clapCount = 0
mod.vb.guardCount = 0
mod.vb.necrosisCount = 0
mod.vb.meteorCount = 0
mod.vb.volleyCount = 0
mod.vb.fireguardCount = 0
local guardTimers = {30, 30, 30, 25, 30}--Seems to wildy variate so this is not correct way to do it

---Checks for skipped first hand of stage 3
--Context: https://www.warcraftlogs.com/reports/6NaTd1m8ZwyGcCv7#pins=2%24Off%24%23244F4B%24expression%24ability.id%20%3D%20466447%20and%20type%20%3D%20%22begincast%22%20or%20ability.id%20%3D%20465069%20and%20type%20%3D%20%22applybuff%22%20or%20ability.id%20%3D%20465210%20and%20type%20%3D%20%22begincast%22&view=events&boss=3049&difficulty=4
---@param self DBMMod
local function checkForSkippedHand(self)
	DBM:Debug("Detected skipped hand cast, starting backup timer")
	timerHandofThaurissanCD:Start(35, self.vb.hammerCount+1)
end

function mod:MeteorTarget(targetname, uId, delay)
	if not targetname then return end
	if targetname == UnitName("player") then
		specWarnVolcanicBlast:Show()
		yellVolcanicBlast:Yell()
		yellVolcanicBlastFades:Countdown(5-delay)
	else
		specWarnVolcanicBlastSoak:Show(targetname)
		specWarnVolcanicBlastSoak:Play("helpsoak")
	end
end

function mod:OnCombatStart(delay)
	table.wipe(castsPerGUID)
	self:SetStage(1)
	self.vb.hammerCount = 0
	self.vb.clapCount = 0
	self.vb.necrosisCount = 0
	--Dagran
	timerIronfoeCD:Start(8.6-delay)
	timerHandofThaurissanCD:Start(10-delay, 1)
	timerMagmaClapCD:Start(20-delay, 1)
	timerCallGuardCD:Start(30-delay, 1)
	timerCallAmbassadorCD:Start(45-delay)
	--Moira
	timerNemesisCD:Start(9.6-delay)
--	timerMindShatteringScreamsCD:Start(20-delay)--20-24
end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 466447 then
		self:Unschedule(checkForSkippedHand)
		self.vb.hammerCount = self.vb.hammerCount + 1
		--warnHandofTHaurissan:Show()
		timerHandofThaurissanCD:Start(self:GetStage(1) and 60 or self:GetStage(2) and 30 or 40, 2)
	elseif spellId == 465089 then
		if self:IsTanking("player", nil, nil, true, args.sourceGUID) then
			warnShrapnal:Show()
			warnShrapnal:Play("frontal")
		end
		timerShrapnalCD:Start(nil, args.sourceGUID)
	elseif spellId == 466371 then
		warnMomentofTwilight:Show()
		timerMomentofTwilight:Start(nil, args.sourceGUID)
	elseif spellId == 465091 then
		if not castsPerGUID[args.sourceGUID] then
			castsPerGUID[args.sourceGUID] = 0
		end
		castsPerGUID[args.sourceGUID] = castsPerGUID[args.sourceGUID] + 1
		local count = castsPerGUID[args.sourceGUID]
		if self:CheckInterruptFilter(args.sourceGUID, false, false) then--Count interrupt, so cooldown is not checked
			specWarnPyroblast:Show(args.sourceName, count)
			if count < 6 then
				specWarnPyroblast:Play("kick"..count.."r")
			else
				specWarnPyroblast:Play("kickcast")
			end
		end
	elseif spellId == 465086 then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnMindBlast:Show(args.sourceName)
			specWarnMindBlast:Play("kickcast")
		end
	elseif spellId == 465093 then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnFireNova:Show(args.sourceName)
			specWarnFireNova:Play("kickcast")
		end
	elseif spellId == 466504 then
		warnNemesis:Show()
	elseif spellId == 470599 then
		warnNecrosis:Show()
--		timerNemesisCD:Start()
	elseif spellId == 470609 then
		specWarnMindShatteringScreams:Show()
		specWarnMindShatteringScreams:Play("watchstep")
--		timerMindShatteringScreamsCD:Start()
	elseif spellId == 470605 then
		if self:IsTanking("player", nil, nil, true, args.sourceGUID) then
			warnRadiantInfusion:Show()
			warnRadiantInfusion:Play("soakbeam")
		end
	elseif spellId == 465225 then
		self.vb.meteorCount = self.vb.meteorCount + 1
		self:BossTargetScanner(args.sourceGUID, "MeteorTarget", 0.1, 6)
		timerVolcanicBlastCD:Start(26.1, self.vb.meteorCount+1)--FIXME for more accuracy later
	elseif spellId == 470649 then
		self.vb.volleyCount = self.vb.volleyCount + 1
		specWarnVolcanicVolley:Show(self.vb.volleyCount)
		timerVolcanicVolleyCD:Start(15, self.vb.volleyCount+1)
	elseif spellId == 465100 then
		self.vb.fireguardCount = self.vb.fireguardCount + 1
		specWarnSummonFireguard:Show(self.vb.fireguardCount)
		timerSummonFireguardCD:Start(30, self.vb.fireguardCount+1)
	elseif spellId == 465268 then
		specWarnFieryDemise:Show()
		specWarnFieryDemise:Play("helpsoak")
	elseif spellId == 465210 then--Beseech the Firelord
		self:SetStage(3)
		timerHandofThaurissanCD:Stop()
		timerIronfoeCD:Stop()
		timerMagmaClapCD:Stop()
		timerIronfoeCD:Start(18.2)
		timerHandofThaurissanCD:Start(20, self.vb.hammerCount+1)
		self:Schedule(25, checkForSkippedHand, self)
		timerMagmaClapCD:Start(40, self.vb.clapCount+1)
		timerVolcanicVolleyCD:Start(6.1, 1)
		timerVolcanicBlastCD:Start(21, 1)
	end
end

function mod:SPELL_EXTRA_ATTACKS(args)
	if args.spellId == 465062 then
		if self:IsTanking("player", nil, nil, true, args.sourceGUID) then
			warnIronfoe:Show()
		end
		timerIronfoeCD:Start()
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
	if spellId == 465069 then--Avatar of Flame
		self:SetStage(2)
		timerHandofThaurissanCD:Stop()
		timerMagmaClapCD:Stop()
		--Stop moira timers, which is not accurate if you stage 2 by zerging zagran insteed
		--Fortunately most won't do that
		timerNemesisCD:Stop()
--		timerMindShatteringScreamsCD:Stop()
		--Restart resetting timers
		timerHandofThaurissanCD:Start(15, self.vb.hammerCount+1)
		timerMagmaClapCD:Start(30, self.vb.clapCount+1)
	elseif spellId == 465070 then
		local amount = args.amount or 1
		if amount % 3 == 0 then
			if not args:IsPlayer() and amount >= 9 and not DBM:UnitDebuff("player", spellId) then
				specWarnIronBrandtaunt:Show(args.destName)
				specWarnIronBrandtaunt:Play("tauntboss")
			else
				warnIronBrandStack:Show(args.destName, amount)
			end
		end
	elseif spellId == 470603 and args:IsPlayer() then
		specWarnLingeringNecrosis:Show()
		specWarnLingeringNecrosis:Play("targetyou")
	elseif spellId == 470600 and args:IsPlayer() then
		specWarnNecrosis:Show()
		specWarnNecrosis:Play("range5")
		yellNecrosis:Yell()
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

--[[
function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 440134 then

	end
end
--]]

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
	if cid == 230992 then--Guards
		timerShrapnalCD:Stop(args.destGUID)
	elseif cid == 230993 then--Ambassador
		castsPerGUID[args.destGUID] = nil
		timerMomentofTwilight:Stop(args.destGUID)
	elseif cid == 226314 then
		timerNemesisCD:Stop()
--		timerMindShatteringScreamsCD:Stop()
	end
end

--"465066#Hand of Thaurissan#0#raid2#Jinchuuriki",
--Not in combat Log but has hidden aura
function mod:UNIT_AURA_UNFILTERED(uId)
	local hasHand = DBM:UnitDebuff(uId, 465066)--Hand of Thaurissan
	local name = DBM:GetUnitFullName(uId) or "UNKNOWN"
	if not hasHand and handWarned[name] then
		handWarned[name] = nil
	elseif hasHand and not handWarned[name] then
		handWarned[name] = true
		warnHandofTHaurissan:CombinedShow(1, name)
		if UnitIsUnit(uId, "player") then
			specWarnHandofThaurissan:Show()
			specWarnHandofThaurissan:Play("targetyou")
			yellHandofThaurissan:Yell()
		end
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 465065 then
		self.vb.clapCount = self.vb.clapCount + 1
		warnMagmaClap:Show(self.vb.clapCount)
		timerMagmaClapCD:Start(self:GetStage(1) and 60 or self:GetStage(2) and 30 or 40, self.vb.clapCount+1)
	elseif spellId == 465077 then
		self.vb.guardCount = self.vb.guardCount + 1
		warnCallGuard:Show()
		warnCallGuard:Play("securityguardcoming")
		local timer = guardTimers[self.vb.guardCount+1]
		if timer and timer > 0 then
			timerCallGuardCD:Start(timer, self.vb.guardCount+1)
		end
	elseif spellId == 465079 then
		if self.Options.SpecWarn465079switch then
			specWarnCallAmbassador:Show()
			specWarnCallAmbassador:Play("killmob")
		else
			warnCallAmbassador:Show()
		end
	end
end
