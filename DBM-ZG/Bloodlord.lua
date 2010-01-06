local mod = DBM:NewMod("Bloodlord", "DBM-ZG", 1)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))

mod:SetCreatureID(11382, 14988)
mod:RegisterCombat("combat")
mod:SetBossHealthInfo(
	11382, L.Bloodlord,
	14988, L.Ohgan
)

mod:RegisterEvents(
	"SPELL_AURA_APPLIED"
)

local warnFrenzy	= mod:NewSpellAnnounce(24318)
local warnGaze		= mod:NewTargetAnnounce(24314)
local timerGaze 	= mod:NewTargetTimer(6, 24314)

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 24314 then
		warnGaze:Show(args.destName)
		timerGaze:Start(args.destName)
	elseif args.spellId == 24318 then
		warnFrenzy:Show(args.destName)
	end
end

