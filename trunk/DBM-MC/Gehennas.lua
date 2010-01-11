local mod	= DBM:NewMod("Gehennas", "DBM-MC", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 1 $"):sub(12, -3))
mod:SetCreatureID(12259)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_SUCCESS"
)

local warnRainFire	= mod:NewSpellAnnounce(19717)
local warnCurse		= mod:NewSpellAnnounce(19716)
local warnFist		= mod:NewSpellAnnounce(20277)

local timerFist		= mod:NewBuffActiveTimer(20277)

function mod:OnCombatStart(delay)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellI(19717) and self:IsInCombat() then
		warnRainFire:Show()
	elseif args:IsSpellID(19716) then
		warnCurse:Show()
	elseif args:IsSpellID(20277) then
		warnFist:Show()
		timerFist:Start()
	end
end