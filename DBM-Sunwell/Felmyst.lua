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
	"CHAT_MSG_MONSTER_YELL",
	"SWING_DAMAGE",
	"SWING_MISSED"
)

local warnGas				= mod:NewSpellAnnounce(45855, 3)
local warnEncaps			= mod:NewTargetAnnounce(45665, 4)
local warnVapor				= mod:NewTargetAnnounce(45392, 3)
local warnBreath			= mod:NewAnnounce("WarnBreath", 3, 19879)
local warnPhase				= mod:NewAnnounce("WarnPhase", 1, 31550)
local warnPhaseSoon			= mod:NewAnnounce("WarnPhaseSoon", 1, 31550)

local specWarnGas			= mod:NewSpecialWarningSpell(45855, mod:IsHealer())
local specWarnEncaps		= mod:NewSpecialWarningYou(45665)
local specWarnEncapsNear	= mod:NewSpecialWarningClose(45665)
local specWarnVapor			= mod:NewSpecialWarningYou(45392)

local timerGas				= mod:NewCastTimer(1, 45855)
local timerGasCD			= mod:NewCDTimer(24, 45855)
local timerEncaps			= mod:NewTargetTimer(6, 45665)
local timerBreath			= mod:NewTimer(19, "TimerBreath", 37986)
local timerPhase			= mod:NewTimer(60, "TimerPhase", 31550)

local berserkTimer			= mod:NewBerserkTimer(600)

mod:AddBoolOption("YellOnEncaps", true, "announce")
mod:AddBoolOption("EncapsIcon", true)
mod:AddBoolOption("VaporIcon", true)

local breathCounter = 0
local mainTank

function mod:Groundphase()
	breathCounter = 0
	warnPhase:Show(L.Ground)
	timerGasCD:Start(17)
	timerPhase:Start(60, L.Air)
	self:ScheduleMethod(10, "Encapsulate")
	warnPhaseSoon:Schedule(50, L.Air)
end

function mod:Encapsulate()
	self:ScheduleMethod(0.5, "Encapsulate")
	local targetname = self:GetBossTarget(25038)
	if not targetname then return end
	if targetname ~= mainTank then
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
		local uId = DBM:GetRaidUnitId(targetname)
		if uId then
			local inRange = CheckInteractDistance(uId, 2)
			if inRange then
				specWarnEncapsNear:Show()
			end
		end
		self:UnscheduleMethod("Encapsulate")
		self:ScheduleMethod(7.5, "Encapsulate")
	end
end

function mod:OnCombatStart(delay)
	breathCounter = 0
	mainTank = ""
	self:ScheduleMethod(10, "Encapsulate")
	warnPhaseSoon:Schedule(50, L.Air)
	timerGasCD:Start(17-delay)
	timerPhase:Start(-delay, L.Air)
	berserkTimer:Start(-delay)
end


function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(45665) then
		self:UnscheduleMethod("Encapsulate")
		self:ScheduleMethod(7.5, "Encapsulate")
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
		self:ScheduleMethod(7.5, "Encapsulate")
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
		self:UnscheduleMethod("Encapsulate")
		self:ScheduleMethod(99, "Groundphase")
	end
end

function mod:RAID_BOSS_EMOTE(msg)
	if msg == L.Breath or msg:find(L.Breath) then
		breathCounter = breathCounter + 1
		WarnBreath:Show(breathCounter)
		if breathCounter < 3 then
			timerBreath:Start()
		end
	end
end


function mod:SWING_DAMAGE(args)
	if args:GetSrcCreatureID() == 25038 then
		mainTank = args.destName
	end
end

function mod:SWING_MISSED(args)
	if args:GetSrcCreatureID() == 25038 then
		mainTank = args.destName
	end
end
