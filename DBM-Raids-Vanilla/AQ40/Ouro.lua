local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local catID
if isBCC or isClassic then
	catID = 2
else--retail or wrath classic and later
	catID = 1
end
local mod	= DBM:NewMod("Ouro", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15517)
mod:SetEncounterID(716)
mod:SetModelID(15509)
mod:SetZone(531)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 26615",
	"SPELL_CAST_START 26102 26103",
	"SPELL_CAST_SUCCESS 26058",
	"SPELL_DAMAGE 1215745"
)

local warnSubmerge		= mod:NewAnnounce("WarnSubmerge", 3, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")
local warnEmerge		= mod:NewAnnounce("WarnEmerge", 3, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warnSweep			= mod:NewSpellAnnounce(26103, 2, nil, "Tank", 2)
local warnBerserk		= mod:NewSpellAnnounce(26615, 3)
local warnBerserkSoon	= mod:NewSoonAnnounce(26615, 2)

local specWarnBlast		= mod:NewSpecialWarningSpell(26102, nil, nil, nil, 2, 2)

local timerSubmerge		= mod:NewTimer(30, "TimerSubmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp", nil, nil, 6)
local timerEmerge		= mod:NewTimer(30, "TimerEmerge", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp", nil, nil, 6)
local timerBlastCD		= mod:NewVarTimer("v22.1-38.9", 26102, nil, nil, nil, 2)
local timerSweepCD		= mod:NewVarTimer("v20.6-22.6", 26103, nil, "Tank", 2, 5, nil, DBM_COMMON_L.TANK_ICON)

local timerNextEye, specWarnEye
if DBM:IsSeasonal("SeasonOfDiscovery") then
	timerNextEye 	= mod:NewNextTimer(30, 1215744)
	specWarnEye		= mod:NewSpecialWarning("SpecWarnEye", nil, nil, nil, 3, 2)
end

mod.vb.prewarn_enrage = false
mod.vb.enraged = false

function mod:OnCombatStart()
	self.vb.prewarn_enrage = false
	self.vb.enraged = false
	timerBlastCD:Start("v22.1-28.3")
	timerSweepCD:Start("v24.1-27.4")
	timerSubmerge:Start(184)
	self:RegisterShortTermEvents(
		"UNIT_HEALTH"
	)
	if DBM:UnitDebuff("player", 1213261) then
		self:BlindingAdmiration()
	end
end

function mod:OnCombatEnd()
	self:UnregisterShortTermEvents()
end

function mod:Emerge()
	warnEmerge:Show()
	timerSweepCD:Start(23)--23-24 (it might be 22-25 like pull)
	timerBlastCD:Start(24)--24-26 (it might be 20-26 like pull)
	timerSubmerge:Start(184)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(26615) and args:IsDestTypeHostile() then
		self.vb.Berserked = true
		warnBerserk:Show()
		timerSubmerge:Stop()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(26102) then
		specWarnBlast:Show()
		specWarnBlast:Play("stunsoon")
		timerBlastCD:Start()
	elseif args:IsSpell(26103) then
		warnSweep:Show()
		timerSweepCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(26058) and self:AntiSpam(3) and not self.vb.Berserked then
		timerBlastCD:Stop()
		timerSweepCD:Stop()
		timerSubmerge:Stop()
		warnSubmerge:Show()
		timerEmerge:Start()
		self:ScheduleMethod(30, "Emerge")
	end
end

function mod:UNIT_HEALTH(uId)
	if UnitHealth(uId) / UnitHealthMax(uId) <= 0.23 and self:GetUnitCreatureId(uId) == 15517 and not self.vb.prewarn_enrage then
		self.vb.prewarn_enrage = true
		warnBerserkSoon:Show()
		self:UnregisterShortTermEvents()
	end
end

function mod:BlindingAdmiration(delay)
	if delay == 0 then delay = 0.001 end -- FIXME: remove after core fixes
	timerNextEye:Start(-delay)
	specWarnEye:Schedule(26 - delay)
	specWarnEye:ScheduleVoice(26 - delay, "turnaway")
end

function mod:SPELL_DAMAGE(_, _, _, _, _, _, _, _, spellId)
	if spellId == 1215745 and self:AntiSpam(10, "BlindingAdmiration") then
		self:BlindingAdmiration(0)
		specWarnEye:Play("safenow")
	end
end
