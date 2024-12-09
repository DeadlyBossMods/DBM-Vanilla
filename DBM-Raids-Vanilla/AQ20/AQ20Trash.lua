local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 3
else--retail or wrath classic and later
	catID = 2
end
local mod	= DBM:NewMod("AQ20Trash", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
if not mod:IsClassic() then
	mod:SetModelID(15741)-- Qiraji Gladiator
end
mod:SetMinSyncRevision(20200710000000)--2020, 7, 10
mod:SetZone(509)
mod:RegisterZoneCombat(509)

mod.isTrashMod = true
mod.isTrashModBossFightAllowed = true -- Toxic Pool also shows up during boss fights

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 22997 25698 26079 1215202",
	"SPELL_CAST_SUCCESS 26586",
	"SPELL_AURA_REMOVED 22997",
	"SPELL_MISSED"
)

mod:AddRangeFrameOption(10, 22997)

-- Toxic Pool
mod:NewGtfo{spell = "1215421"}

--local eventsRegistered = false

local warnPlague                    = mod:NewTargetAnnounce(22997, 2)
local warnCauseInsanity             = mod:NewTargetNoFilterAnnounce(26079, 2)
local warnExplosion					= mod:NewAnnounce("WarnExplosion")
local timerExplosion				= mod:NewCastTimer(5, 1214871, DBM_COMMON_L.AOEDAMAGE)

local specWarnPlague                = mod:NewSpecialWarningMoveAway(22997, nil, nil, nil, 1, 2)
local specWarnBurst					= mod:NewSpecialWarningDodge(1215202, nil, nil, nil, 2, 2)
local yellPlague                    = mod:NewYell(22997)
local yellBurst						= mod:NewIconTargetYell(1215202)
local specWarnExplode               = mod:NewSpecialWarningRun(25698, "Melee", nil, 3, 4, 2)
local specWarnShadowFrostReflect    = mod:NewSpecialWarningReflect(19595, nil, nil, nil, 1, 2)
local specWarnFireArcaneReflect     = mod:NewSpecialWarningReflect(13022, nil, nil, nil, 1, 2)

-- aura applied didn't seem to catch the reflects and other buffs
function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(22997) and not self:IsTrivial() then
		if args:IsPlayer() then
			specWarnPlague:Show()
			specWarnPlague:Play("runout")
			yellPlague:Yell()
			if self.Options.RangeFrame then
				DBM.RangeCheck:Show(10)
			end
		elseif UnitGUID("pet") and UnitGUID("pet") == args.destGUID then
			specWarnPlague:Show()
			specWarnPlague:Play("runout")
		else
			warnPlague:Show(args.destName)
		end
	elseif args:IsSpell(25698) and not self:IsTrivial() then
		specWarnExplode:Show()
		specWarnExplode:Play("justrun")
	elseif args:IsSpell(26079) then
		warnCauseInsanity:CombinedShow(0.75, args.destName)
	elseif args:IsSpell(1215202) then
		if args:IsPlayer() and self:AntiSpam(2, "BurstYell") then -- Event can trigger multiple times you are next to multiple people
			yellBurst:Show()
		end
		-- It's cast on a single player and then spreads from there, let's handle 3 different cases
		-- Shared AntiSpam between the warning types because it spreads so often pretty much immediately
		-- that we don't want to spam players with multiple instructions if multiple of these cases happen
		if args:IsPlayer() and args:IsPlayerSource() and self:AntiSpam(3, "Burst") then
			-- You are the primary target --> Run out
			-- Maybe it's a bit bugged because it seems to spread immediately from the first player?
			specWarnBurst:Show()
			specWarnBurst:Play("runout")
		elseif args:IsPlayer() and not args:IsPlayerSource() and self:AntiSpam(3, "Burst") then
			-- You are a target, but it spread from someone else, say to spread instead of just running out
			specWarnBurst:Show()
			specWarnBurst:Play("scatter")
		elseif args.sourceGUID ~= args.destGUID and self:AntiSpam(3, "Burst") then
			-- It's spreading between other players but not (yet) to you, you are likely good, but be careful
			specWarnBurst:Show()
			specWarnBurst:Play("watchstep")
		-- else: someone else is the primary target, you shouldn't be doing anything yet, they should run out
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(22997) then
		if args:IsPlayer() and self.Options.RangeFrame then
			DBM.RangeCheck:Hide()
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	-- 26586 (Birth) is used by a lot, here it indicates the spawned Eye Tentacle goes boom after 5 seconds
	if args:IsSpell(26586) and DBM:GetCIDFromGUID(args.sourceGUID) == 235668 and self:AntiSpam(5, "EyeTentacleExplosion") then
		warnExplosion:Show()
		timerExplosion:Start()
	end
end

local playerGUID = UnitGUID("player")
function mod:SPELL_MISSED(sourceGUID, _, _, _, destGUID, destName, _, _, _, _, spellSchool, missType)
	if (missType == "REFLECT" or missType == "DEFLECT") and sourceGUID == playerGUID and not self:IsTrivial() then
		if (spellSchool == 32 or spellSchool == 16) and self:AntiSpam(3, 1) then
			specWarnShadowFrostReflect:Show(destName)
			specWarnShadowFrostReflect:Play("stopattack")
		elseif (spellSchool == 4 or spellSchool == 64) and self:AntiSpam(3, 2) then
			specWarnFireArcaneReflect:Show(destName)
			specWarnFireArcaneReflect:Play("stopattack")
		end
	end
--	if eventsRegistered then-- for AQ40 timer
--		self:SPELL_DAMAGE(nil, nil, nil, nil, destGUID)
--	end
end
