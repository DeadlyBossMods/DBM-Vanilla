local mod	= DBM:NewMod("Magmadar", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(11982)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_SUCCESS"
)

local warnPanic		= mod:NewSpellAnnounce(19408)
local warnEnrage	= mod:NewSpellAnnounce(19451)

local timerFear		= mod:NewBuffActiveTimer(8, 19408)
local timerEnrage	= mod:NewBuffActiveTimer(8, 19451)

function mod:OnCombatStart(delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(19451) and self:IsInCombat() then
		warnEnrage:Show()
		timerEnrage:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(19451) then
		timerEnrage:Cancel()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(19408) and self:IsInCombat() then
		warnPanic:Show()
		timerPanic:Start()
	end
end