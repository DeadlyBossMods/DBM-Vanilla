if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("LillianVoss", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3190)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 1233883 1232192",
	"SPELL_AURA_APPLIED_DOSE 1233883 1232192",
	"SPELL_AURA_REMOVED 1233883",
	"SPELL_CAST_START 1233847"
)

local specWarnMove		= mod:NewSpecialWarningYou(1233883, nil, nil, nil, 2, 2)

-- Ignite goes on everyone and does a ton of damage, TODO: timer/trigger is unclear, sometimes happens after 15 sec, sometimes only after minutes

-- Scarlet Grasp seems to be on a consistent timer
local timerScarletGrasp = mod:NewNextTimer(30.75, 1233847)
local warnScarletGrasp = mod:NewCastAnnounce(1233847)

-- Debilitate has multiple casts and IDs, but 1232192 is the debuff that stacks
local warnDebilitateStacks = mod:NewTargetCountAnnounce(1232192)
local timerDebilitate = mod:NewVarTimer("v17-21", 1232192)

-- Enrage timer seems very short
local berserkTimer = mod:NewBerserkTimer(180)

mod:NewGtfo{antiSpam = 5, spell = 1234708, spellAura = 1234708, spellPeriodicDamage = 1234708}

function mod:OnCombatStart(delay)
	berserkTimer:Start(180 - delay)
	timerScarletGrasp:Start(30.75 - delay)
end


function mod:KeepMovingYou(amount)
	if self:AntiSpam(amount >= 4 and 1 or amount >= 3 and 3 or 8, "KeepmovingHigh") then
		specWarnMove:Show()
		if amount >= 3 then
			specWarnMove:Play("stackhigh")
		else
			specWarnMove:Play("keepmove")
		end
	end
end

function mod:DelayedDebilitate(target, amount)
	warnDebilitateStacks:Show(amount, target)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1233883) and args:IsPlayer() then
		self:KeepMovingYou(args.amount or 1)
	elseif args:IsSpell(1232192) then -- Only show warning once as multiple stacks are applied right after each other
		local amount = args.amount or 1
		self:UnscheduleMethod("DelayedDebilitate", args.destName)
		self:ScheduleMethod(0.2, "DelayedDebilitate", args.destName, amount)
		if self:AntiSpam(2, "Debilitate") then
			timerDebilitate:Start()
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(1233883) and args:IsPlayer() then
		specWarnMove:Play("safenow")
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1233847) then
		timerScarletGrasp:Start()
		warnScarletGrasp:Show()
	end
end
