local mod	= DBM:NewMod("Malacrass", "DBM-ZulAman")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(24239)
mod:SetZone()

mod:RegisterCombat("yell", L.YellPull)

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS",
	"SPELL_SUMMON"
)

local warnSiphon	= mod:NewTargetAnnounce(43501, 3)
local warnBolt		= mod:NewSpellAnnounce(43383, 3)
local warnBoltSoon	= mod:NewPreWarnAnnounce(43383, 5, 3)
local warnHeal1		= mod:NewCastAnnounce(43548, 3)
local warnHeal2		= mod:NewCastAnnounce(43451, 3)
local warnHeal3		= mod:NewCastAnnounce(43431, 3)
local warnHeal4		= mod:NewSpellAnnounce(43421, 3)
local warnTotem		= mod:NewSpellAnnounce(43436, 3)
local warnPatch		= mod:NewSpellAnnounce(43429, 3)

local specWarnBolt	= mod:NewSpecialWarningSpell(43383)
local specWarnHeal1	= mod:NewSpecialWarningInterrupt(43548)
local specWarnHeal2	= mod:NewSpecialWarningInterrupt(43451)
local specWarnHeal3	= mod:NewSpecialWarningInterrupt(43431)
local specWarnHeal4	= mod:NewSpecialWarningDispel(43421)
local specWarnTotem	= mod:NewSpecialWarningSpell(43436)

local timerSiphon	= mod:NewTargetTimer(30, 43501)
local timerBoltCD	= mod:NewCDTimer(41, 43383)
local timerBolt		= mod:NewCastTimer(10, 43383)
local timerPatch	= mod:NewCastTimer(20, 43429)

function mod:OnCombatStart(delay)
	timerBoltCD:Start(30)
	warnBoltSoon:Schedule(25)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(43501) then
		warnSiphon:Show(args.destName)
		timerSiphon:Show(args.destName)
	elseif args:IsSpellID(43421) and not args:IsDestTypePlayer() then
		warnHeal4:Show()
		specWarnHeal4:Show(args.destName)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(43548) then
		warnHeal1:Show()
		specWarnHeal1:Show()
	elseif args:IsSpellID(43451) then
		warnHeal2:Show()
		specWarnHeal2:Show()
	elseif args:IsSpellID(43431) then
		warnHeal3:Show()
		specWarnHeal3:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(43383) then
		warnBolt:Show()
		specWarnBolt:Show()
		warnBoltSoon:Schedule(35)
		timerBolt:Start()
		timerBoltCD:Start()
	elseif args:IsSpellID(43329) then
		warnPatch:Show()
		timerPatch:Start()
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(43436) then
		warnTotem:Show()
		specWarnTotem:Show()
	end
end
