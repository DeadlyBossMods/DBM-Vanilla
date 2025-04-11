if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

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
local timerMc = mod:NewNextTimer(10, 1231844)

local warnSilenceYou = mod:NewSpecialWarningMove(1231844, nil, nil, nil, 2, 2)

local warnCarrionYou = mod:NewSpecialWarningYou(1231836, nil, nil, nil, 2, 2)

local specWarnStack = mod:NewSpecialWarningCast(1231636, nil, nil, nil, 2, 2)

local berserkTimer = mod:NewBerserkTimer(480)

function mod:OnCombatStart(delay)
	berserkTimer:Start(480 - delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1231844) then
		-- MC: Don't fully understand it, why does it give you a 6 sec pre-warning? with the other debuff? what should you do?
		if args:IsPlayer() and self:AntiSpam(5, "MCYou") then
			warnMcYou:Show()
			warnMcYou:Play("targetyou")
		end
		timerMc:Start()
		warnMc:CombinedShow(0.1, args.destName) -- Looks like Combined is not necessary, but maybe on higher difficulties?
	elseif args:IsSpell(1231836) then
		local amount = args.amount or 1
		if args:IsPlayer() then -- Affects *a lot* of players
			if self:AntiSpam(amount >= 5 and 2 or 8, "Carrion") then -- If you have 5 stacks: where are you standing?!
				warnCarrionYou:Show()
				warnCarrionYou:Play("scatter")
			end
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
	if args:IsSpell(1231636) then -- Spell seems rare
		specWarnStack:Show()
		specWarnStack:Play("gather")
	end
end
