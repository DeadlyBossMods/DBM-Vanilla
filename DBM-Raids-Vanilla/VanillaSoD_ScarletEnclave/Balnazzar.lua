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
	"SPELL_DAMAGE 1231645",
	"SPELL_MISSED 1231645"
)

local warnMc = mod:NewTargetNoFilterAnnounce(1231844)
local warnMcYou = mod:NewSpecialWarningMove(1231844, nil, nil, nil, 2, 2)
local timerMc = mod:NewNextTimer(10, 1231844)

local warnSilenceYou = mod:NewSpecialWarningMove(1231844, nil, nil, nil, 2, 2)

local warnCarrionYou = mod:NewSpecialWarningYou(1231836, nil, nil, nil, 2, 2)

-- Prey on the weak was changed, apparently it now is cast just once on pull and stays active. Seems to tick every 6 seconds, but sometimes 5? (Maybe related to phases)
-- Warning disabled by default because it got nerfed so hard you can basically ignore it, but the timer is kinda cool if you really wanna optimize it. (Doubt anyone will bother, might disable by default later if it confuses people)
local timerPrey = mod:NewTargetTimer(6, 1231645)
local specWarnPrey = mod:NewSpecialWarningMoveTo(1231636, false, nil, 2, 2, 2)

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

function mod:PreyLoop(guessCount)
	if guessCount == 0 then
		self:UnscheduleMethod("PreyLoop")
		timerPrey:Stop(L.Tick)
		timerPrey:Start(6, L.Tick)
		self:ScheduleMethod(6.1, "PreyLoop", 1)
	elseif guessCount <= 6 then
		timerPrey:Start(5.9, L.Tick)
		self:ScheduleMethod(6, "PreyLoop", guessCount + 1)
	end
end

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId)
	if spellId == 1231645 and destGUID == UnitGUID("player") and self:AntiSpam(4.5, "Prey") then
		self:PreyLoop(0)
		specWarnPrey:Show()
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE
