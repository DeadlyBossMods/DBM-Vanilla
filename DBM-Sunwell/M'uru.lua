local mod	= DBM:NewMod("Muru", "DBM-Sunwell")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(25741)--25741--Muru
mod:SetModelID(23404)
mod:SetZone()

mod:RegisterCombat("combat")
mod:RegisterKill("kill", 25840)--Entropius. Probably not working yet. but this is proper way to do it once tandanu fixes bug.

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_SUCCESS",
	"SPELL_SUMMON"
)

local warnHuman			= mod:NewAnnounce("WarnHuman", 4, 34753)
local warnHumanSoon		= mod:NewAnnounce("WarnHumanSoon", 3, 34753)
local warnVoid			= mod:NewAnnounce("WarnVoid", 4, 46087)
local warnVoidSoon		= mod:NewAnnounce("WarnVoidSoon", 3, 46087)
local warnDarkness		= mod:NewSpellAnnounce(45996, 2)
local warnDarknessSoon	= mod:NewPreWarnAnnounce(45996, 5, 3)
local warnPhase2		= mod:NewPhaseAnnounce(2)
local warnFiend			= mod:NewAnnounce("WarnFiend", 2, 46268)
local warnBlackHole		= mod:NewSpellAnnounce(46282, 3)

local timerHuman		= mod:NewTimer(60, "TimerHuman", 34753)
local timerVoid			= mod:NewTimer(30, "TimerVoid", 46087)
local timerNextDarkness	= mod:NewNextTimer(45, 45996)
local timerBlackHoleCD	= mod:NewNextTimer(15, 46282)
local timerPhase		= mod:NewTimer(10, "TimerPhase", 46087)

local berserkTimer		= mod:NewBerserkTimer(600)

local humanCount = 1
local voidCount = 1

local function phase2()
	DBM.BossHealth:Clear()
	DBM.BossHealth:AddBoss(25840, L.Entropius)
end

function mod:HumanSpawn()
	warnHuman:Show(humanCount)
	humanCount = humanCount + 1
	timerHuman:Start(tostring(humanCount))
	warnHumanSoon:Schedule(55, humanCount)
	self:ScheduleMethod(60, "HumanSpawn")
end

function mod:VoidSpawn()
	warnVoid:Show(voidCount)
	voidCount = voidCount + 1
	timerVoid:Start(tostring(voidCount))
	warnVoidSoon:Schedule(25, voidCount)
	self:ScheduleMethod(30, "VoidSpawn")
end


function mod:OnCombatStart(delay)
	humanCount = 1
	voidCount = 1
	warnDarknessSoon:Schedule(40)
	warnHumanSoon:Schedule(10, humanCount)
	warnVoidSoon:Schedule(31.5, voidCount)
	timerHuman:Start(15-delay, humanCount)
	timerVoid:Start(36.5-delay, voidCount)
	timerNextDarkness:Start(-delay)
	self:ScheduleMethod(15, "HumanSpawn")
	self:ScheduleMethod(36.5, "VoidSpawn")
	berserkTimer:Start(-delay)
	DBM.BossHealth:Clear()
	DBM.BossHealth:AddBoss(25741, L.name)
end

function mod:OnCombatEnd()
	DBM.BossHealth:Clear()
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(45996) and args:GetDestCreatureID() == 25741 then
		warnDarkness:Show()
		warnDarknessSoon:Schedule(40)
		timerNextDarkness:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(46177) then
		timerNextDarkness:Cancel()
		timerHuman:Cancel()
		timerVoid:Cancel()
		warnHumanSoon:Cancel()
		warnVoidSoon:Cancel()
		warnDarknessSoon:Cancel()
		warnPhase2:Show()
		timerPhase:Start()
		timerBlackHoleCD:Start(27)
		self:UnscheduleMethod("HumanSpawn")
		self:UnscheduleMethod("VoidSpawn")
		self:Schedule(10, phase2)
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(46268) then
		warnFiend:Show()
	elseif args:IsSpellID(46282) then
		warnBlackHole:Show()
		timerBlackHoleCD:Start()
	end
end
