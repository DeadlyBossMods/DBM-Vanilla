local mod	= DBM:NewMod("MaexxnaVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260419000000) -- 2026, April 19th
mod:DisableHardcodedOptions()
mod:SetCreatureID(15952)
mod:SetEncounterID(1116)
mod:SetModelID(15928)
mod:SetZone(533)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 28622 28747",
	"SPELL_CAST_SUCCESS 29484"
)

local warnWebWrap		= mod:NewTargetAnnounce(28622, 2, nil, "RangedDps|Healer")
local warnWebSprayNow	= mod:NewSpellAnnounce(29484, 4)
local warnWebSpraySoon	= mod:NewSoonAnnounce(29484, 3)
local warnSpidersSoon	= mod:NewAnnounce("WarningSpidersSoon", 2, 17332)
local warnSpidersNow	= mod:NewAnnounce("WarningSpidersNow", 4, 17332)
local warnEnrage 		= mod:NewSpellAnnounce(28747, 4)
local warnEnrageSoon	= mod:NewSoonAnnounce(28747, 2)

local specWarnWebWrap	= mod:NewSpecialWarningSwitch(28622, "RangedDps|Healer", nil, 2, 1, 2)
local yellWebWrap		= mod:NewYell(28622)

local timerWebSpray		= mod:NewNextTimer(40.5, 29484, nil, nil, nil, 2)
local timerWebWrap		= mod:NewVarTimer("v39.6-40.9", 28622, nil, "RangedDps|Healer", nil, 3)
local timerSpider		= mod:NewTimer(30.7, "TimerSpider", 17332, nil, nil, 1)

mod.vb.warnEnrageSoon = false

function mod:OnCombatStart()
	self.vb.warnEnrageSoon = false
	warnWebSpraySoon:Schedule(35.5)
	timerWebSpray:Start()
	timerWebWrap:Start("v18.2-20.1")
	warnSpidersSoon:Schedule(25.7)
	warnSpidersNow:Schedule(30.7)
	timerSpider:Start()
	self:RegisterShortTermEvents(
		"UNIT_HEALTH"
	)
end

function mod:OnCombatEnd()
	self:UnregisterShortTermEvents()
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(28622) then
		warnWebWrap:CombinedShow(0.5, args.destName)
		if args.destName == UnitName("player") then
			specWarnWebWrap:Cancel()
			specWarnWebWrap:CancelVoice()
			yellWebWrap:Yell()
		elseif self:AntiSpam(3, 1) then
			specWarnWebWrap:Schedule(0.5)
			specWarnWebWrap:ScheduleVoice(0.5, "targetchange")
			timerWebWrap:Start()
		end
	elseif args:IsSpell(28747) then
		warnEnrage:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(29484)then -- Web Spray
		warnWebSprayNow:Show()
		warnWebSpraySoon:Schedule(35.5)
		timerWebSpray:Start()
		warnSpidersSoon:Schedule(25)
		warnSpidersNow:Schedule(30)
		timerSpider:Start()
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) == 15952 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.35 then
		self:SendSync("EnrageSoon")
		self:UnregisterShortTermEvents()
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "EnrageSoon" and not self.vb.warnEnrageSoon then
		self.vb.warnEnrageSoon = true
		warnEnrageSoon:Show()
	end
end
