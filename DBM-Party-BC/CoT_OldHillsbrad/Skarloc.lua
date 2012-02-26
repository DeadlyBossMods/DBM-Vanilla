local mod	= DBM:NewMod("Skarloc", "DBM-Party-BC", 11)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17862)
mod:SetModelID(17387)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_PERIODIC_DAMAGE",
	"SPELL_PERIODIC_MISSED"
)

local warnHeal                  = mod:NewSpellAnnounce(29427)
local warnHammer                = mod:NewTargetAnnounce(13005)
local timerHammer               = mod:NewTargetTimer(6, 13005)
local specWarnConsecration      = mod:NewSpecialWarningMove(38385)

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(29427) and self:IsInCombat() then
		warnHeal:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(13005) and self:IsInCombat() then
		warnHammer:Show(args.destName)
		timerHammer:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(13005) then
		timerHammer:Cancel(args.destName)
	end
end

do 
	local lastConsecration = 0
	function mod:SPELL_PERIODIC_DAMAGE(sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId)
		if spellId == 38385 and destGUID == UnitGUID("player") and time() - lastConsecration > 2 then
			specWarnConsecration:Show()
			lastConsecration = time()
		end
	end
	mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
end
