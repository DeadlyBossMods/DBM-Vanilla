local mod	= DBM:NewMod("Council", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(22949, 22950, 22951, 22592, 23426)
mod:SetModelID(21416)
mod:SetUsedIcons(8)
mod:SetZone()

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_HEAL",
	"SPELL_INTERRUPT",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_AURA_REMOVED",
	"UNIT_DIED"
)

mod:SetBossHealthInfo(
	22949, L.Gathios,
	22950, L.Zerevor,
	22951, L.Malande,
	22952, L.Veras
)

local warnPoison		= mod:NewTargetAnnounce(41485, 3)
local warnVanish		= mod:NewTargetAnnounce(41476, 3)
local warnShield		= mod:NewTargetAnnounce(41475, 3)
local warnMeleeImmune	= mod:NewTargetAnnounce(41450, 4)
local warnSpellImmune	= mod:NewTargetAnnounce(41451, 4)
local warnCoHCast		= mod:NewSpellAnnounce(41455, 4)
local warnFadeSoon		= mod:NewAnnounce("WarnFadeSoon", 3, 41476)
local warnFaded			= mod:NewAnnounce("WarnFaded", 3, 41476)
local warnDevAura		= mod:NewAnnounce("WarnDevAura", 3, 41452)
local warnResAura		= mod:NewAnnounce("WarnResAura", 3, 41453)

local specWarnFlame		= mod:NewSpecialWarningMove(41481)
local specWarnBlizzard	= mod:NewSpecialWarningMove(41482)
local specWarnCoH		= mod:NewSpecialWarningInterrupt(41455)
local specWarnImmune	= mod:NewSpecialWarning("Immune")

local timerVanish		= mod:NewBuffActiveTimer(31, 41476)
local timerShield		= mod:NewBuffActiveTimer(20, 41475)
local timerMeleeImmune	= mod:NewBuffActiveTimer(15, 41450)
local timerSpellImmune	= mod:NewBuffActiveTimer(15, 41451)
local timerDevAura		= mod:NewBuffActiveTimer(30, 41452)
local timerResAura		= mod:NewBuffActiveTimer(30, 41453)
local timerCoH			= mod:NewCastTimer(2.5, 41455)
local timerNextCoH		= mod:NewCDTimer(14, 41455)

local berserkTimer		= mod:NewBerserkTimer(900)

mod:AddBoolOption("HealthFrame", false)
mod:AddBoolOption("PoisonIcon", true)
mod:AddBoolOption("PoisonWhisper", false, "announce")

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(41485) then -- 맹독
		warnPoison:Show(args.destName)
		if self.Options.PoisonIcon then
			self:SetIcon(args.destName, 8)
		end
		if IsRaidLeader() and self.Options.PoisonWhisper then
			self:SendWhisper(L.PoisonWhisper, args.destName)
		end
	elseif args:IsSpellID(41481) and args:IsPlayer() then -- 불기둥
		 specWarnFlame:Show()
	elseif args:IsSpellID(41482) and args:IsPlayer() then -- 눈보라
		 specWarnBlizzard:Show()
	elseif args:IsSpellID(41476) then -- 소멸
		warnVanish:Show(args.destName)
		timerVanish:Start(args.destName)
		warnFadeSoon:Schedule(26)
	elseif args:IsSpellID(41475) then -- 반보
		warnShield:Show(args.destName)
		timerShield:Start(args.destName)
	elseif args:IsSpellID(41452) and args.destName == L.Gathios then -- 기원
		warnDevAura:Show()
		timerDevAura:Start()
	elseif args:IsSpellID(41453) and args.destName == L.Gathios then -- 마력 저항
		warnResAura:Show()
		timerResAura:Start()
	elseif args:IsSpellID(41450) and args.destName == L.Malande then -- 보축
		warnMeleeImmune:Show(args.destName)
		timerMeleeImmune:Start(args.destName)
		specWarnImmune:Show(L.Melee)
	elseif args:IsSpellID(41451) and args.destName == L.Malande then -- 주문 수호
		warnSpellImmune:Show(args.destName)
		timerSpellImmune:Start(args.destName)
		specWarnSpellImmune:Show(L.Spell)
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(41479) then
		self:warnFaded()
	elseif args:IsSpellID(41485) then
		if self.Options.PoisonIcon then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(41455) then
		warnCoHCast:Show()
		timerCoH:Start()
		if self:GetUnitCreatureId("target") == 22951 or self:GetUnitCreatureId("focus") == 22951 then
			specWarnCoH:Show()
		end
	end
end

function mod:SPELL_HEAL(args)
	if args:IsSpellID(41455) then
		timerNextCoH:Start(19)
	end
end

function mod:SPELL_INTERRUPT(args)
	if args:IsSpellID(41455) then
		timerCoH:Cancel()
		timerNextCoH:Start()
	end
end

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 23426 and self:IsInCombat() then
		DBM:EndCombat(self)
	end
end