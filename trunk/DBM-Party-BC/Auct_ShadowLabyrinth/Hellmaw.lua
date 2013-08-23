local mod = DBM:NewMod("Hellmaw", "DBM-Party-BC", 10)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))

mod:SetCreatureID(18731)
mod:SetModelID(18821)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_SUCCESS"
)

local warnFear      = mod:NewSpellAnnounce(33547)

local timerFear     = mod:NewNextTimer(25, 33547)

local enrageTimer	= mod:NewBerserkTimer(180)

function mod:OnCombatStart(delay)
	if self:IsDifficulty("heroic5") then
        enrageTimer:Start(-delay)
    end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 33547 then
		warnFear:Show()
		timerFear:Start()
	end
end