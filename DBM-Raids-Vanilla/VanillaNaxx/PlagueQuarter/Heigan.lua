local mod	= DBM:NewMod("HeiganVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260824000000) -- 2026, August 24th
mod:DisableHardcodedOptions()
mod:SetCreatureID(15936)
mod:SetEncounterID(1112)
mod:SetModelID(16309)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Pull1, L.Pull2, L.Pull3)

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 29998",
	"SPELL_AURA_APPLIED 29998",
	"SPELL_AURA_REMOVED 29998",
	"UNIT_SPELLCAST_SUCCEEDED",
	"UNIT_SPELLCAST_CHANNEL_STOP"
)

local warnDance			= mod:NewSpellAnnounce(29350, 3)
local warnEruptionSoon	= mod:NewSoonCountAnnounce(29371, 3, nil, false)
local warnFever			= mod:NewSpellAnnounce(29998, 2)
local warnTeleport		= mod:NewSpellAnnounce(30211, 3, "135736")
local warnTeleportSoon	= mod:NewSoonAnnounce(30211, 2, "135736")

local specWarnFever		= mod:NewSpecialWarningDispel(29998, "RemoveDisease", nil, nil, 1, 2, nil, nil, "dispelnow")
local specWarnGTFO		= mod:NewSpecialWarningGTFO(29371, nil, nil, nil, 1, 8, nil, nil, "watchfeet")

local timerEruption		= mod:NewNextCountTimer(3, 29371, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON)
local timerFever		= mod:NewVarTimer("v21-34", 29998, nil, "RemoveDisease", nil, 3, nil, DBM_COMMON_L.DISEASE_ICON)
local timerTeleport		= mod:NewNextTimer(90.6, 30211, nil, nil, nil, 6, "135736")
local timerDance		= mod:NewBuffActiveTimer(45, 29350, nil, nil, nil, 6)

mod.vb.eruptionCount = 1
mod.vb.eruptionDirection = 1
mod.vb.eruptionWave = 1

mod:AddInfoFrameOption(29998, "RemoveDisease")

local twipe = table.wipe
local lines, sortedLines = {}, {}
local feverTargets = {}
local function updateInfoFrame()
	twipe(lines)
	twipe(sortedLines)

	for name in pairs(feverTargets) do
		sortedLines[#sortedLines + 1] = name
		lines[name] = ""
	end

	return lines, sortedLines
end

function mod:OnCombatStart()
	self.vb.eruptionCount = 1
	self.vb.eruptionDirection = 1
	self.vb.eruptionWave = 1
	table.wipe(feverTargets)
	warnTeleportSoon:Schedule(80.6)
	warnEruptionSoon:Schedule(13.5, self.vb.eruptionCount)
	timerTeleport:Start()
	timerEruption:Start(16.5, self.vb.eruptionCount)
	timerFever:Start("v11.3-25.9")
	self:ScheduleMethod(16.5, "EruptionTick", 10)
	if self:IsEvent() or not self:IsTrivial() then
		self:RegisterShortTermEvents(
			"SPELL_DAMAGE 29371"
		)
	end
end

function mod:OnCombatEnd()
	table.wipe(feverTargets)
	self:UnregisterShortTermEvents()
end

function mod:EruptionTick(interval)
	self.vb.eruptionWave = self.vb.eruptionWave + 1
	if self.vb.eruptionCount >= 4 then
		self.vb.eruptionDirection = -1
	elseif self.vb.eruptionCount <= 1 then
		self.vb.eruptionDirection = 1
	end
	self.vb.eruptionCount = self.vb.eruptionCount + self.vb.eruptionDirection
	if interval == 10 then
		warnEruptionSoon:Schedule(interval - 3, self.vb.eruptionCount)
	end
	timerEruption:Start(interval, self.vb.eruptionCount)
	if not (interval == 10 and self.vb.eruptionWave >= 8) then
		self:ScheduleMethod(interval, "EruptionTick", interval)
	end
end

local function UpdateFeverFrame()
	if not mod.Options.InfoFrame then return end
	if next(feverTargets) then
		if not DBM.InfoFrame:IsShown() then
			DBM.InfoFrame:SetHeader(DBM:GetSpellInfo(29998))
			DBM.InfoFrame:Show(20, "function", updateInfoFrame)
		else
			DBM.InfoFrame:UpdateTable(updateInfoFrame)
		end
	else
		DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(29998) then
		feverTargets[args.destName] = true
		UpdateFeverFrame()
		if self.Options.SpecWarn29998dispel and self:AntiSpam(3, 1) then
			specWarnFever:CombinedShow(0.5, args.destName)
			specWarnFever:ScheduleVoice(0.5, "dispelnow")
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(29998) then
		feverTargets[args.destName] = nil
		UpdateFeverFrame()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(29998) then
		if not self.Options.SpecWarn29998dispel then
			warnFever:Show()
		end
		timerFever:Start()
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(_, _, spellId)
	if spellId == 30211 then
		self:SendSync("Teleport")
	elseif spellId == 29350 then
		self:SendSync("DancePhase")
	elseif spellId == 29429 then -- Creature Cooldown (10 sec): eruption cadence restarts
		self:SendSync("EruptionStart")
	end
end

function mod:UNIT_SPELLCAST_CHANNEL_STOP(_, _, spellId)
	if spellId == 29350 then
		self:SendSync("DancePhaseFinish")
	end
end

do
	local Eruption = DBM:GetSpellName(29371)
	function mod:SPELL_DAMAGE(_, _, _, _, destGUID, destName, _, _, spellId, spellName)
		if (spellId == 29371 or spellName == Eruption) and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
			specWarnGTFO:Show(spellName)
			specWarnGTFO:Play("watchfeet")
		end
	end
end

function mod:OnSync(event)
	if not self:IsInCombat() then return end
    if event == "Teleport" then
		self.vb.eruptionCount = 1
		self.vb.eruptionDirection = 1
		self.vb.eruptionWave = 1
		warnTeleport:Show()
		warnTeleportSoon:Cancel()
		warnEruptionSoon:Cancel()
		timerTeleport:Stop()
		timerFever:Stop()
		timerEruption:Stop()
		self:UnscheduleMethod("EruptionTick")
		timerEruption:Start(4.6, self.vb.eruptionCount)
		self:ScheduleMethod(4.6, "EruptionTick", 3)
	elseif event == "DancePhase" then
		warnDance:Show()
		timerDance:Start()
	elseif event == "DancePhaseFinish" then
		warnTeleportSoon:Schedule(80.6)
		timerTeleport:Start()
		timerFever:Start("v3.4-10")
		timerDance:Stop()
		timerEruption:Stop()
		self:UnscheduleMethod("EruptionTick")
	elseif event == "EruptionStart" then
		self.vb.eruptionCount = 1
		self.vb.eruptionDirection = 1
		self.vb.eruptionWave = 1
		warnEruptionSoon:Schedule(7, self.vb.eruptionCount)
		timerEruption:Start(10, self.vb.eruptionCount)
		self:ScheduleMethod(10, "EruptionTick", 10)
	end
end
