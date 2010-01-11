local mod	= DBM:NewMod("Ebonroc", "DBM-BWL", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(14601)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED"
)

local warnWingBuffet	= mod:NewCastAnnounce(23339)
local warnShadowFlame	= mod:NewCastAnnounce(22539)
local warnShadow		= mod:NewTargetAnnounce(23340)

local timerWingBuffet	= mod:NewNextTimer(31, 23339)
local timerShadowFlame	= mod:NewCastTimer(2, 22539)
local timerShadow		= mod:NewTargetTimer(8, 23340)

function mod:OnCombatStart(delay)
	timerWingBuffet:Start(-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(23339) and self:IsInCombat() then
		warnWingBuffet:Show()
		timerWingBuffet:Start()
	elseif args:IsSpellID(22539) and self:IsInCombat() then
		timerShadowFlame:Start()
		warnShadowFlame:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(23340) then
		warnShadow:Show(args.destName)
		timerShadow:Start(args.destName)
	end
end