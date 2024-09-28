local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isWrath then
	catID = 4
elseif isBCC or isClassic then
	catID = 5
else--retail or cataclysm classic and later
	catID = 3
end
local mod	= DBM:NewMod("Vaelastrasz", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(13020)
mod:SetEncounterID(611)
if not mod:IsClassic() then
	mod:SetModelID(13992)
end
mod:SetUsedIcons(8, 7, 6)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 23461",
	"SPELL_CAST_SUCCESS 18173",
	"SPELL_AURA_APPLIED 18173 367987",
	"SPELL_AURA_APPLIED_DOSE 367987",
	"SPELL_AURA_REMOVED 18173"
)

local warnBreath			= mod:NewCastAnnounce(23461, 2, nil, nil, "Tank", 2)
local warnAdrenaline		= mod:NewTargetNoFilterAnnounce(18173, 2)

local specWarnAdrenaline	= mod:NewSpecialWarningYou(18173, nil, nil, nil, 1, 2)
local specWarnAdrenalineOut	= mod:NewSpecialWarningMoveAway(18173, nil, nil, nil, 1, 2)
local yellAdrenaline		= mod:NewYell(18173, nil, true, 2)
local yellAdrenalineFades	= mod:NewShortFadesYell(18173)

local timerAdrenalineCD		= mod:NewCDTimer(15.7, 18173, nil, nil, nil, 3)
local timerAdrenaline		= mod:NewTargetTimer(20, 18173, nil, nil, nil, 3)
local timerCombatStart		= mod:NewCombatTimer(43.5)

mod:AddSetIconOption("SetIconOnDebuffTarget2", 18173, true, 0, {8, 7, 6})

mod.vb.debuffIcon = 8

function mod:OnCombatStart(delay)
	self.vb.debuffIcon = 8
	if not DBM:IsSeasonal("SeasonOfDiscovery") then
		timerAdrenalineCD:Start(15.7-delay)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(23461) then
		warnBreath:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(18173) then
		timerAdrenalineCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(18173) then
		timerAdrenaline:Start(args.destName)
		if self.Options.SetIconOnDebuffTarget2 then
			self:SetIcon(args.destName, self.vb.debuffIcon)
		end
		if args:IsPlayer() then
			specWarnAdrenaline:Show()
			specWarnAdrenaline:Play("targetyou")
			yellAdrenaline:Yell()
			specWarnAdrenalineOut:Schedule(15)
			specWarnAdrenalineOut:ScheduleVoice(15, "runout")
			yellAdrenalineFades:Countdown(20)
		else
			warnAdrenaline:Show(args.destName)
		end
		self.vb.debuffIcon = self.vb.debuffIcon - 1
		if self.vb.debuffIcon == 5 then
			self.vb.debuffIcon = 8
		end
	elseif args:IsSpell(367987) then -- SoD/SoM adrenaile is stack-based, 15 is a good value to run out
		local amount = args.amount or 1
		if amount >= 15 and amount % 5 == 0 then -- Warn every 5 stacks at >= 15
			if args:IsPlayer() then
				specWarnAdrenalineOut:Show()
				specWarnAdrenalineOut:Play("runout")
				yellAdrenaline:Yell()
			end
		elseif amount == 1 then -- Warning when it gets started
			if args:IsPlayer() then
				specWarnAdrenaline:Show()
				specWarnAdrenaline:Play("targetyou")
			else
				warnAdrenaline:Show(args.destName)
			end
		elseif amount == 8 then -- Set icon a bit later
			self.vb.debuffIcon = self.vb.debuffIcon - 1
			if self.vb.debuffIcon == 5 then
				self.vb.debuffIcon = 8
			end
			if self.Options.SetIconOnDebuffTarget2 then
				self:SetIcon(args.destName, self.vb.debuffIcon)
			end
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(18173) then
		if args:IsPlayer() then
			specWarnAdrenalineOut:Cancel()
			specWarnAdrenalineOut:CancelVoice()
			yellAdrenalineFades:Cancel()
		end
		if self.Options.SetIconOnDebuffTarget2 then
			self:SetIcon(args.destName, 0)
		end
		timerAdrenaline:Stop(args.destName)
	end
end

--"<??> [CHAT_MSG_MONSTER_YELL] Too late, friends! Nefarius' corruption has taken hold...I cannot...control myself.\r\n#Vaelastrasz the Corrupt###Omegal##0#0##0#7803#nil#0#false#false#false#false",
--"<8.85 19:59:36> [CHAT_MSG_MONSTER_YELL] I beg you, mortals - FLEE! Flee before I lose all sense of control! The black fire rages within my heart! I MUST- release it! #Vaelastrasz the Corrupt###Adornment##0#0##0#13862#nil#0#false#false#
--"<28.25 19:59:55> [CHAT_MSG_MONSTER_YELL] FLAME! DEATH! DESTRUCTION! Cower, mortals before the wrath of Lord...NO - I MUST fight this! Alexstrasza help me, I MUST fight it! #Vaelastrasz the Corrupt###Adornment
--"<38.98 20:00:06> [ENCOUNTER_START] 611#Vaelastrasz the Corrupt#9#40", -- [152]
function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.Event or msg:find(L.Event) then
		--/run DBM:GetModByName("Vaelastrasz"):SendSync("PullRP")
		self:SendSync("PullRP")
	end
end

function mod:OnSync(msg)
	if msg == "PullRP" then
		timerCombatStart:Start()
	end
end
