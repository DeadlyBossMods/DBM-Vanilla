local mod	= DBM:NewMod("Gehennas", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(12259)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED"
)

local warnRainFire	= mod:NewSpellAnnounce(19717)
local warnCurse		= mod:NewSpellAnnounce(19716)
local warnFist		= mod:NewSpellAnnounce(20277)

local timerCurse	= mod:NewNextTimer(30, 19716)
local timerFist		= mod:NewBuffActiveTimer(4, 20277)

local FistTargets = {}

function mod:OnCombatStart(delay)
	table.wipe(FistTargets)
end

function mod:warnFistTargets()
		warnFist:Show(table.concat(args.destName, "<, >"))
		timerFist:Start()
		table.wipe(FistTargets)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(19717) and self:IsInCombat() then
		warnRainFire:Show()
	elseif args:IsSpellID(19716) then
		timerCurse:Start()
		warnCurse:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(20277) then
		self:UnscheduleMethod("warnFistTargets")
		FistTargets[#FistTargets + 1] = args.destName
		self:ScheduleMethod(0.3, "warnFistTargets")
	end
end