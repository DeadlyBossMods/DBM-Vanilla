local mod	= DBM:NewMod("Azgalor", "DBM-Hyjal")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17842)
mod:SetModelID(18526)
mod:SetZone()
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_SUCCESS"
)

local warnSilence		= mod:NewSpellAnnounce(31344, 3)
local warnDoom			= mod:NewTargetAnnounce(31347, 3)

local timerDoom			= mod:NewTargetTimer(20, 31347)

local specWarnFire		= mod:NewSpecialWarningMove(31340)
local specWarnDoom		= mod:NewSpecialWarningYou(31347)

local berserkTimer		= mod:NewBerserkTimer(600)

mod:AddBoolOption("DoomIcon", true)

local fireSpam = 0

function mod:OnCombatStart(delay)
	fireSpam = 0
	berserkTimer:Start(-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(31340) and args:IsPlayer() and GetTime() - fireSpam >= 3 then
		specWarnFire:Show()
		fireSpam = GetTime()
	elseif args:IsSpellID(31347) then
		warnDoom:Show(args.destName)
		timerDoom:Start(args.destName)
		if args:IsPlayer() then
			specWarnDoom:Show()
		end
		if self.Options.DoomIcon then
			self:SetIcon(args.destName, 8)
		end
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(31347) then
		if self.Options.DoomIcon then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(31344) then
		warnSilence:Show()
	end
end
