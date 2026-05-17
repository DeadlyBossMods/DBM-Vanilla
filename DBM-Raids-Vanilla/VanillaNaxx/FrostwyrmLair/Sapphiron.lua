local mod	= DBM:NewMod("SapphironVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260419000000) -- 2026, April 19th
mod:DisableHardcodedOptions()
mod:SetCreatureID(15989)
mod:SetEncounterID(1119)
--mod:SetModelID(16033)--Scales incorrectly
mod:SetZone(533)
mod:SetUsedIcons(3, 6)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 28522 28547 1219729 1219732",
	"SPELL_CAST_START 28524",
	"SPELL_CAST_SUCCESS 28542"
)

--[[
ability.id = 28524 and type = "begincast"
 or (ability.id = 28542 or ability.id = 28560) and type = "cast"
--]]
local airPhaseTimer = "v54.3-69.1"

local warnDrainLifeNow	= mod:NewSpellAnnounce(28542, 2)
local warnDrainLifeSoon	= mod:NewSoonAnnounce(28542, 1, nil, "RemoveCurse")
local warnIceBlock
if DBM:IsSeasonal("SeasonOfDiscovery") then
	warnIceBlock		= mod:NewTargetCountAnnounce(28522, 2)
	warnIceBlock.noFilter = true
else
	warnIceBlock		= mod:NewTargetNoFilterAnnounce(28522, 2)
end
local warnAirPhaseSoon	= mod:NewAnnounce("WarningAirPhaseSoon", 3, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warnAirPhaseNow	= mod:NewAnnounce("WarningAirPhaseNow", 4, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp")
local warnLanded		= mod:NewAnnounce("WarningLanded", 4, "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp")

local warnBlizzard		= mod:NewSpecialWarningGTFO(28547, nil, nil, nil, 1, 8)
local warnFrostBreath	= mod:NewSpecialWarningSpell(28524, nil, nil, nil, 3, 2)
local yellIceBlock		= mod:NewYell(28522)

local timerDrainLife	= mod:NewVarTimer("v21.1-27.5", 28542, nil, "RemoveCurse", nil, 3, nil, DBM_COMMON_L.CURSE_ICON)
local timerAirPhase		= mod:NewTimer(airPhaseTimer, "TimerAir", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp", nil, nil, 6)
local timerLanding		= mod:NewTimer(DBM:IsSeasonal("SeasonOfDiscovery") and 36 or 28.5, "TimerLanding", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp", nil, nil, 6)
local timerFrostBreath 	= mod:NewCastTimer(7, 28524, nil, nil, nil, 2, "135833", DBM_COMMON_L.DEADLY_ICON, true, 1, 5) -- Using the icon for Frost Breath for later expansions since Era default is Samwise icon

local timerBomb, specWarnBomb, specWarnBombSoak, yellBomb, yellBombFades
if DBM:IsSeasonal("SeasonOfDiscovery") then
	timerBomb			= mod:NewNextTimer(30.75, 1219729)
	specWarnBomb		= mod:NewSpecialWarningYou(1219729, nil, nil, nil, 3, 12)
	specWarnBombSoak	= mod:NewSpecialWarningSoak(1219729, nil, nil, nil, 2, 12)
	yellBomb			= mod:NewYell(1219729)
	yellBombFades		= mod:NewShortFadesYell(1219729)
mod:AddSetIconOption("SetIconOnBombTarget", 1219729, true, 0, {3, 6})
end

local berserkTimer		= mod:NewBerserkTimer(900)

local noTargetTime = 0
mod.vb.isFlying = false
mod.vb.iceBlocks = 0
local UnitAffectingCombat = UnitAffectingCombat
local isMythic = select(5, DBM:GetCurrentInstanceDifficulty()) == 4

local function resetIsFlying(self)
	self.vb.isFlying = false
end

local function Landing()
	mod.vb.iceBlocks = 0
	if isMythic or DBM:IsSeasonal("SeasonOfDiscovery") then
	warnAirPhaseSoon:Schedule(airPhaseTimer - 10)
	else
	warnAirPhaseSoon:Schedule(50)
	end
	warnLanded:Show()
	timerAirPhase:Start(airPhaseTimer)
	if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:Schedule(airPhaseTimer + 1, timerBomb.Stop, timerBomb)
	end
end

function mod:OnCombatStart()
	noTargetTime = 0
	self.vb.isFlying = false
	self.vb.iceBlocks = 0
	self:RegisterShortTermEvents(
		"UNIT_HEALTH"
	)
	-- TODO: confirm this, it seems to have changed with the Mythic hot fixes for both mythic and normal?
	local initialAirPhaseTimer = isMythic and 39.66 or DBM:IsSeasonal("SeasonOfDiscovery") and 31 or "v32.9-45.9" -- Air phase timer is variable on Era
	if isMythic or DBM:IsSeasonal("SeasonOfDiscovery") then
	warnAirPhaseSoon:Schedule(initialAirPhaseTimer - 10)
	else
	warnAirPhaseSoon:Schedule(30)
	end
	timerAirPhase:Start(initialAirPhaseTimer)
	berserkTimer:Start(900)
	if DBM:IsSeasonal("SeasonOfDiscovery") then -- FIXME: should filter for mythic, but I don't trust the current detection logic
		timerBomb:Start(30.75)
		self:Schedule(initialAirPhaseTimer + 1, timerBomb.Stop, timerBomb)
	end
	self:RegisterOnUpdateHandler(function(self, elapsed)
		if not self:IsInCombat() then return end
		local foundBoss, target
		for uId in DBM:GetGroupMembers() do
			local unitID = uId.."target"
			if self:GetUnitCreatureId(unitID) == 15989 and UnitAffectingCombat(unitID) then
				target = DBM:GetUnitFullName(unitID.."target")
				foundBoss = true
				break
			end
		end
		if foundBoss and not target then
			noTargetTime = noTargetTime + elapsed
		elseif foundBoss then
			noTargetTime = 0
		end
		--Timers don't appear right for classic, close but might need some slight tweaking
		if noTargetTime > 0.5 and not self.vb.isFlying then
			noTargetTime = 0
			self.vb.isFlying = true
			self:Schedule(60, resetIsFlying, self)
			timerDrainLife:Cancel()
			warnDrainLifeSoon:Cancel()
			timerAirPhase:Cancel()
			warnAirPhaseNow:Show()
			timerLanding:Start()--28.5 (seems mostly right)
		end
	end, 0.2)
end

function mod:OnCombatEnd()
	self:UnregisterOnUpdateHandler()
	self:UnregisterShortTermEvents()
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(28522) and args:IsDestTypePlayer() then
		self.vb.iceBlocks = self.vb.iceBlocks + 1
		if DBM:IsSeasonal("SeasonOfDiscovery") then -- They're a few seconds apart on SoD and she lands after 5
			---@diagnostic disable-next-line: param-type-mismatch
			warnIceBlock:Show(self.vb.iceBlocks, args.destName)
		else -- I don't remember how it worked on Era back in the day, but the combined show may be redundant
			warnIceBlock:CombinedShow(0.5, args.destName)
		end
		if args:IsPlayer() then
			yellIceBlock:Yell()
		end
	elseif args:IsSpell(28547) and args:IsPlayer() then
		warnBlizzard:Show(args.spellName)
		warnBlizzard:Play("watchfeet")
	elseif args:IsSpell(1219729, 1219732) then -- Both trigger at the same time, it's just an odd implementation of a multi-target bomb
		timerBomb:Start()
		if args:IsPlayer() then
			specWarnBomb:Show()
			specWarnBomb:Play("bombyou")
			yellBomb:Yell()
			yellBombFades:Countdown(8, 5)
		elseif self:AntiSpam(1, "Bomb") then
			specWarnBombSoak:Show()
			specWarnBombSoak:Play("helpsoak")
		end
		if self.Options.SetIconOnBombTarget then
			self:SetIcon(args.destName, args:IsSpell(1219729) and 3 or 6)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(28524) and args:IsSrcTypeHostile() then -- Frost Breath
		timerFrostBreath:Start()
		timerLanding:Update(16.3, 28.5)--Probably not even needed, if base timer is more accurate
		self:Schedule(12.2, Landing, self)
		warnFrostBreath:Show()
		warnFrostBreath:Play("findshelter")
		if DBM:IsSeasonal("SeasonOfDiscovery") then
		timerBomb:Start(14.9) -- TODO: confirm this
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(28542) and args:IsSrcTypeHostile() then -- Life Drain
		warnDrainLifeNow:Show()
		warnDrainLifeSoon:Schedule(18.5)
		timerDrainLife:Start()
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) == 15989 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.10 then
		self:SendSync("CancelAirPhaseTimer")
		self:UnregisterShortTermEvents()
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "CancelAirPhaseTimer" and timerAirPhase:IsStarted() then
		warnAirPhaseSoon:Cancel()
		timerAirPhase:Stop()
	end
end