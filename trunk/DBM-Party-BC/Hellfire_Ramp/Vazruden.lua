local mod	= DBM:NewMod(529, "DBM-Party-BC", 1, 248)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17537, 17536)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED"
)

local warnMark      = mod:NewTargetAnnounce(30689)

local specwarnMark  = mod:NewSpecialWarningYou(30689)

local timerMark     = mod:NewTargetTimer(6, 30689)

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 30689 then
		warnMark:Show(args.destName)
		timerMark:Start(args.destName)
		if args:IsPlayer() then
            specwarnMark:Show()
        end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 30689 then
		timerMark:Cancel(args.destName)
	end
end
