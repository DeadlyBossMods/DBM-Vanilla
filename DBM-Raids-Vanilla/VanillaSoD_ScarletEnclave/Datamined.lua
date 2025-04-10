if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("ScarletDatamine", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")
mod:SetZone(2856)
mod.isTrashMod = true
mod.isTrashModBossFightAllowed = true

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 1233883 1234347 1233901 1232703",
	"SPELL_AURA_APPLIED_DOSE 1233883 1234347 1233901 1232703",
	"SPELL_CAST_START 1232703 1234347",
	"UNIT_SPELLCAST_START target nameplate1 nameplate2 nameplate3",
	"UNIT_AURA player target"
)

mod:NewGtfo{antiSpam = 5, spell = 1234708, spellAura = 1234708, spellPeriodicDamage = 1234708}


-- Is ignite a GTFO? Probably not because it has 10 sec debuff instead of indefinite
local warnIgniteTarget	= mod:NewTargetNoFilterAnnounce(1234347)
local warnPoison		= mod:NewTargetNoFilterAnnounce(1233901)
local warnShieldSoon	= mod:NewCastAnnounce(1232703)
local warnIgniteSoon	= mod:NewCastAnnounce(1234347)

local specWarnMove		= mod:NewSpecialWarningYou(1233883, nil, nil, nil, 2, 2)
local specWarnPoison	= mod:NewSpecialWarningYou(1233901, nil, nil, nil, 1, 2)
local specWarnShield	= mod:NewSpecialWarningReflect(1232703)

local yellPoison		= mod:NewYell(1233901, nil, false)

function mod:KeepMovingYou(amount)
	if amount >= 4 then
		if self:AntiSpam(10, "KeepmovingHigh") then
			specWarnMove:Show()
			specWarnMove:Play("stackhigh")
		end
	elseif self:AntiSpam(10, "Keepmoving") then
		specWarnMove:Show()
		specWarnMove:Play("keepmove")
	end
end

function mod:PoisonYou()
	if self:AntiSpam(10, "Poison")  then
		specWarnPoison:Show()
		specWarnPoison:Play("bombyou")
		yellPoison:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1233883) then
		if args:IsPlayer() then
			self:KeepMovingYou(args.amount or 1)
		end
	elseif args:IsSpell(1234347) then
		warnIgniteTarget:CombinedShow(0.1, args.destName)
	elseif args:IsSpell(1233901) then
		warnPoison:CombinedShow(0.1, args.destName)
		if args:IsPlayer() then
			self:PoisonYou()
		end
		self:SetIcon(args.destName, 8) -- FIXME: use different icons in a mod with proper icon id sync
	elseif args:IsSpell(1232703) then
		if self:AntiSpam(10, "Shield") then
			specWarnShield:Show(args.destName)
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1232703) then
		if self:AntiSpam(5, "ShieldSoon") then
			warnShieldSoon:Show()
		end
	elseif args:IsSpell(1234347) then
		if self:AntiSpam(5, "IgniteSoon") then
			warnIgniteSoon:Show()
		end
	end
end

function mod:UNIT_SPELLCAST_START(_, _, spellId)
	if spellId == 1232703 then
		if self:AntiSpam(5, "ShieldSoon") then
			warnShieldSoon:Show()
		end
	elseif spellId == 1234347 then
		if self:AntiSpam(5, "IgniteSoon") then
			warnIgniteSoon:Show()
		end
	end
end

function mod:UNIT_AURA(uId)
	if UnitIsUnit(uId, "player") and DBM:UnitAura(uId, 1233883) then
		self:KeepMovingYou(1) -- TODO: get count here if necessary
	elseif UnitIsUnit(uId, "player") and DBM:UnitAura(uId, 1233901) then
		self:PoisonYou()
	elseif UnitIsUnit(uId, "target") and DBM:UnitAura(uId, 1232703) then
		if self:AntiSpam(10, "Shield") then
			specWarnShield:Show(UnitName(uId))
		end
	end
end
