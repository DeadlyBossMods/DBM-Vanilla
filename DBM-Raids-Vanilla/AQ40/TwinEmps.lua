local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 2
else--retail or wrath classic and later
	catID = 1
end
local mod	= DBM:NewMod("TwinEmpsAQ", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15276, 15275)
mod:SetEncounterID(715)
if not mod:IsClassic() then
	mod:SetModelID(15778)--Renders too close in classic
end
mod:SetZone(531)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 799 800 26613 26607 804",
	"SPELL_AURA_REMOVED 804",
	"SPELL_CAST_SUCCESS 802 804 26613 1217333"
)

--Add warning for classic to actually swap for strike? boss taunt immune though.
local warnStrike			= mod:NewTargetAnnounce(26613, 3, nil, "Tank|Healer")
local warnTeleport			= mod:NewSpellAnnounce(800, 3)
local warnMutateBug			= mod:NewSpellAnnounce(802, 2, nil, false)

local specWarnStrike		= mod:NewSpecialWarningDefensive(26613, nil, nil, nil, 1, 2)
local specWarnExplodeBug	= mod:NewSpecialWarningMove(804, nil, nil, nil, 1, 2)
local specWarnGTFO			= mod:NewSpecialWarningGTFO(26607, nil, nil, nil, 1, 2)

local timerTeleportCD		= DBM:IsSeasonal("SeasonOfDiscovery")
	and mod:NewCDTimer(29.2, 800, nil, nil, nil, 6, nil, nil, true, 1, 4)
	or mod:NewVarTimer("v29.1-40.5", 800, nil, nil, nil, 6, nil, nil, true, 1, 4)
local timerExplodeBugCD		= mod:NewVarTimer("v4.5-32.3", 804, nil, false, nil, 1)
local timerMutateBugCD		= mod:NewVarTimer("v10.9-27.1", 802, nil, false, nil, 1)
local timerStrikeCD			= mod:NewVarTimer("v9.7-37.3", 26613, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)

local berserkTimer			= mod:NewBerserkTimer(900)

mod:AddNamePlateOption("NPAuraOnMutateBug", 802)

function mod:OnCombatStart()
	berserkTimer:Start()
	timerTeleportCD:Start(30.8)
	timerStrikeCD:Start("v11.2-43.8")
	if self.Options.NPAuraOnMutateBug then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
	end
end

function mod:OnCombatEnd()
	if self.Options.NPAuraOnMutateBug then
		DBM.Nameplate:Hide(true, nil, nil, nil, true, true)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(799, 800) and not DBM:IsSeasonal("SeasonOfDiscovery") and self:AntiSpam(5, 1) then
		warnTeleport:Show()
		timerTeleportCD:Start()
	elseif args:IsSpell(26613) and not self:IsTrivial() then
		if args:IsPlayer() then
			specWarnStrike:Show()
			specWarnStrike:Play("defensive")
		else
			warnStrike:Show(args.destName)
		end
	elseif args:IsSpell(26607) and args:IsPlayer() and args:IsSrcTypeHostile() and not self:IsTrivial() then
		specWarnGTFO:Show(args.spellName)
		specWarnGTFO:Play("watchfeet")
	elseif args:IsSpell(804) then
		if self.Options.NPAuraOnMutateBug then
			DBM.Nameplate:Show(true, args.destGUID, 804, 135826, 4)
		end
		if not self:IsTrivial() then
			for i = 1, 40 do
				local GUID = UnitGUID("nameplate"..i)
				if GUID and GUID == args.destGUID then--Bug is in nameplate range
					specWarnExplodeBug:Show()
					specWarnExplodeBug:Play("runaway")
					break
				end
			end
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(804) then
		if self.Options.NPAuraOnMutateBug then
			DBM.Nameplate:Hide(true, args.destGUID, 804, 135826)
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(802) then
		warnMutateBug:Show()
		timerMutateBugCD:Start()
	elseif args:IsSpell(804) then
		timerExplodeBugCD:Start()
	elseif args:IsSpell(26613) then
		timerStrikeCD:Start()
	elseif args:IsSpell(1217333) and self:AntiSpam(5, 1) then
		warnTeleport:Show()
		timerTeleportCD:Start(35.5)
	end
end
