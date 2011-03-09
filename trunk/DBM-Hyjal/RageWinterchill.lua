local mod	= DBM:NewMod("Rage", "DBM-Hyjal")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17767)
mod:SetZone()
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_START"
)

local warnIceBolt		= mod:NewSpellAnnounce(31249, 3)
local warnDnd			= mod:NewSpellAnnounce(31258, 3)

local timerDnd			= mod:NewCastTimer(15, 31258)
local timerDndCD		= mod:NewCDTimer(31, 31258)

local specWarnIcebolt	= mod:NewSpecialWarningYou(31249)
local specWarnDnd		= mod:NewSpecialWarningMove(31258)

local berserkTimer		= mod:NewBerserkTimer(600)

mod:AddBoolOption("IceboltIcon", true)

local decaySpam = 0

function mod:OnCombatStart(delay)
	decaySpam = 0
	berserkTimer:Start(-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(31249) then
		warnIcebolt:Show(args.destName)
		if args:IsPlayer() then
			specWarnIcebolt:Show()
		end
		if self.Options.IceboltIcon then
			self:SetIcon(args.destName, 8)
		end
	elseif args:IsSpellID(31258) and args:IsPlayer() and GetTime() - decaySpam >= 3 then
		specWarnDnD:Show()
		decaySpam = GetTime()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(31249) then
		if self.Options.IceboltIcon then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(31258) then
		warnDnd:Show()
		timerDnd:Start()
		timerDndCD:Schedule(15)
	end
end
