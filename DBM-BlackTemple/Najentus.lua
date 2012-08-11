local mod	= DBM:NewMod("Najentus", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(22887)
mod:SetModelID(21174)
mod:SetZone()
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED"
)

local warnShield		= mod:NewSpellAnnounce(39872, 4)
local warnShieldSoon	= mod:NewPreWarnAnnounce(39872, 10, 3)
local warnSpine			= mod:NewTargetAnnounce(39837, 3)

local yellSpine			= mod:NewYell(39837)
local timerShield		= mod:NewCDTimer(58, 39872)

local berserkTimer		= mod:NewBerserkTimer(480)

mod:AddBoolOption("RangeFrame", true)
mod:AddBoolOption("SpineIcon", true)

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
	timerShield:Start(60-delay)
	warnShieldSoon:Schedule(50-delay)
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show()
	end
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(39872) then
		warnShield:Show()
		warnShieldSoon:Schedule(48)
		timerShield:Start()
	elseif args:IsSpellID(39837) then
		warnSpine:Show(args.destName)
		if self.Options.SpineIcon then
			self:SetIcon(args.destName, 8)
		end
		if args:IsPlayer() then
			yellSpine:Yell()
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(39837) then
		if self.Options.SpineIcon then
			self:SetIcon(args.destName, 0)
		end
	end
end