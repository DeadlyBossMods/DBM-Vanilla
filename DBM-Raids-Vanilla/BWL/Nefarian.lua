local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isWrath then
	catID = 4
elseif isBCC or isClassic then
	catID = 5
else--retail or cataclysm classic and later
	catID = 3
end
-- luacheck: globals DBM
local mod	= DBM:NewMod("Nefarian-Classic","DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()
local CL	= DBM_COMMON_L

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(11583)
mod:SetEncounterID(617)
if not mod:IsClassic() then
	mod:SetModelID(11380)
end
mod:RegisterCombat("combat_yell", L.YellP1)
mod:SetWipeTime(50)--guesswork
mod:SetHotfixNoticeRev(20200310000000)--2020, Mar, 10th
mod:SetMinSyncRevision(20200310000000)--2020, Mar, 10th
mod:SetZone(469)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 22539 22686",
	"SPELL_AURA_APPLIED 22667 22687",
	"SPELL_AURA_REMOVED 22667",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_DIED",
	"UNIT_HEALTH"
)

local WarnAddsLeft			= mod:NewAnnounce("WarnAddsLeft", 2, "134154")
local warnClassCall			= mod:NewAnnounce("WarnClassCall", 3, "136116")
local warnPhase 			= mod:NewPhaseChangeAnnounce(2, nil, nil, nil, nil, nil, 2)
local warnPhase2Soon		= mod:NewPrePhaseAnnounce(2)
local warnPhase3Soon		= mod:NewPrePhaseAnnounce(3)
local warnShadowFlame		= mod:NewCastAnnounce(22539, 2)
local warnFear				= mod:NewCastAnnounce(22686, 2)

local specwarnShadowCommand	= mod:NewSpecialWarningTarget(22667, nil, nil, 2, 1, 2)
local specwarnVeilShadow	= mod:NewSpecialWarningDispel(22687, "RemoveCurse", nil, nil, 1, 2)
local specwarnClassCall		= mod:NewSpecialWarning("specwarnClassCall", nil, nil, nil, 1, 2)

local timerIntermission		= mod:NewIntermissionTimer("v12.9-14.9", nil, CL.INTERMISSION, true, nil, nil, "136106")
local timerClassCall 		= mod:NewTimer(30, "TimerClassCall", nil, nil, nil, 5)
local timerFearCD			= mod:NewVarTimer("v27-90.1", 22686, nil, nil, nil, 2)
local timerShadowFlameCD	= mod:NewVarTimer("v8.1-37.2", 22539, nil, false)
local timerShadowCommand	= mod:NewTargetTimer(15, 22667, nil, nil, nil, 3)

mod.vb.triggerEncounterStart = false
mod.vb.addLeft = 42
local addsGuidCheck = {}
local firstBossMod = DBM:GetModByName("Razorgore")

function mod:OnCombatStart(delay, yellTriggered)
	table.wipe(addsGuidCheck)
	self.vb.addLeft = 42
	self.vb.triggerEncounterStart = false
	self:RegisterOnUpdateHandler(function()
    if IsEncounterInProgress() and not self.vb.triggerEncounterStart then
		self.vb.triggerEncounterStart = true
		self:SendSync("Phase", 1)
	elseif not IsEncounterInProgress() and self:GetStage(1) then
        self:SendSync("Phase", 1.5)
	elseif IsEncounterInProgress() and self:GetStage(1.5) then
		self:SendSync("Phase", 2)
        self:UnregisterOnUpdateHandler()
    end
	end, 0.2)
end

function mod:OnCombatEnd(wipe)
	self:UnregisterOnUpdateHandler()
	if not wipe then
		local sodTrialMod = DBM:GetModByName("SoDBWLTrials")
		if sodTrialMod then
			sodTrialMod:StopBombTimerLoop()
		end
		DBT:CancelBar(DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT)
		if firstBossMod.vb.firstEngageTime then
			local thisTime = GetServerTime() - firstBossMod.vb.firstEngageTime
			if thisTime and thisTime > 0 then
				if not firstBossMod.Options.FastestClear then
					--First clear, just show current clear time
					DBM:AddMsg(DBM_CORE_L.RAID_DOWN:format(GetRealZoneText(469), DBM:strFromTime(thisTime)))
					firstBossMod.Options.FastestClear = thisTime
				elseif (firstBossMod.Options.FastestClear > thisTime) then
					--Update record time if this clear shorter than current saved record time and show users new time, compared to old time
					DBM:AddMsg(DBM_CORE_L.RAID_DOWN_NR:format(GetRealZoneText(469), DBM:strFromTime(thisTime), DBM:strFromTime(firstBossMod.Options.FastestClear)))
					firstBossMod.Options.FastestClear = thisTime
				else
					--Just show this clear time, and current record time (that you did NOT beat)
					DBM:AddMsg(DBM_CORE_L.RAID_DOWN_L:format(GetRealZoneText(469), DBM:strFromTime(thisTime), DBM:strFromTime(firstBossMod.Options.FastestClear)))
				end
			end
			firstBossMod.vb.firstEngageTime = nil
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(22539) then
		warnShadowFlame:Show()
		timerShadowFlameCD:Start()
	elseif args:IsSpell(22686) then
		warnFear:Show()
		timerFearCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(22687) then
		if self:CheckDispelFilter("curse") then
			specwarnVeilShadow:Show(args.destName)
			specwarnVeilShadow:Play("dispelnow")
		end
	elseif args:IsSpell(22667) then
		specwarnShadowCommand:Show(args.destName)
		specwarnShadowCommand:Play("findmc")
		timerShadowCommand:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(22667) then
		timerShadowCommand:Stop(args.destName)
	end
end

function mod:UNIT_DIED(args)
	local guid = args.destGUID
	local cid = self:GetCIDFromGUID(guid)
	if cid == 14264 or cid == 14263 or cid == 14261 or cid == 14265 or cid == 14262 or cid == 14302 then--Red, Bronze, Blue, Black, Green, Chromatic
		if not addsGuidCheck[guid] then
			addsGuidCheck[guid] = true
			self.vb.addLeft = self.vb.addLeft - 1
			--40, 35, 30, 25, 20, 15, 12, 9, 6, 3, 1
			if self.vb.addLeft >= 15 and (self.vb.addLeft % 5 == 0) or self.vb.addLeft < 15 and (self.vb.addLeft % 3 == 0) or self.vb.addLeft == 1 then
				WarnAddsLeft:Show(self.vb.addLeft)
			end
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellDK or msg:find(L.YellDK) then
		self:SendSync("ClassCall", "DEATHKNIGHT")
	elseif msg == L.YellDH or msg:find(L.YellDH) then
		self:SendSync("ClassCall", "DEMONHUNTER")
	elseif msg == L.YellDruid or msg:find(L.YellDruid) then
		self:SendSync("ClassCall", "DRUID")
	elseif msg == L.YellHunter or msg:find(L.YellHunter) then
		self:SendSync("ClassCall", "HUNTER")
	elseif msg == L.YellWarlock or msg:find(L.YellWarlock) then
		self:SendSync("ClassCall", "WARLOCK")
	elseif msg == L.YellMage or msg:find(L.YellMage) then
		self:SendSync("ClassCall", "MAGE")
	elseif msg == L.YellPaladin or msg:find(L.YellPaladin) then
		self:SendSync("ClassCall", "PALADIN")
	elseif msg == L.YellPriest or msg:find(L.YellPriest) then
		self:SendSync("ClassCall", "PRIEST")
	elseif msg == L.YellRogue or msg:find(L.YellRogue) then
		self:SendSync("ClassCall", "ROGUE")
	elseif msg == L.YellShaman or msg:find(L.YellShaman) then
		self:SendSync("ClassCall", "SHAMAN")
	elseif msg == L.YellWarrior or msg:find(L.YellWarrior) then
		self:SendSync("ClassCall", "WARRIOR")
	elseif msg == L.YellMonk or msg:find(L.YellMonk) then
		self:SendSync("ClassCall", "MONK")
--	elseif msg == L.YellEvoker or msg:find(L.YellEvoker) then
--		self:SendSync("ClassCall", "EVOKER")
--	elseif msg == L.YellP2 or msg:find(L.YellP2) then
--		self:SendSync("Phase", 1.5)
	elseif msg == L.YellP3 or msg:find(L.YellP3) then
		self:SendSync("Phase", 3)
	end
end

function mod:UNIT_HEALTH(uId)
	if UnitHealth(uId) / UnitHealthMax(uId) <= 0.25 and self:GetUnitCreatureId(uId) == 11583 and self:GetStage(2) then
		self:SetStage(2.5)
		warnPhase3Soon:Show()
	end
end

do
	local playerClass = UnitClass("player")
	local classIcons = {
		["DEATHKNIGHT"] = "135771",
		["DRUID"]       = "625999",
		["HUNTER"]      = "626000",
		["MAGE"]        = "626001",
		["MONK"]        = "626002",
		["PALADIN"]     = "626003",
		["PRIEST"]      = "626004",
		["ROGUE"]       = "626005",
		["SHAMAN"]      = "626006",
		["WARLOCK"]     = "626007",
		["WARRIOR"]     = "626008",
		["DEMONHUNTER"] = "1260827",
	}

	function mod:OnSync(msg, arg)
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
					timerIntermission:Start()
				elseif phase == 2 then
					warnPhase:Play("ptwo")
					timerIntermission:Stop()
					timerFearCD:Start()
					timerShadowFlameCD:Start()
				elseif phase == 3 then
					warnPhase:Play("pthree")
				end
			end
		end

		if not self:IsInCombat() then return end
		if msg == "ClassCall" then
			local className = LOCALIZED_CLASS_NAMES_MALE[arg]
			local classColor = RAID_CLASS_COLORS[arg]
			local classNameColored = className
			if classColor then
				classNameColored = "|c" .. classColor.colorStr .. className .. "|r"
			end
			if arg == "SHAMAN" then
				specwarnClassCall:Play("attacktotem")
			end
			if playerClass == className and arg ~= "SHAMAN" then
				specwarnClassCall:Show()
				specwarnClassCall:Play("targetyou")
			else
				warnClassCall:UpdateIcon(classIcons[arg])
				warnClassCall:Show(classNameColored)
			end
			timerClassCall:Start(30, className)
			timerClassCall:UpdateIcon(classIcons[arg], className)
		end
	end
end
