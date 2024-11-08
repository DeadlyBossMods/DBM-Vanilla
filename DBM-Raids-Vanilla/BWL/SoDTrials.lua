if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("SoDBWLTrials", "DBM-Raids-Vanilla", 5)
local L		= mod:GetLocalizedStrings()
local CL	= DBM_COMMON_L

mod:SetRevision("@file-date-integer@")
mod:SetZone(469)
mod.isTrashMod = true
mod.isTrashModBossFightAllowed = true

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 466357 466435 466448",
	"SPELL_PERIODIC_DAMAGE 466448",
	"SPELL_PERIODIC_MISSED 466448"
)


-- Green and Blue trials trigger on a global loop throughout all fights, but iterations where you are out of combat are skipped
-- If you are out of combat the trigger NPC (231678) sometimes still casts the spell, but no one gets the debuff (and sometimes it casts it in combat and no one gets it? Can you resist it?)

-- 47.36 seems to be a good timer on average, it's within the 0.01 log timestamp granularity for a 47 minute log that covers multiple boss and trash fights
-- Though there is some indication that the time is ever so slightly longer during out of combat phases, but it was only off by 0.1s across a 10 minute break.


local timerBombs		= mod:NewTimer(47.36, "TimerBombs", 3823)
timerBombs.simpType = "next"
local timerBlueBomb		= mod:NewNextTimer(47.36, 466357)
local timerGreenBomb	= mod:NewNextTimer(47.36, 466435)

mod:AddOptionLine(L.BlueTrial)
-- Blue Trial
local specWarnBlueTrial = mod:NewSpecialWarningTarget(466357, false, nil, L.BlueBomb, 2, 2) -- Somewhat spammy and mostly not actionable because you are already stacked
local specWarnBlueYou	= mod:NewSpecialWarningYou(466357, nil, nil, L.BlueBomb, 3, 2)
local warnBlueTrial		= mod:NewTargetNoFilterAnnounce(466357, nil, nil, nil, nil, nil, L.BlueBomb)
local yellBlueTrial     = mod:NewIconTargetYell(466357, nil, nil, nil, "YELL")
local yellBlueFades     = mod:NewIconFadesYell(466357, nil, nil, nil, "YELL")
mod:AddSetIconOption("SetIconOnBlueBombTarget", 466357, true, 0, {6})

mod:AddOptionLine(L.GreenTrial)
-- Green Trial
local yellGreenTrial      = mod:NewIconTargetYell(466435)
local yellGreenTrialFades = mod:NewIconFadesYell(466435)
local specWarnGreenTrial  = mod:NewSpecialWarningMoveAway(466435, nil, nil, L.GreenBomb, 3, 2)
local warnGreenTrial      = mod:NewTargetNoFilterAnnounce(466435, 4, nil, nil, nil, nil, L.GreenBomb)
local specWarnGTFO        = mod:NewSpecialWarningGTFO(466448, nil, nil, nil, 1, 8)
mod:AddSetIconOption("SetIconOnGreenBombTarget", 466435, true, 0, {4})

mod:AddOptionLine(L.GreenAndBlue)
-- Combined Blue/Green on the same person (happens way more often than random chance!)
-- FIXME: bug in core makes spell ID required and doesn't accept string, need to add support for the rename system here
local yellBoth			= mod:NewShortYell(CL.BOMBS, "{rt8}{rt8}{rt8} " .. (CL.AND or "&") .. " {rt6}{rt6}{rt6}")
local yellBothFades		= mod:NewFadesYell(CL.BOMBS, "{rt8} " .. (CL.AND or "&") .. " {rt6}: %d")
local specWarnBoth		= mod:NewSpecialWarning("SpecWarnBothBombs", nil, "SpecWarnBothBombs", nil, 2, 2)
local specWarnBothYou	= mod:NewSpecialWarning("SpecWarnBothBombsYou", nil, "SpecWarnBothBombsYou", nil, 3, 2)


local function gtfo(self, spellName)
	if self:AntiSpam(3, "GreenTrialGtfo") then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end

local blueTarget, greenTarget = "", ""
local blueTargetTime, greenTargetTime = 0, 0
local lastBomb = 0

-- Bombs used to trigger at the exact same time in weeks 1 and 2, but as of week 3 they trigger separately, maybe timed by the trial activation time?
function mod:Bombs()
	local hasBlue = GetTime() - blueTargetTime < 1
	local hasGreen = GetTime() - greenTargetTime < 1
	if hasBlue and hasGreen and blueTarget == greenTarget then
		if blueTarget == UnitName("player") then -- You got both, you do not want to run out 'cause you would die
			specWarnBothYou:Show()
			specWarnBothYou:Play("gather") -- Just use gather, more clear than "bomb on you" without the "run"
			yellBoth:Yell()
			yellBoth:Schedule(2) -- Doesn't hurt to repeat the "long" message for the special case
			yellBothFades:Countdown(8, 4)
		else
			specWarnBoth:Show(blueTarget)
			specWarnBoth:Play("helpsoak")
		end
	else -- Not both on the same
		if hasBlue then
			if blueTarget == UnitName("player") then
				-- Blue square because it's the blue trial
				yellBlueTrial:Yell(6)
				yellBlueFades:Countdown(8, 4, 6)
				specWarnBlueYou:Show()
				specWarnBlueYou:Play("gather")
			else
				-- Don't tell to soak if you have the bomb
				if not (hasGreen and greenTarget == UnitName("player")) then
					specWarnBlueTrial:Show(blueTarget)
					specWarnBlueTrial:Play("helpsoak")
				end
				warnBlueTrial:Show(blueTarget)
			end
		end
		if hasGreen then
			if greenTarget == UnitName("player") then
				yellGreenTrial:Yell(8) -- Skull to make it clear that this is a "go away" thing (could also use the green triangle)
				yellGreenTrialFades:Countdown(8, 3, 8)
				specWarnGreenTrial:Show()
				specWarnGreenTrial:Play("runout")
			end
			warnGreenTrial:Show(greenTarget)
		end
	end
	if timerBombs:GetTime() >= 8 and timerBombs:GetRemaining() > 1 and not (hasGreen and hasBlue) then -- Two non-synced bomb timers
		if hasGreen then
			timerGreenBomb:Start()
		elseif hasBlue then
			timerBlueBomb:Start()
		end
	else -- Single bomb or synced bombs
		timerBombs:Start()
		lastBomb = GetTime()
		self:UnscheduleMethod("BombTimerLoop")
		self:ScheduleMethod(47.36 + 0.3, "BombTimerLoop")
	end
end

function mod:BombTimerLoop() -- Fallback if the bomb doesn't get cast, delayed by 0.3 second vs. expected time
	if GetTime() - lastBomb < 30 * 60 then -- give up after 30 minutes
		-- FIXME: this accumulates scheduling inaccuracies because it gets scheduled on the first frame after the given time
		-- But doesn't matter too much because RecoverBombTimer() fixes it, but it'll be started a bit late
		self:ScheduleMethod(47.36, "BombTimerLoop")
		if select(8, GetInstanceInfo()) == 469 then
			self:RecoverBombTimer()
		end
	end
end

function mod:StopBombTimerLoop()
	lastBomb = 0
	self:UnscheduleMethod("BombTimerLoop")
end

function mod:RecoverBombTimer()
	if lastBomb ~= 0 and GetTime() - lastBomb < 30 * 60 then
		local nextBomb = math.ceil((GetTime() - lastBomb) / 47.36) * 47.36 + lastBomb
		timerBombs:Start()
		timerBombs:Update(47.36 - (nextBomb - GetTime()), 47.36)
	end
end

function mod:OnLoadingScreenDisabled()
	if select(8, GetInstanceInfo()) == 469 then
		self:RecoverBombTimer()
	else
		timerBombs:Stop()
	end
end

-- fixme: custom event handlers are ugly, especially for test integraiton
-- but i don't trust the zone check in the event handler to always handle this correctly, it may depend on event handler order
local f = CreateFrame("Frame")
f:RegisterEvent("LOADING_SCREEN_DISABLED")
local handler = function(_, event)
	if event == "LOADING_SCREEN_DISABLED" then
		mod:OnLoadingScreenDisabled()
	end
end
f:SetScript("OnEvent", handler)
DBM:RegisterCallback("DBMTest_Event", function(_, ...) handler(f, ...) end)

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(466357) then -- Blue Trial bomb --> gather
		blueTarget = args.destName
		blueTargetTime = GetTime()
		self:UnscheduleMethod("Bombs")
		if GetTime() - greenTargetTime < 0.1 then
			self:Bombs()
		else
			self:ScheduleMethod(0.05, "Bombs")
		end
		if self.Options.SetIconOnBlueBombTarget then
			self:SetIcon(args.destName, 6, 8)
		end
	elseif args:IsSpell(466435) then -- Green Trial bomb --> run out
		greenTarget = args.destName
		greenTargetTime = GetTime()
		self:UnscheduleMethod("Bombs")
		if GetTime() - blueTargetTime < 0.1 then
			self:Bombs()
		else
			self:ScheduleMethod(0.05, "Bombs")
		end
		if self.Options.SetIconOnGreenBombTarget then
			self:SetIcon(args.destName, 4, 8)
		end
	elseif args:IsSpell(466448) and args:IsPlayer() then
		gtfo(self, args.spellName)
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 466448 and destGUID == UnitGUID("player") then
		gtfo(self, spellName)
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE
