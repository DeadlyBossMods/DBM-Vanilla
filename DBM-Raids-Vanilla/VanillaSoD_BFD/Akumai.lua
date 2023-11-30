local mod	= DBM:NewMod("AkumaiSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(213334)
mod:SetEncounterID(2891)--2767 is likely 5 man version in instance type 201

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
--	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED 407791"
)

--https://www.wowhead.com/classic/spell=429315/akumai-phase-transition
local warningAkumaisRage		= mod:NewTargetNoFilterAnnounce(407791, 3, nil, "Healer|Tank|RemoveEnrage")

local specWarnEnrage			= mod:NewSpecialWarningDispel(407791, "RemoveEnrage", nil, nil, 1, 2)

--local timerSleepCD			= mod:NewAITimer(180, 8399, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)

--function mod:OnCombatStart(delay)

--end

--[[
function mod:SPELL_CAST_START(args)
	if args:IsSpell(8399) and args:IsSrcTypeHostile() then

	end
end
--]]

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(407791) then
		if self.Options.SpecWarn407791dispel then
			specWarnEnrage:Show(args.destName)
			specWarnEnrage:Play("enrage")
		else
			warningAkumaisRage:Show(args.destName)
		end
	end
end
