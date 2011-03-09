local mod	= DBM:NewMod("Anetheron", "DBM-Hyjal")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17808)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS"
)

local warnSwarm			= mod:NewSpellAnnounce(31306, 3)
local warnInferno		= mod:NewTargetAnnounce(31299, 3)

local timerSwarm		= mod:NewBuffActiveTimer(11, 31306)
local timerInferno		= mod:NewCDTimer(51, 31299)

local specWarnInferno	= mod:NewSpecialWarningYou(31299)

function mod:InfernoTarget()
	local targetname = self:GetBossTarget(17808)
	if not targetname then return end
	warnInferno:Show(targetname)
	timerInferno:Start()
	if targetname == UnitName("player") then
		specWarnInferno:Show()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(31299) then
		warnDnd:Show()
		timerDnd:Start()
		timerDndCD:Schedule(15)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(31306) then
		self:ScheduleMethod(0.5, "InfernoTarget")
	end
end
