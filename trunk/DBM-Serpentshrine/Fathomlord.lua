local mod	= DBM:NewMod("Fathomlord", "DBM-Serpentshrine")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(21214)
mod:SetModelID(20662)
mod:SetZone()

mod:RegisterCombat("yell", L.YellPull)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_SUMMON"
)

mod:SetBossHealthInfo(
	21214, L.name,
	21964, L.Caribdis,
	21965, L.Tidalvess,
	21966, L.Sharkkis
)

local warnHeal			= mod:NewSpellAnnounce(38330, 4)
local warnTotem			= mod:NewTargetAnnounce(38236, 4)

local specWarnHeal		= mod:NewSpecialWarningInterrupt(38330, false)
local specWarnTotem		= mod:NewSpecialWarningSpell(38236)

local berserkTimer		= mod:NewBerserkTimer(600)

mod:AddBoolOption("HealthFrame", true)

function mod:OnCombatStart(delay)
	berserkTimer:Start(-delay)
end

function mod:OnCombatEnd()
	DBM.BossHealth:Clear()
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(38330) then
		warnHeal:Show()
		if self:GetUnitCreatureId("target") == 21964 then
			specWarnHeal:Show(args.sourceName)
		end
	end
end

function mod:SPELL_SUMMON(args)
	if args:IsSpellID(38236) then
		warnTotem:Show(args.sourceName)
	end
end
