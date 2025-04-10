local mod	= DBM:NewMod("Balnazzar", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3185)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 1231844 1231836 1231777",
	"SPELL_AURA_APPLIED_DOSE 1231836",
	"SPELL_CAST_START 1231636"
)

local warnMc = mod:NewTargetNoFilterAnnounce(1231844)
local warnMcYou = mod:NewSpecialWarningMove(1231844, nil, nil, nil, 2, 2)

local warnSilenceYou = mod:NewSpecialWarningMove(1231844, nil, nil, nil, 2, 2)

local warnCarrionYou = mod:NewSpecialWarningYou(1231836, nil, nil, nil, 2, 2)

local specWarnStack = mod:NewSpecialWarningCast(1231636, nil, nil, nil, 2, 2)

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1231844) then
		if args:IsPlayer() and self:AntiSpam(5, "MCYou") then -- MC: Move to somewhere to block it
			warnMcYou:Show()
			warnMcYou:Play("findshelter")
		end
		warnMc:CombinedShow(0.1, args.destName) -- Looks like Combined is not necessary, but maybe on higher difficulties?
	elseif args:IsSpell(1231836) then
		if args:IsPlayer() and self:AntiSpam(8, "Carrion") then -- Affects *a lot* of players
			warnCarrionYou:Show()
			warnCarrionYou:Play("scatter")
		end
	elseif args:IsSpell(1231777) then -- Silence, pretty much always active, so very generous antispam
		if args:IsPlayer() and self:AntiSpam(30, "Silence") then
			warnSilenceYou:Show()
			warnSilenceYou:Play("findshelter")
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1231636) then
		specWarnStack:Show()
		specWarnStack:Play("gather")
	end
end
