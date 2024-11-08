local mod	= DBM:NewMod("BaronAuanisSoD", "DBM-Raids-Vanilla", 10)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(202699)
mod:SetEncounterID(2694)--2765 is likely 5 man version in instance type 201 (which has Old Serra'kis instead of Baron)
mod:SetHotfixNoticeRev(20231208000000)
--mod:SetMinSyncRevision(20231115000000)
mod:SetZone(48)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 404806",
	"SPELL_AURA_APPLIED 404806",
	"SPELL_AURA_REMOVED 404806"
)

--NOTE: depth charge might reset to 14.4 on boss gaining bubble beam
--ability.id = 404806 and type = "cast" or ability.id = 413664 and (type = "applybuff" or type = "removebuff")
local warningDepthCharge		= mod:NewTargetNoFilterAnnounce(404806, 4)

local specWarnDepthCharge		= mod:NewSpecialWarningMoveTo(404806, nil, nil, nil, 3, 2)
local yellDepthCharge			= mod:NewYell(404806)
local yellDepthChargeFades		= mod:NewShortFadesYell(404806)

local timerDepthChargeCD		= mod:NewCDTimer(16.1, 404806, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)--Can be massively dealyed by Bubble Beam

function mod:OnCombatStart(delay)
	timerDepthChargeCD:Start(17.8-delay)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(404806) then
		timerDepthChargeCD:Start()
	end
end

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
