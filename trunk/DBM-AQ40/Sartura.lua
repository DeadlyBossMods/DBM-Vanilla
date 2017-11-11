local mod	= DBM:NewMod("Sartura", "DBM-AQ40", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(15516)
mod:SetEncounterID(711)
mod:SetModelID(15583)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_SUCCESS 26083 26082 8269",
	"UNIT_HEALTH boss1"
)

local warnEnrageSoon	= mod:NewSoonAnnounce(8269, 2)
local warnEnrage		= mod:NewSpellAnnounce(8269, 4)
local warnWhirlwind		= mod:NewSpellAnnounce(26083, 3)

local timerWhirlwind	= mod:NewBuffActiveTimer(15, 26083)

mod.vb.prewarn_enrage

function mod:OnCombatStart(delay)
	self.vb.prewarn_enrage = false
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(26083, 26082) and self:AntiSpam() then
		timerWhirlwind:Start()
		warnWhirlwind:Show()
	elseif args.spellId == 8269 then
		warnEnrage:Show()
	end
end

function mod:UNIT_HEALTH(uId)
	if UnitHealth(uId) / UnitHealthMax(uId) <= 0.35 and self:GetUnitCreatureId(uId) == 15516 and not self.vb.prewarn_enrage then
		warnEnrageSoon:Show()
		self.vb.prewarn_enrage = true
	end
end
