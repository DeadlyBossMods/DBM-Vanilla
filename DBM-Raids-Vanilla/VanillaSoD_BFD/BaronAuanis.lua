local mod	= DBM:NewMod("BaronAuanisSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(202699)
mod:SetEncounterID(2694)--2765 is likely 5 man version in instance type 201 (which has Old Serra'kis instead of Baron)
mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
--	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED 404806",
	"SPELL_AURA_REMOVED 404806"
)

local warningDepthCharge		= mod:NewTargetNoFilterAnnounce(404806, 4)

local specWarnDepthCharge		= mod:NewSpecialWarningMoveTo(404806, nil, nil, nil, 3, 2)
local yellDepthCharge			= mod:NewYell(404806)
local yellDepthChargeFades		= mod:NewShortFadesYell(404806)

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
	if args:IsSpell(404806) and args:IsDestTypePlayer() then
		if args:IsPlayer() then
			specWarnDepthCharge:Show(L.Water)
			specWarnDepthCharge:Play("bombyou")
			yellDepthCharge:Yell()
			yellDepthChargeFades:Countdown(8)
		else
			warningDepthCharge:Show(args.destName)
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(404806) then
		if args:IsPlayer() then
			yellDepthChargeFades:Cancel()
		end
	end
end
