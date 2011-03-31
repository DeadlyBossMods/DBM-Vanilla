local mod	= DBM:NewMod("Gruul", "DBM-Outlands")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 204 $"):sub(12, -3))
mod:SetCreatureID(19044)
mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE"
)

local warnGrowth		= mod:NewAnnounce("WarnGrowth", 2, 36300)
local warnGroundSlam	= mod:NewSpellAnnounce(33525, 3)
local warnShatter		= mod:NewSpellAnnounce(30403, 4)
local warnSilence		= mod:NewSpellAnnounce(36297, 4)

local specWarnCaveIn	= mod:NewSpecialWarningMove(36240)

local timerGrowthCD		= mod:NewNextTimer(30, 36300)
local timerGroundSlamCD	= mod:NewCDTimer(74, 36300)--74-80 second variation,and this is just from 2 pulls.
local timerShatterCD	= mod:NewNextTimer(10, 33654)--10 seconds after ground slam
local timerSilenceCD	= mod:NewCDTimer(32, 36300)--Also showing a HUGE variation of 32-48 seconds.

mod:AddBoolOption("RangeFrame", true)

function mod:OnCombatStart(delay)
	timerGrowthCD:Start(-delay)
	timerGroundSlamCD:Start(40-delay)
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show(15)
	end
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(33525) then--Ground Slam
		warnGroundSlam:Show()
		timerShatterCD:Start()
		timerGroundSlamCD:Start()
	elseif args:IsSpellID(33654) then--Shatter
		warnShatter:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(36297) then--Reverberation (Silence)
		warnSilence:Show()
		timerSilenceCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(36300) then--Growth
		warnGrowth:Show(args.spellName, args.amount or 1)
		timerGrowthCD:Start()
		if (args.amount or 1) == 3 then--First silence is 15 seconds after 3rd growth.
			warnSilenceSoon:Schedule(10)
			timerSilenceCD:Start(15)
		end
	elseif args:IsSpellID(36240) and args:IsPlayer() then--Cave In
		specWarnCaveIn:Show()
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
