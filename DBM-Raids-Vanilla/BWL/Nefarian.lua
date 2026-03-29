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
mod:RegisterCombat("combat_yell", L.YellP1)--ENCOUNTER_START appears to fire when he lands, so start of phase 2, ignoring all of phase 1
mod:SetWipeTime(50)--guesswork
mod:SetHotfixNoticeRev(20200310000000)--2020, Mar, 10th
mod:SetMinSyncRevision(20200310000000)--2020, Mar, 10th
mod:SetZone(469)

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 22539 22686",
	"SPELL_AURA_APPLIED 22687 22667",
	"UNIT_DIED",
	"UNIT_HEALTH"
)

local WarnAddsLeft			= mod:NewAnnounce("WarnAddsLeft", 2, "134154")
local warnClassCall			= mod:NewAnnounce("WarnClassCall", 3, "136116")
local warnPhase1			= mod:NewPhaseAnnounce(1)
local warnPhase2			= mod:NewPhaseAnnounce(2)
local warnPhase3			= mod:NewPhaseAnnounce(3)
local warnPhase2Soon		= mod:NewPrePhaseAnnounce(2)
local warnPhase3Soon		= mod:NewPrePhaseAnnounce(3)
local warnShadowFlame		= mod:NewCastAnnounce(22539, 2)
local warnFear				= mod:NewCastAnnounce(22686, 2)

local specwarnShadowCommand	= mod:NewSpecialWarningTarget(22667, nil, nil, 2, 1, 2)
local specwarnVeilShadow	= mod:NewSpecialWarningDispel(22687, "RemoveCurse", nil, nil, 1, 2)
local specwarnClassCall		= mod:NewSpecialWarning("specwarnClassCall", nil, nil, nil, 1, 2)

local timerIntermission		= mod:NewIntermissionTimer(15, nil, CL.INTERMISSION, true, nil, nil, "136106")
local timerClassCall 		= mod:NewTimer(30, "TimerClassCall", nil, nil, nil, 5)
local timerFear				= mod:NewVarTimer("v27-90.1", 22686, nil, nil, nil, 2)

mod.vb.addLeft = 42
local addsGuidCheck = {}
local firstBossMod = DBM:GetModByName("Razorgore")

function mod:OnCombatStart(delay, yellTriggered)
	table.wipe(addsGuidCheck)
	self.vb.addLeft = 42
end

function mod:OnCombatEnd(wipe)
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
	elseif args:IsSpell(22686) then
		warnFear:Show()
		timerFear:Start()
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

function mod:UNIT_HEALTH(uId)
	if UnitHealth(uId) / UnitHealthMax(uId) <= 0.25 and self:GetUnitCreatureId(uId) == 11583 and self.vb.phase < 2.5 then
		warnPhase3Soon:Show()
		self:SetStage(2.5)
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
	elseif msg == L.YellP1 or msg:find(L.YellP1) then
		self:SendSync("Phase", 1)
	elseif msg == L.YellP2 or msg:find(L.YellP2) then
		warnPhase2Soon:Show()
		timerIntermission:Start()
		self:ScheduleMethod(15, "OnIntermissionEnd")
	elseif msg == L.YellP3 or msg:find(L.YellP3) then
		self:SendSync("Phase", 3)
	end
end

function mod:OnIntermissionEnd()
	self:SendSync("Phase", 2)
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
	function mod:OnSync(msg, arg, sender)
	if msg == "Phase" and sender then
		local phase = tonumber(arg) or 0
		if phase > 0 and self:GetStage() ~= phase then  -- only if stage changed
			self:SetStage(phase)
			if phase == 1 then
				warnPhase1:Show()
			elseif phase == 2 then
				warnPhase2:Show()
			elseif phase == 3 then
				warnPhase3:Show()
			end
		end
	end

		if not self:IsInCombat() then return end
		if msg == "ClassCall" and sender then
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
				warnClassCall:Show(classNameColored) -- Only color the warnClassCall message
			end
			timerClassCall:Start(30, className)
			timerClassCall:UpdateIcon(classIcons[arg], className)
		end
	end
end
