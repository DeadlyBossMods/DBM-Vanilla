local mod	= DBM:NewMod("Felmyst", "DBM-Sunwell")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(25038)
mod:SetModelID(22838)
mod:SetZone()
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_START",
	"SPELL_SUMMON",
	"RAID_BOSS_EMOTE",
	"CHAT_MSG_MONSTER_YELL"
)

local warnGas				= mod:NewSpellAnnounce(45855, 3)
local warnEncaps			= mod:NewTargetAnnounce(45665, 4)
local warnVapor				= mod:NewTargetAnnounce(45392, 3)
local warnBreath			= mod:NewCountAnnounce(45717, 4)
local warnPhase				= mod:NewAnnounce("WarnPhase", 1, 31550)
local warnPhaseSoon			= mod:NewAnnounce("WarnPhaseSoon", 1, 31550)

local specWarnGas			= mod:NewSpecialWarningSpell(45855, mod:IsHealer())
local specWarnEncaps		= mod:NewSpecialWarningYou(45665)
local specWarnEncapsNear	= mod:NewSpecialWarningClose(45665)
local specWarnVapor			= mod:NewSpecialWarningYou(45392)
local specWarnBreath		= mod:NewSpecialWarningSpell(45717, nil, nil, nil, true)

local timerGas				= mod:NewCastTimer(1, 45855)
local timerGasCD			= mod:NewCDTimer(19, 45855)
local timerEncaps			= mod:NewTargetTimer(6, 45665)
local timerBreath			= mod:NewCDTimer(19, 45717)
local timerPhase			= mod:NewTimer(60, "TimerPhase", 31550)

local berserkTimer			= mod:NewBerserkTimer(600)

mod:AddBoolOption("YellOnEncaps", true, "announce")
mod:AddBoolOption("EncapsIcon", true)
mod:AddBoolOption("VaporIcon", true)

local breathCounter = 0

function mod:Groundphase()
	breathCounter = 0
	warnPhase:Show(L.Ground)
	timerGasCD:Start(17)
	timerPhase:Start(60, L.Air)
	--self:ScheduleMethod(10, "Encapsulate")
	warnPhaseSoon:Schedule(50, L.Air)
end

local function isTank(unit)
	if GetPartyAssignment("MAINTANK", unit, 1) then
		return true
	end
	if UnitGroupRolesAssigned(unit) == "TANK" then
		return true
	end
	if UnitExists("boss1target") and UnitDetailedThreatSituation(unit, "boss1") then
		return true
	end
	return false
end

--[[function mod:Encapsulate()
	self:ScheduleMethod(0.5, "Encapsulate")
	local targetname = self:GetBossTarget(25038)
	local uId = DBM:GetRaidUnitId(targetname)
	if not targetname or isTank(uId) then return end--Boss has a target and it's not highest threat(tank)
	warnEncaps:Show(targetname)
	timerEncaps:Start(targetname)
	if targetname == UnitName("player") then
		specWarnEncaps:Show()
		if self.Options.YellOnEncaps then
			SendChatMessage(L.YellEncaps, "SAY")
		end
	end
	if self.Options.EncapsIcon then
		self:SetIcon(targetname, 8, 6)
	end
	if uId then
		local inRange = CheckInteractDistance(uId, 2)
		if inRange then
			specWarnEncapsNear:Show(targetname)
		end
	end
	self:UnscheduleMethod("Encapsulate")
	self:ScheduleMethod(7.5, "Encapsulate")
end]]

function mod:OnCombatStart(delay)
	breathCounter = 0
	--self:ScheduleMethod(10, "Encapsulate")
	warnPhaseSoon:Schedule(50, L.Air)
	timerGasCD:Start(17-delay)
	timerPhase:Start(-delay, L.Air)
	berserkTimer:Start(-delay)
end


function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(45665) then
		--self:UnscheduleMethod("Encapsulate")
		--self:ScheduleMethod(7.5, "Encapsulate")
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(45392) then
		warnVapor:Show(args.sourceName)
		if args.sourceName == UnitName("player") then
			specWarnVapor:Show()
		end
		if self.Options.VaporIcon then
			self:SetIcon(args.sourceName, 8, 10)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(45855) then
		warnGas:Show()
		specWarnGas:Show()
		timerGas:Start()
		timerGasCD:Start()
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.AirPhase or msg:find(L.AirPhase) then
		breathCounter = 0
		warnPhase:Show(L.Air)
		timerGasCD:Cancel()
		timerBreath:Start(44)
		warnPhaseSoon:Schedule(89, L.Ground)
		timerPhase:Start(99, L.Ground)
		--self:UnscheduleMethod("Encapsulate")
		self:ScheduleMethod(99, "Groundphase")
	end
end

function mod:RAID_BOSS_EMOTE(msg)
	if msg == L.Breath or msg:find(L.Breath) then
		breathCounter = breathCounter + 1
		warnBreath:Show(breathCounter)
		specWarnBreath:Show()
		if breathCounter < 3 then
			timerBreath:Start()
		end
	end
end
