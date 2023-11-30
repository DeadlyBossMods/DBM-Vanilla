local mod	= DBM:NewMod("AkumaiSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal10"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(213334)
mod:SetEncounterID(2891)--2767 is likely 5 man version in instance type 201

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED"
)

--local warningSleep			= mod:NewTargetNoFilterAnnounce(8399, 2)

--local timerSleepCD			= mod:NewAITimer(180, 8399, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)

--function mod:OnCombatStart(delay)

--end

--[[
function mod:SPELL_CAST_START(args)
	if args:IsSpell(8399) and args:IsSrcTypeHostile() then

	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(8399) and args:IsDestTypePlayer() then

	end
end
--]]
