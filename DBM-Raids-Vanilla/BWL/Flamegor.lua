if DBM:IsSeasonal("SeasonOfDiscovery") then return end--If SoM/SoD, this is handled by combo mod
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
local mod	= DBM:NewMod("Flamegor", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(11981)
mod:SetEncounterID(615)
if not mod:IsClassic() then
	mod:SetModelID(6377)
end
mod:SetZone(469)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 23339 22539",
	"SPELL_CAST_SUCCESS 23342",
	"SPELL_AURA_APPLIED 23342",
	"SPELL_AURA_REMOVED 23342"
)

--(ability.id = 23339 or ability.id = 22539) and type = "begincast" or ability.id = 23342 and type = "cast"
local warnWingBuffet		= mod:NewCastAnnounce(23339, 2, nil, "Tank")
local warnShadowFlame		= mod:NewCastAnnounce(22539, 2)
local warnFrenzy			= mod:NewTargetNoFilterAnnounce(23342, 3, nil , "Tank|RemoveEnrage|Healer")

local specWarnFrenzy		= mod:NewSpecialWarningDispel(23342, "RemoveEnrage", nil, nil, 1, 6)

local timerWingBuffet		= mod:NewVarTimer("v31.1-36.1", 23339, nil, "Tank", nil, 2)
local timerShadowFlameCD	= mod:NewVarTimer("v12.9-23", 22539, nil, false)
local timerFrenzy	 		= mod:NewBuffActiveTimer(10, 23342, nil, "Tank|RemoveEnrage|Healer", 4, 5, nil, DBM_COMMON_L.ENRAGE_ICON)
local timerFrenzyCD			= mod:NewVarTimer("v8.3-11.3", 23342, nil, "RemoveEnrage", nil, 5, nil, DBM_COMMON_L.ENRAGE_ICON)

function mod:OnCombatStart()
	timerShadowFlameCD:Start("v11.2-21.1")
	timerWingBuffet:Start("v30.3-35.4")
	timerFrenzyCD:Start()
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(23339) then
		warnWingBuffet:Show()
		timerWingBuffet:Start()
	elseif args:IsSpell(22539) then
		warnShadowFlame:Show()
		timerShadowFlameCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(23342) and args:IsSrcTypeHostile() then
		if self.Options.SpecWarn23342dispel then
			specWarnFrenzy:Show(args.sourceName)
			specWarnFrenzy:Play("enrage")
		else
			warnFrenzy:Show()
		end
		timerFrenzyCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(23342) then
		timerFrenzy:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(23342) then
		timerFrenzy:Stop()
	end
end
