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
local mod	= DBM:NewMod("Chromaggus", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(14020)
mod:SetEncounterID(616)
mod:SetModelID(14367)
mod:SetZone(469)

mod:RegisterCombat("combat")
mod:SetWipeTime(20) -- ENCOUNTER_START triggers when you pull the lever, but it can take a bit until your group is in combat

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 23308 23309 23313 23314 23187 23189 23315 23316 23310 23312",
	"SPELL_CAST_SUCCESS 467883 468594",
	"SPELL_AURA_APPLIED 23155 23169 23153 23154 23170 23128 23537 22277 22278 22279 22280 22281",
	"SPELL_AURA_REMOVED 23155 23169 23153 23154 23170 23128",
	"UNIT_HEALTH",
	"CHAT_MSG_MONSTER_EMOTE"
)

--(ability.id = 23309 or ability.id = 23313 or ability.id = 23189 or ability.id = 23315 or ability.id = 23312 or ability.id = 23314) and type = "begincast"
local warnBreath		= mod:NewAnnounce("WarnBreath", 2, 23316)
local warnRed			= mod:NewSpellAnnounce(23155, 2, nil, false)
local warnGreen			= mod:NewSpellAnnounce(23169, 2, nil, false)
local warnBlue			= mod:NewSpellAnnounce(23153, 2, nil, false)
local warnBlack			= mod:NewSpellAnnounce(23154, 2, nil, false)
local warnFrenzy		= mod:NewSpellAnnounce(23128, 3, nil, "Tank|RemoveEnrage|Healer", 4)
local warnPhase2Soon	= mod:NewPrePhaseAnnounce(2, 1)
local warnPhase2		= mod:NewPhaseAnnounce(2)
local warnMutation		= mod:NewCountAnnounce(23174, 4) ---@type Announce -- string as count in :Show() is unusual but valid
local warnVuln			= mod:NewAnnounce("WarnVulnerable", 1, nil, nil, "WarnVulnerableNew")
local warnRollOverSoon	= mod:NewSoonAnnounce(468199)
local warnRollOver		= mod:NewSpellAnnounce(468199)
local warnFetch			= mod:NewSpellAnnounce(467884)

local specWarnBronze		= mod:NewSpecialWarningYou(23170, nil, nil, nil, 1, 8)
local specWarnFrenzy		= mod:NewSpecialWarningDispel(23128, "RemoveEnrage", nil, nil, 1, 6)
local specWarnBreathSoon	= mod:NewSpecialWarningSoon(17087)

local timerBreath		= mod:NewTimer(2, "TimerBreath", 23316, nil, nil, 3)
local timerBreathCD		= mod:NewTimer(60, "TimerBreathCD", 23316, nil, nil, 3)
local timerAllBreaths	= mod:NewTimer(80, "TimerAllBreaths", 23316, nil, nil, 3)
local timerFrenzy		= mod:NewBuffActiveTimer(8, 23128, nil, "Tank|RemoveEnrage|Healer", 3, 5, nil, DBM_COMMON_L.TANK_ICON..DBM_COMMON_L.ENRAGE_ICON)
local timerVuln			= mod:NewTimer(19.5, "TimerVulnCD", nil, nil, nil, nil, nil, true) -- seen 16.94 - 25.53, avg 21.8; extreme outliers are somewhat rare, so going for 19.5
local timerFetch		= mod:NewCDTimer(40, 467884)
local timerRollOver		= mod:NewBuffActiveTimer(16, 468199)

mod:AddNamePlateOption("NPAuraOnVulnerable", 22277)
mod:AddInfoFrameOption(22277, true)

local mydebuffs = 0

local lastVulnName = nil
local bossGuid = ""


--Constants
-- https://wow.gamepedia.com/COMBAT_LOG_EVENT
local spellInfo = {
	[2] =	{"Holy",	{r=255 / 255, g=230 / 255, b=128 / 255},	"135924"},-- Smite
	[4] =	{"Fire",	{r=255 / 255, g=128 / 255, b=0 / 255},		"135808"},-- Pyroblast
	[8] =	{"Nature",	{r=77 / 255, g=255 / 255, b=77 / 255},		"136006"},-- Wrath
	[16] =	{"Frost",	{r=128 / 255, g=255 / 255, b=255 / 255},	"135846"},-- Frostbolt
	[32] =	{"Shadow",	{r=128 / 255, g=128 / 255, b=255 / 255},	"136197"},-- Shadow Bolt
	[64] =	{"Arcane",	{r=255 / 255, g=128 / 255, b=255 / 255},	"136096"},-- Arcane Missiles
}

local vulnSpells = {
	--No Holy?
	[22277] = 4,
	[22280] = 8,
	[22278] = 16,
	[22279] = 32,
	[22281] = 64,
}

-- SoD vulnerabilities
-- Seem to last 19 to 22 seconds, outliers are somewhat rare (likely related to casting other stuff)
-- ~20 second timer with "keep" is good
-- They are logged with SPELL_AURA_APPLIED if someone has detect magic up, so let's just rely on that and nothing else

local updateInfoFrame
do
	local twipe = table.wipe
	local lines, sortedLines = {}, {}
	local function addLine(key, value)
		-- sort by insertion order
		lines[key] = value
		sortedLines[#sortedLines + 1] = key
	end
	updateInfoFrame = function()
		twipe(lines)
		twipe(sortedLines)
		if lastVulnName then
			addLine(lastVulnName, "")
		end
		return lines, sortedLines
	end
end

local lastIcon

local function updateVulnerability(self, spellId)
	local spellSchool = vulnSpells[spellId]
	local info = spellInfo[spellSchool]
	if not info then return end
	local name = L[info[1]] or info[1]

	timerVuln:SetColor(info[2])
	timerVuln:UpdateIcon(info[3])
	timerVuln:UpdateName(name)
	if not lastVulnName or lastVulnName ~= name then
		---@diagnostic disable-next-line: inject-field
		warnVuln.icon = info[3]
		warnVuln:Show(name)
		lastVulnName = name
		if self.Options.InfoFrame then
			if not DBM.InfoFrame:IsShown() then
				DBM.InfoFrame:SetHeader(L.Vuln)
				DBM.InfoFrame:Show(1, "function", updateInfoFrame, false, false, true)
			else
				DBM.InfoFrame:Update()
			end
		end
		if self.Options.NPAuraOnVulnerable then
			local icon = tonumber(info[3])
			if icon ~= lastIcon then
				-- FIXME: there is some kind of bug that breaks nameplate icons if you try to remove the same that you add in a frame (?)
				if lastIcon then DBM.Nameplate:Hide(true, bossGuid, 22277, lastIcon) end
				DBM.Nameplate:Show(true, bossGuid, 22277, icon, nil, nil, true)
				lastIcon = icon
			end
		end
	end
end

local function checkTargetVulnerabilities(self)
	local target = UnitGUID("target")
	local cid = self:GetCIDFromGUID(target)
	if cid ~= 14020 then
		return
	end

	local spellId = select(10, DBM:UnitBuff("target", 22277, 22280, 22278, 22279, 22281))
	updateVulnerability(self, spellId)
end

local nextBreath, nextVolley, volleyCount = 0, 0, 0
local rolloverWarnShown
function mod:OnCombatStart(delay)
	self:SetStage(1)
	rolloverWarnShown = false
	nextBreath = GetTime() + 30 - delay
	nextVolley = GetTime() + 40 - delay
	volleyCount = 0
	timerBreathCD:Start(30-delay, L.Breath1)
	timerBreathCD:Start(60-delay, L.Breath2)--60
	specWarnBreathSoon:Schedule(27-delay) -- +2 sec casting time == you got 5 seconds to run
	specWarnBreathSoon:Schedule(57-delay)
	mydebuffs = 0
	if self.Options.NPAuraOnVulnerable then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
	end
	checkTargetVulnerabilities(self)
	if self:IsBwlBlackEssenceEnabled() then
		timerFetch:Start(20.9-delay)
		timerAllBreaths:Start(40-delay)
		specWarnBreathSoon:Schedule(37-delay)
	end
end

function mod:OnCombatEnd()
	if self.Options.NPAuraOnVulnerable  then
		DBM.Nameplate:Hide(true, nil, nil, nil, true, true)--isGUID, unit, spellId, texture, force, isHostile, isFriendly
	end
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(467883) then
		warnFetch:Show()
		timerFetch:Start()
	elseif args:IsSpell(468594) then
		timerRollOver:Start()
		warnRollOver:Show()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(23308, 23309, 23313, 23314, 23187, 23189, 23315, 23316, 23310, 23312) then
		warnBreath:Show(args.spellName)
		timerBreath:Start(2, args.spellName)
		timerBreath:UpdateIcon(args.spellId)
		-- Is part of a volley or regular breath? This is bit messy to reconstruct :/
		local nextBreathOffset = math.abs(GetTime() - nextBreath)
		local nextVolleyOffset = math.abs(GetTime() - nextVolley)
		if (nextBreathOffset < nextVolleyOffset and volleyCount == 0) or not self:IsBwlBlackEssenceEnabled() then -- Regular breath
			timerBreathCD:Start(60, args.spellName)
			timerBreathCD:UpdateIcon(args.spellId)
			nextBreath = GetTime() + 30
			specWarnBreathSoon:Schedule(57)
		else -- part of a volley
			if volleyCount == 0 then
				nextVolley = GetTime() + 80
				timerAllBreaths:Start()
			end
			volleyCount = volleyCount + 1
			if volleyCount == 5 then
				volleyCount = 0
			end
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(23155) and self:AntiSpam(3, 1) then
		bossGuid = args.sourceGUID
		if self:AntiSpam(3, 3) then
			warnRed:Show()
		end
		if args:IsPlayer() then
			mydebuffs = mydebuffs + 1
			if mydebuffs >= 3 then
				warnMutation:Show(mydebuffs.."/5")
			end
		end
	elseif args:IsSpell(23169) and self:AntiSpam(3, 2) then
		bossGuid = args.sourceGUID
		if self:AntiSpam(3, 4) then
			warnGreen:Show()
		end
		if args:IsPlayer() then
			mydebuffs = mydebuffs + 1
			if mydebuffs >= 3 then
				warnMutation:Show(mydebuffs.."/5")
			end
		end
	elseif args:IsSpell(23153) and self:AntiSpam(3, 3) then
		bossGuid = args.sourceGUID
		if self:AntiSpam(3, 5) then
			warnBlue:Show()
		end
		if args:IsPlayer() then
			mydebuffs = mydebuffs + 1
			if mydebuffs >= 3 then
				warnMutation:Show(mydebuffs.."/5")
			end
		end
	elseif args:IsSpell(23154) and self:AntiSpam(3, 4) then
		bossGuid = args.sourceGUID
		if self:AntiSpam(3, 6) then
			warnBlack:Show()
		end
		if args:IsPlayer() then
			mydebuffs = mydebuffs + 1
			if mydebuffs >= 3 then
				warnMutation:Show(mydebuffs.."/5")
			end
		end
	elseif args:IsSpell(23170) and args:IsPlayer() then
		bossGuid = args.sourceGUID
		specWarnBronze:Show()
		specWarnBronze:Play("useitem")
		mydebuffs = mydebuffs + 1
		if mydebuffs >= 3 then
			warnMutation:Show(mydebuffs.."/5")
		end
	elseif args:IsSpell(23128) and args:IsDestTypeHostile() then
		if self.Options.SpecWarn23128dispel then
			specWarnFrenzy:Show(args.destName)
			specWarnFrenzy:Play("enrage")
		else
			warnFrenzy:Show()
		end
		timerFrenzy:Start()
	elseif args:IsSpell(23537) and args:IsDestTypeHostile() then
		if self.vb.phase < 2 then
			self:SetStage(2)
			warnPhase2:Show()
		end
	elseif args:IsSpell(22277, 22278, 22279, 22280, 22281) then
		bossGuid = args.destGUID
		timerVuln:Start()
		updateVulnerability(self, args.spellId)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(23128) and args:IsPlayer() then
		mydebuffs = mydebuffs - 1
	elseif args:IsSpell(23169) and self:AntiSpam(3, 2) and args:IsPlayer() then
		mydebuffs = mydebuffs - 1
	elseif args:IsSpell(23153) and self:AntiSpam(3, 3) and args:IsPlayer() then
		mydebuffs = mydebuffs - 1
	elseif args:IsSpell(23154) and self:AntiSpam(3, 4) and args:IsPlayer() then
		mydebuffs = mydebuffs - 1
	elseif args:IsSpell(23170) and args:IsPlayer() then
		mydebuffs = mydebuffs - 1
	elseif args:IsSpell(23128) and args:IsDestTypeHostile() then
		timerFrenzy:Stop()
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) ~= 14020 then
		return
	end
	local health = UnitHealth(uId) / UnitHealthMax(uId)
	if health <= 0.25 and self.vb.phase == 1 then
		warnPhase2Soon:Show()
		self:SetStage(1.5)
	elseif health <= 0.65 and health >= 0.6 and self:IsBwlBlackEssenceEnabled() and not rolloverWarnShown then
		warnRollOverSoon:Show()
		rolloverWarnShown = true
	end
end

function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if (msg == L.VulnEmote or msg:find(L.VulnEmote)) then
		self:SendSync("Vulnerable")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "Vulnerable" then
		if not timerVuln:IsStarted() then
			timerVuln:Start()
			checkTargetVulnerabilities(self)
		end
	end
end
