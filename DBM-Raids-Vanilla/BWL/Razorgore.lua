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
local mod	= DBM:NewMod("Razorgore", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()
local CL	= DBM_COMMON_L

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(12435, 99999)--Bogus detection to prevent invalid kill detection if razorgore happens to die in phase 1
mod:SetEncounterID(610)--BOSS_KILL is valid, but ENCOUNTER_END is not
mod:DisableEEKillDetection()--So disable only EE
mod:SetModelID(10115)
mod:SetHotfixNoticeRev(20200904000000)--2020, September, 4th
mod:SetMinSyncRevision(20200904000000)--2020, September, 4th
mod:SetZone(469)

mod:RegisterCombat("yell", L.Pull)
mod:SetWipeTime(180)--guesswork

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 22425",
	"SPELL_CAST_SUCCESS 23040 19873",
	"SPELL_AURA_APPLIED 23023",
	"CHAT_MSG_MONSTER_EMOTE",
	"UNIT_DIED"
)

--ability.id = 22425 and type = "begincast" or (ability.id = 23040 or ability.id = 19873) and type = "cast"
local warnPhase2			= mod:NewPhaseAnnounce(2)
local warnFireballVolley	= mod:NewCastAnnounce(22425, 3)
local warnConflagration		= mod:NewTargetAnnounce(23023, 2)
local warnEggsLeft			= mod:NewCountAnnounce(19873, 1) ---@type Announce -- string as count in :Show() is unusual but valid

local specWarnFireballVolley= mod:NewSpecialWarningMoveTo(22425, false, nil, nil, 2, 2)

local timerAddsSpawn		= mod:NewTimer(47, "TimerAddsSpawn", 19879, nil, nil, 1)--Only for start of adds, not adds after the adds.

local timerDrakeSpawn, warnDrakeSpawn
if DBM:IsSeasonal("SeasonOfDiscovery") then
	timerDrakeSpawn = mod:NewTimer(90, CL.BIG_ADD, 466277, nil, nil, 1) -- Big drake after 1:30 min or after 10 eggs (some sources suggest 2:00, but warcraftlogs has him appearing at exactly 1:30 in slow kills)
	warnDrakeSpawn = mod:NewAnnounce(CL.BIG_ADD, 3)
end

mod:AddSpeedClearOption("BWL", true)

mod.vb.eggsLeft = 30
mod.vb.firstEngageTime = nil

-- Polyfill because I don't feel like this justifies a forced core update
local function isBlackEssenceEnabled()
	if mod.IsBwlBlackEssenceEnabled then
		return mod:IsBwlBlackEssenceEnabled()
	else
		return DBM:UnitDebuff("player", 467047) ~= nil
	end
end

function mod:OnCombatStart(delay)
	self:SetStage(1)
	timerAddsSpawn:Start()
	self.vb.eggsLeft = 30
	if not self.vb.firstEngageTime then
		self.vb.firstEngageTime = GetServerTime()
		if self.Options.FastestClear and self.Options.SpeedClearTimer then
			--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
			DBT:CreateBar(self.Options.FastestClear, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT, 136106)
		end
	end
	if timerDrakeSpawn and isBlackEssenceEnabled() then
		timerDrakeSpawn:Start()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(22425) and args:IsDestTypePlayer() then
		if self.Options.SpecWarn22425moveto then
			specWarnFireballVolley:Show(DBM_COMMON_L.BREAK_LOS)
			specWarnFireballVolley:Play("findshelter")
		else
			warnFireballVolley:Show()
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(23040) and self.vb.phase < 2 then
		warnPhase2:Show()
		self:SetStage(2)
	elseif args:IsSpell(19873) then
		self.vb.eggsLeft = self.vb.eggsLeft - 1
		if self:IsRetail() then
			if self.vb.eggsLeft % 3 == 0 then
				warnEggsLeft:Show(string.format("%d/%d",30-self.vb.eggsLeft,30))
			end
		else
			warnEggsLeft:Show(string.format("%d/%d",30-self.vb.eggsLeft,30))
		end
		if self.vb.eggsLeft == 20 and timerDrakeSpawn and isBlackEssenceEnabled() and GetTime() - (self.combatInfo.pull or 0) <= 90 then
			warnDrakeSpawn:Show()
			timerDrakeSpawn:Stop()
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(23023) and args:IsDestTypePlayer() then
		warnConflagration:CombinedShow(0.3, args.destName)
	end
end

function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if (msg == L.Phase2Emote or msg:find(L.Phase2Emote)) and self.vb.phase < 2 then
		self:SendSync("Phase2")
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 12435 then--Only trigger kill for unit_died if he dies in phase 2 with everyone alive, otherwise it's an auto wipe.
		if DBM:NumRealAlivePlayers() > 0 and self.vb.phase == 2 then
			DBM:EndCombat(self)
		else
			DBM:EndCombat(self, true)--Pass wipe arg end combat
		end
	end
end

function mod:OnSync(msg)
	if msg == "Phase2" and self.vb.phase < 2 then
		warnPhase2:Show()
		self:SetStage(2)
	end
end

--Possible auto gossip for Vael using ID 29549, 30850
--Possible auto gossip for engaging nef (retial only) 28595, 28897, 29020
