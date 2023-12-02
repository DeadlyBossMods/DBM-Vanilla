local mod	= DBM:NewMod("LadySarevessSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(204068)
mod:SetEncounterID(2699)--2762 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 407568",
	"SPELL_CAST_SUCCESS 407794 407653",
	"SPELL_AURA_APPLIED 407791 407653",
	"UNIT_DIED"
)

--TODO, add spawns/timings?
--TODO, tank stack/swap alerts?
--TODO, add cleave at all? 407811
local warningAkumaisRage		= mod:NewTargetNoFilterAnnounce(407791, 3, nil, "Healer|Tank|RemoveEnrage")
local warningForkedLightning	= mod:NewTargetNoFilterAnnounce(407653, 3)

local specWarnForkedLightning	= mod:NewSpecialWarningMoveAway(407653, nil, nil, nil, 1, 2)
local yellnForkedLightning		= mod:NewYell(407653)
local specWarnFreezingArrow		= mod:NewSpecialWarningInterrupt(407568, "HasInterrupt", nil, nil, 1, 2)

local timerForkedLightningCD	= mod:NewCDTimer(20.6, 407653, nil, nil, nil, 3)
local timerFreezingArrowCD		= mod:NewCDTimer(22.9, 407568, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
local timerTriplePunctureCD		= mod:NewCDNPTimer(10.9, 407794, nil, nil, nil, 5)

function mod:OnCombatStart(delay)
	timerFreezingArrowCD:Start(5-delay)
	timerForkedLightningCD:Start(15-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(407568) then
		timerFreezingArrowCD:Start()
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnFreezingArrow:Show(args.sourceName)
			specWarnFreezingArrow:Play("kickcast")
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(407794) then
		timerTriplePunctureCD:Start(nil, args.sourceGUID)
	elseif args:IsSpell(407653) then
		timerForkedLightningCD:start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(407791) then
		warningAkumaisRage:Show(args.destName)
	elseif args:IsSpell(407653) then
		if args:IsPlayer() then
			specWarnForkedLightning:Show()
			specWarnForkedLightning:Play("scatter")
			yellnForkedLightning:Yell()
		else
			warningForkedLightning:Show(args.destName)
		end
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 204645 or cid == 204091 or cid == 209209 then--Blackfathom Elites
		timerTriplePunctureCD:Stop(args.destGUID)
	end
end
