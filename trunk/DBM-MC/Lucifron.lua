local mod	= DBM:NewMod("Lucifron", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(12118)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED"
)

local warnDoom		= mod:NewSpellAnnounce(19702)
local warnCurse		= mod:NewSpellAnnounce(19703)
local warnMC		= mod:NewTargetAnnounce(15859)

local timerDoom		= mod:NewCastTimer(10, 19702)
local timerMC		= mod:NewTargetTimer(5, 15859)

function mod:OnCombatStart(delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(19702) and self:IsInCombat() then
		warnDoom:Show()
		timerDoom:Start()
	elseif args:IsSpellID(19703) and self:IsInCombat() then
		warnCurse:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(15859) and self:IsInCombat() then
		warnMC:Show(args.destName)
		timerMC:Start(args.destName)
	end
end