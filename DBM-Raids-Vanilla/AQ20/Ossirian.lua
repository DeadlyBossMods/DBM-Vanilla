local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 3
else--retail or wrath classic and later
	catID = 2
end
local mod	= DBM:NewMod("Ossirian", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15339)
mod:SetEncounterID(723)
mod:SetModelID(15432)
mod:SetZone(509)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 25195",
	"SPELL_AURA_APPLIED 25176 25189 25177 25178 25180 25181 25183",
	"SPELL_AURA_REMOVED 25189"
)

local warnSupreme			= mod:NewSpellAnnounce(25176, 3)
local warnCyclone			= mod:NewTargetAnnounce(25189, 4)
local warnFireWeakness		= mod:NewSpellAnnounce(25177, 3, nil , "CasterDps")
local warnFrostWeakness		= mod:NewSpellAnnounce(25178, 3, nil , "CasterDps")
local warnNatureWeakness	= mod:NewSpellAnnounce(25180, 3, nil , "CasterDps")
local warnArcaneWeakeness	= mod:NewSpellAnnounce(25181, 3, nil , "CasterDps")
local warnShadowWeakness	= mod:NewSpellAnnounce(25183, 3, nil , "CasterDps")
local warnCurseOfTongues	= mod:NewSpellAnnounce(25195, 2)

local timerCyclone			= mod:NewTargetTimer(10, 25189, nil, nil, nil, 3)
local timerFireWeakness		= mod:NewBuffActiveTimer(45, 25177, nil, "CasterDps", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerFrostWeakness	= mod:NewBuffActiveTimer(45, 25178, nil, "CasterDps", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerNatureWeakness	= mod:NewBuffActiveTimer(45, 25180, nil, "CasterDps", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerArcaneWeakness	= mod:NewBuffActiveTimer(45, 25180, nil, "CasterDps", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerShadowWeakness	= mod:NewBuffActiveTimer(45, 25183, nil, "CasterDps", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerCurseOfTongues	= mod:NewVarTimer("v21-43.7", 25195, nil, nil, nil, 3, nil, DBM_COMMON_L.CURSE_ICON)

function mod:OnCombatStart()
	timerCurseOfTongues:Start("v17.8-50.2")
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(25195) then
		warnCurseOfTongues:Show()
		timerCurseOfTongues:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(25176) then
		warnSupreme:Show()
	elseif args:IsSpell(25189) then
		warnCyclone:Show(args.destName)
		timerCyclone:Start(args.destName)
	elseif args:IsSpell(25177) then
		warnFireWeakness:Show()
		timerFireWeakness:Start()
	elseif args:IsSpell(25178) then
		warnFrostWeakness:Show()
		timerFrostWeakness:Start()
	elseif args:IsSpell(25180) then
		warnNatureWeakness:Show()
		timerNatureWeakness:Start()
	elseif args:IsSpell(25181) then
		warnArcaneWeakness:Show()
		timerArcaneWeakness:Start()
	elseif args:IsSpell(25183) then	
		warnShadowWeakness:Show()
		timerShadowWeakness:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(25189) then
		timerCyclone:Stop(args.destName)
	end
end
