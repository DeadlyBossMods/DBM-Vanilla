local mod	= DBM:NewMod(553, "DBM-Party-BC", 12, 255)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17880)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 38592",
	"SPELL_AURA_APPLIED 31458",
	"SPELL_AURA_REMOVED 31458"
)

--TODO, actual CD timers
local warnHasten			= mod:NewSpellAnnounce(31458)

local specWarnSpellReflect	= mod:NewSpecialWarningReflect(38592)
local specWarnHasten		= mod:NewSpecialWarningDispel(31458, "MagicDispeller")

local timerSpellReflect		= mod:NewBuffActiveTimer(6, 38592)
local timerHasten			= mod:NewTargetTimer(10, 31458)

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 38592 then
		specWarnSpellReflect:Show()
		timerSpellReflect:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 31458 and not args:IsDestTypePlayer() then     --Hasten
		warnHasten:Show(args.destName)
		timerHasten:Start(args.destName)
		specWarnHasten:Show(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 31458 then
		timerHasten:Cancel(args.destName)
    end
end