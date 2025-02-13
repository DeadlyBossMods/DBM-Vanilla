local mod	= DBM:NewMod("SapphironVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(15989)
mod:SetEncounterID(1119)
--mod:SetModelID(16033)--Scales incorrectly
mod:SetZone(533)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 28522 28547",
	"SPELL_CAST_START 28524",
	"SPELL_CAST_SUCCESS 28542"--55665 Wrath spellId
)


--[[
ability.id = 28524 and type = "begincast"
 or (ability.id = 28542 or ability.id = 28560) and type = "cast"
--]]
--TODO, air phase and landing better detection from transcriptor, timer adjustments
local warnDrainLifeNow	= mod:NewSpellAnnounce(28542, 2)
local warnDrainLifeSoon	= mod:NewSoonAnnounce(28542, 1)
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
local warnDeepBreath	= mod:NewSpecialWarning("WarningDeepBreath", nil, nil, nil, 1, 2)
local yellIceBlock		= mod:NewYell(28522)

local timerDrainLife	= mod:NewCDTimer(22, 28542, nil, nil, nil, 3, nil, DBM_COMMON_L.CURSE_ICON)
local timerAirPhase		= mod:NewTimer(66, "TimerAir", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendUnBurrow.blp", nil, nil, 6)--80?
local timerLanding		= mod:NewTimer(28.5, "TimerLanding", "Interface\\AddOns\\DBM-Core\\textures\\CryptFiendBurrow.blp", nil, nil, 6)
local timerIceBlast		= mod:NewTimer(7, "TimerIceBlast", 15876, nil, nil, 2, DBM_COMMON_L.DEADLY_ICON)

local berserkTimer		= mod:NewBerserkTimer(900)

mod:AddRangeFrameOption(10, 28522)

local noTargetTime = 0
mod.vb.isFlying = false
mod.vb.iceBlocks = 0
local UnitAffectingCombat = UnitAffectingCombat

local function resetIsFlying(self)
	self.vb.isFlying = false
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
end

local initialAirPhaseTimer = DBM:IsSeasonal("SeasonOfDiscovery") and 33.24 or 48.5
local airPhaseTimer = DBM:IsSeasonal("SeasonOfDiscovery") and 59.6 or 66

local function Landing()
	mod.vb.iceBlocks = 0
	warnAirPhaseSoon:Schedule(airPhaseTimer - 10)
	warnLanded:Show()
	timerAirPhase:Start(airPhaseTimer)
end

function mod:OnCombatStart(delay)
	noTargetTime = 0
	self.vb.isFlying = false
	self.vb.iceBlocks = 0
	warnAirPhaseSoon:Schedule(initialAirPhaseTimer - 10 - delay)
	timerAirPhase:Start(initialAirPhaseTimer - delay)
	berserkTimer:Start(900-delay)
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
			if self.Options.RangeFrame then
				DBM.RangeCheck:Show(10)
			end
		end
	end, 0.2)
end

function mod:OnCombatEnd()
	if self.Options.RangeFrame then
		DBM.RangeCheck:Hide()
	end
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
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(28524) and args:IsSrcTypeHostile() then -- Frost Breath
		timerIceBlast:Start()
		timerLanding:Update(16.3, 28.5)--Probably not even needed, if base timer is more accurate
		self:Schedule(12.2, Landing, self)
		warnDeepBreath:Show()
		warnDeepBreath:Play("findshelter")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(28542) and args:IsSrcTypeHostile() then -- Life Drain
		warnDrainLifeNow:Show()
		warnDrainLifeSoon:Schedule(18.5)
		timerDrainLife:Start()
	end
end
