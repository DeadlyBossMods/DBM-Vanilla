local mod	= DBM:NewMod("Marli", "DBM-ZG", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(14510)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_SUCCESS",
	"SPELL_SUMMON"
)

local warnSpiders	= mod:NewSpellAnnounce(24083)
local warnDrain		= mod:NewTargetAnnounce(24300)
local warnCorrosive	= mod:NewTargetAnnounce(24111)

local timerDrain		= mod:NewTargetTimer(7, 24300)
local timerCorrosive	= mod:NewTargetTimer(30, 24111)

local spamSpiders = 0
function mod:OnCombatStart(delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(24111) then
		warnCorrosive:Show(args.destName)
		timerCorrosive:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(24111) then
		timerCorrosive:Cancel(args.destName)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(24300) then
		warnDrain:Show(args.destName)
		timerDrain:Start(args.destName)
	end
end


function mod:SPELL_SUMMON(args)
	if args:IsSpellID(24083) and getTime() - spamSpiders > 5 then
		warnSpiders:Show()
		spamSpiders = getTime()
	end
end