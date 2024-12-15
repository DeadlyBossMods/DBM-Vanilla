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
	"SPELL_AURA_APPLIED 22997 25698 26079 1215202 1215421 2855",
	"SPELL_PERIODIC_DAMAGE 1215421",
	"SPELL_CAST_SUCCESS 26586",
	"SPELL_AURA_REMOVED 22997",
	"SPELL_MISSED",
	"UNIT_DIED",
	"PLAYER_TARGET_CHANGED",
	"NAME_PLATE_UNIT_ADDED"
)

mod:AddRangeFrameOption(10, 22997)

-- Toxic Pool, not using the new NewGtfo() thing because it uses the new event handler type that currently only supports combat-only events
-- This is a problem out of combat often enough
local specWarnGTFO = mod:NewSpecialWarningGTFO(1215421, nil, nil, nil, 1, 8)


--local eventsRegistered = false

local warnPlague                    = mod:NewTargetAnnounce(22997, 2)
local warnCauseInsanity             = mod:NewTargetNoFilterAnnounce(26079, 2)
local warnExplosion					= mod:NewAnnounce("WarnExplosion", 3, nil, false)

local specWarnPlague                = mod:NewSpecialWarningMoveAway(22997, nil, nil, nil, 1, 2)
local specWarnBurst					= mod:NewSpecialWarningDodge(1215202, nil, nil, nil, 2, 2)
local yellPlague                    = mod:NewYell(22997)
local yellBurst						= mod:NewIconTargetYell(1215202)
local specWarnExplode               = mod:NewSpecialWarningRun(25698, "Melee", nil, 3, 4, 2)
local specWarnShadowFrostReflect    = mod:NewSpecialWarningReflect(19595, nil, nil, nil, 1, 2)
local specWarnFireArcaneReflect     = mod:NewSpecialWarningReflect(13022, nil, nil, nil, 1, 2)
local specWarnExplosion				= mod:NewSpecialWarning("SpecWarnExplosion", nil, nil, nil, 1, 8)

local timerExplosion				= mod:NewTimer(30, "TimerExplosion")
local timerBurst					= mod:NewNextTimer(30, 1215202)


local aq40Trash = DBM:GetModByName("AQ40Trash")

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
		aq40Trash:TrackTrashAbility(args.sourceGUID, "Plague", args.sourceRaidFlags, args.sourceName)
	elseif args:IsSpell(25698) and not self:IsTrivial() then
		specWarnExplode:Show()
		specWarnExplode:Play("justrun")
	elseif args:IsSpell(26079) then
		warnCauseInsanity:CombinedShow(0.75, args.destName)
	elseif args:IsSpell(1215202) then
		aq40Trash:NoxiousBurst(args, specWarnBurst, yellBurst, timerBurst)
	elseif args:IsSpell(1215421) and args:IsPlayer() and self:AntiSpam(4, "ToxicPool") then
		specWarnGTFO:Show()
		specWarnGTFO:Play("watchfeet")
	elseif args:IsSpell(2855) and not args:IsDestTypePlayer() then
		local caster = DBM:GetRaidUnitIdByGuid(args.sourceGUID)
		if caster and UnitExists(caster .. "target") then
			aq40Trash:ScheduleMethod(0.01, "ScanTrashAbilities", caster .. "target")
			-- TODO: check if the schedule/delay is necessary
		end
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId)
	if spellId == 1215421 and destGUID == UnitGUID("player") and self:AntiSpam(4, "ToxicPool") then
		specWarnGTFO:Show()
		specWarnGTFO:Play("watchfeet")
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
	-- 26586 (Birth) is used by a lot, here it indicates that Eye Tentacles (ghosts that don't look like Eye Tentacles at all) spawned that explode if they walk into you
	if args:IsSpell(26586) and (DBM:GetCIDFromGUID(args.sourceGUID) == 235668 or DBM:GetCIDFromGUID(args.sourceGUID) == 235528) then
		aq40Trash:ExplodingGhost(warnExplosion, specWarnExplosion, timerExplosion)
	end
end

local playerGUID = UnitGUID("player")
function mod:SPELL_MISSED(sourceGUID, _, _, _, destGUID, destName, _, destRaidFlags, _, _, spellSchool, missType)
	if missType == "REFLECT" or missType == "DEFLECT" then
		if spellSchool == 32 or spellSchool == 16 then
			if sourceGUID == playerGUID and self:AntiSpam(3, 1) then
				specWarnShadowFrostReflect:Show(destName)
				specWarnShadowFrostReflect:Play("stopattack")
			end
			aq40Trash:TrackTrashAbility(destGUID, "ShadowFrostReflect", destRaidFlags, destName)
		elseif spellSchool == 4 or spellSchool == 64 then
			if sourceGUID == playerGUID and self:AntiSpam(3, 2) then
				specWarnFireArcaneReflect:Show(destName)
				specWarnFireArcaneReflect:Play("stopattack")
			end
			aq40Trash:TrackTrashAbility(destGUID, "FireArcaneReflect", destRaidFlags, destName)
		end
	end
end

function mod:PLAYER_TARGET_CHANGED()
	aq40Trash:ScanTrashAbilities("target")
end

function mod:NAME_PLATE_UNIT_ADDED(uid)
	aq40Trash:ScanTrashAbilities(uid)
end

function mod:UNIT_DIED(args)
	aq40Trash:RemoveTrackTrashAbilityMob(args.destGUID)
end
