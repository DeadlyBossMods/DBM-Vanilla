local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isWrath then
	catID = 4
elseif isBCC or isClassic then
	catID = 5
else--retail or cataclysm classic and later
	catID = 3
end
local mod	= DBM:NewMod("Firemaw", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(11983)
mod:SetEncounterID(613)
if not mod:IsClassic() then
	mod:SetModelID(6377)
end
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 23339 22539",
	"SPELL_AURA_APPLIED_DOSE 23341 366305",
	"SPELL_AURA_APPLIED 366305"
)

--(ability.id = 23339 or ability.id = 22539) and type = "begincast" or ability.id = 23341 and type = "cast"
local warnWingBuffet		= mod:NewCastAnnounce(23339, 2)
local warnShadowFlame		= mod:NewCastAnnounce(22539, 2)
local warnFlameBuffet		= mod:NewStackAnnounce(23341, 3)
local specWarnWingBuffet	= mod:NewSpecialWarningSpell(23339, "Tank")

local timerWingBuffet		= mod:NewCDTimer(31, 23339, nil, nil, nil, 2)
local timerShadowFlameCD	= mod:NewCDTimer(14, 22539, nil, false)--14-21

local specWarnStatic		= mod:NewSpecialWarningMoveAway(366305, nil, nil, nil, 1, 2)
local yellStaticHigh		= mod:NewCountYell(366305)

function mod:OnCombatStart(delay)
	timerShadowFlameCD:Start(18-delay)
	timerWingBuffet:Start(30-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(23339) then
		if not self.Options[specWarnWingBuffet.option] then -- Don't show warning as both normal and special
			warnWingBuffet:Show()
		end
		timerWingBuffet:Start()
		specWarnWingBuffet:Show()
	elseif args:IsSpell(22539) then
		warnShadowFlame:Show()
		timerShadowFlameCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED_DOSE(args)
	if args:IsSpell(23341) and args:IsPlayer() then
		local amount = args.amount or 1
		if (amount >= 4) and (amount % 2 == 0) then--Starting at 4, every even amount warn stack
			warnFlameBuffet:Show(args.destName, amount)
		end
	elseif args:IsSpell(366305) then -- Stacks up to 10 then explode, good idea to spread at ~7
		local amount = args.amount or 1
		if (amount == 7 or amount == 9) and args:IsPlayer() then
			specWarnStatic:Show()
			specWarnStatic:Play("runout")
		end
		if amount >= 7 and args:IsPlayer() then
			yellStaticHigh:Show(amount)
		end
	end
end

mod.SPELL_AURA_APPLIED = mod.SPELL_AURA_APPLIED_DOSE
