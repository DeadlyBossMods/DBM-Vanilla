if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Thunderaan", "DBM-Azeroth")
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(231494)
mod:SetEncounterID(3079)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 466774 15234 11642 465700",
	"SPELL_AURA_APPLIED 470866",
	"SPELL_PERIODIC_DAMAGE 470866",
	"SPELL_PERIODIC_MISSED 470866"
)

-- Adds
-- First log entry for them is typically them casting Cast Lightning Bolt (15234)
-- Cast Heal (11642) on the boss, needs interrupt

-- Cyclonic Winds: ~27s cooldown, active for 6 seconds, but I don't think anyone really cares about it?
-- "Cyclonic Winds-466774-npc:231494-000076DEDB = pull:26.5, 26.9, 27.9, 32.9, 31.9, 29.4, 38.6, 27.5",

-- Chain Lightning is basically random
-- "Chain Lightning-465700-npc:231494-000076DEDB = pull:7.5, 15.2, 19.8, 25.9, 40.5, 27.6, 25.9, 15.2, 23.7, 21.0, 16.2",
-- But it targets someone and you can spread (not like anyone bothers doing that, but might as well show a warning)

-- Lightning Cloud is just a GTFO warning, ticks only every 3 seconds, so you got a lot of time
-- "<493.09 18:37:25> [CLEU] SPELL_AURA_APPLIED#Creature-0-5208-2804-6591-231494-000076DEDB#Prince Thunderaan#Player-5827-0272A77A#Tandanu#470866#Lightning Cloud#DEBUFF#nil#nil#nil#nil#nil",
-- "<496.09 18:37:28> [CLEU] SPELL_PERIODIC_DAMAGE#Creature-0-5208-2804-6591-231494-000076DEDB#Prince Thunderaan#Player-5827-0272A77A#Tandanu#470866#Lightning Cloud",

-- Don't care for the knockback and "no tank in range" spells

local timerWindsCD       = mod:NewCDTimer(27, 466774)
local timerWindsActive   = mod:NewBuffActiveTimer(7.5, 466774) -- yes, that's cast time + active, but don't want too many timers

local warnWinds          = mod:NewCastAnnounce(466774, nil, nil, nil, false, 2)
local warnAdd            = mod:NewAnnounce("AddIncoming", 3, 25681) -- Icon: Summon Mana Fiend

local specWarnGTFO       = mod:NewSpecialWarningGTFO(470866, nil, nil, nil, 1, 8)
local specWarnHeal       = mod:NewSpecialWarningInterrupt(11642, "HasInterrupt", nil, nil, 1, 2)
local specWarnLightning  = mod:NewSpecialWarningYou(465700, nil, nil, nil, 1, 2)

local yellLightning      = mod:NewYell(465700)
local yellLightningFades = mod:NewShortFadesYell(465700)

mod:AddSetIconOption("SetIconOnChaingLightning", 465700, true, 0, {8})


local addsSeen = {}

function mod:OnCombatStart(delay)
	table.wipe(addsSeen)
	timerWindsCD:Start(26.5 - delay)
end

function mod:ChainLightningTarget(target)
	if target == UnitName("player") then
		specWarnLightning:Show()
		specWarnLightning:Play("runout")
		yellLightning:Show()
		-- Not using Countdown() because it doesn't schedule anything < 1
		yellLightningFades:Schedule(1.9, 2)
		yellLightningFades:Schedule(0.9, 1)
	end
	if self.Options.SetIconOnChaingLightning then
		self:SetIcon(target, 8, 4)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(466774) then
		timerWindsCD:Start()
		timerWindsActive:Start()
		warnWinds:Show()
	elseif args:IsSpell(15234) and args:GetSrcCreatureID() == 232694 then -- Shared Spell IDs with some random dungeons
		if not addsSeen[args.sourceGUID] then
			addsSeen[args.sourceGUID] = true
			warnAdd:Show()
		end
	elseif args:IsSpell(11642) and args:GetSrcCreatureID() == 232694 then
		specWarnHeal:Show(args.sourceName)
		specWarnHeal:Play("kickcast")
	elseif args:IsSpell(465700) then
		-- Target is still the tank on CAST_START unclear when exactly he switches, but stays on Chaing Lightning target until cast finishes
		self:ScheduleMethod(0.1, "BossTargetScanner", args.sourceGUID, "ChainLightningTarget", 0.1, 2)
	end
end

function mod:CloudOnYou(spellName)
	if self:AntiSpam(7, "gtfo") then -- Effectively triggers every 3 ticks, the damage isn't too bad, so don't want to bother people too much
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(470866) and args:IsPlayer() then
		self:CloudOnYou(args.spellName)
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 470866 and destGUID == UnitGUID("player") then
		self:CloudOnYou(spellName)
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
