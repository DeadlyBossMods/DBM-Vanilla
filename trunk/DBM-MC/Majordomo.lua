local mod	= DBM:NewMod("Majordomo", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(12018)
mod:RegisterCombat("combat")
mod:RegisterKill("yell", L.Kill)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS"
)

local warnMagicReflect	= mod:NewSpellAnnounce(20619)
local warnDamageShield	= mod:NewSpellAnnounce(21075)
local warnTeleport		= mod:NewTargetAnnounce(20618)
local warnHeal			= mod:NewCastAnnounce(29564)

local timerMagicReflect	= mod:NewBuffActiveTimer(10, 20619)
local timerDamageShield	= mod:NewBuffActiveTimer(10, 21075)
local timerHeal			= mod:NewCastTimer(2.5, 20564)

function mod:OnCombatStart(delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(29564) and self:IsInCombat() then
		warnHeal:Show()
		timerHeal:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(20619) and self:IsInCombat() then
		warnMagicReflect:Show()
		timerMagicReflect:Start()
	elseif args:IsSpellID(21075) and self:IsInCombat() then
		warnDamageShield:Show()
		timerDamageShield:Start()
	elseif args:IsSpellID(20618) and self:IsInCombat() then
		warnTeleport:Show(args.destName or "")
	end
end