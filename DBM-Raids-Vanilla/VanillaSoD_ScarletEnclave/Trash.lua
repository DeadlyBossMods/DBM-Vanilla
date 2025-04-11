if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("SE_Trash", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")
mod:SetZone(2856)
mod.isTrashMod = true

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 1232703",
	"SPELL_CAST_START 1232703",
	"SPELL_DAMAGE 1232703",
	"SPELL_MISSED 1232703",
	"DAMAGE_SHIELD 1232703",
	"DAMAGE_SHIELD_MISSED 1232703"
)

-- Not sure which event is needed to find reflects
local specWarnShieldInterrupt	= mod:NewSpecialWarningInterrupt(1232703, nil, nil, nil, 1, 2)
local specWarnShield			= mod:NewSpecialWarningReflect(1232703, nil, nil, nil, 1, 2)


-- Consecration
mod:NewGtfo{antiSpam = 5, spell = 1233069, spellAura = 1233069, spellPeriodicDamage = 1233069}

function mod:WarnReflect(name)
	if self:AntiSpam(10, "Shield") then
		specWarnShield:Show(name)
		specWarnShield:Play("stopattack")
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1232703) and args.destGUID == UnitGUID("target") and DBM:IsMelee("player") then
		self:WarnReflect(args.destName)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1232703) then
		if self:CheckInterruptFilter(args.sourceGUID, nil, true) then
			specWarnShieldInterrupt:Show(args.sourceName)
			specWarnShieldInterrupt:Play("kickcast")
		end
	end
end

local playerGuid = UnitGUID("player")
function mod:SPELL_DAMAGE(_, sourceName, _, _, destGUID, _, _, _, spellId)
	if spellId == 1232703 and destGUID == playerGuid then
		self:WarnReflect(sourceName)
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE
mod.DAMAGE_SHIELD = mod.SPELL_DAMAGE
mod.DAMAGE_SHIELD_MISSED = mod.SPELL_DAMAGE
