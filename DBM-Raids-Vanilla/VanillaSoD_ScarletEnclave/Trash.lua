if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("SE_Trash", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")
mod:SetZone(2856)
mod.isTrashMod = true
mod.isTrashModBossFightAllowed = true -- ENCOUNTER_END is somewhat unreliable in this raud, see all the terrible 10min+ logs for random fights on WCL that are just trash

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 1232703 28547 1233069",
	"SPELL_CAST_SUCCESS 1227435",
	"SPELL_DAMAGE 1232703",
	"SPELL_MISSED 1232703",
	"DAMAGE_SHIELD 1232703",
	"DAMAGE_SHIELD_MISSED 1232703",
	"GOSSIP_SHOW",
	"UNIT_ENTERING_VEHICLE player",
	"UNIT_SPELLCAST_START_UNFILTERED",
	"SPELL_PERIODIC_DAMAGE 28547 1233069"
)


local flightTimer = mod:NewIntermissionTimer(0, nil, "%s", true, "FlightTimer", nil, "136106")
flightTimer.startLarge = true

-- Damage reflect
local specWarnShield			= mod:NewSpecialWarningReflect(1232703, nil, nil, nil, 1, 2)

-- Whirlwind, important for melees
local specWarnWhirlwind			= mod:NewSpecialWarningDodge(1232678, nil, nil, 2, 1, 8)
local timerWhirlwindCast		= mod:NewCastNPTimer(6, 1232678) -- 2 sec cast, 4 sec active, just stay away the whole time

-- Balnazzar kill RP, this starts a ~2.5 seconds after ENCOUNTER_END fires so don't move this to the Balnazzar mod, otherwise it gets caught by delayed stop
local timerBalnazzarRP = mod:NewIntermissionTimer(48.2, 1227435)

-- NewGTFO() somehow doesn't work, use old way until i figure out what's wrong here
-- Consecration
--mod:NewGtfo{antiSpam = 5, spell = 1233069}
-- Blizzard, uses old spell ID from Sapphiron
--mod:NewGtfo{antiSpam = 5, spell = 28547}
local specWarnGTFO	= mod:NewSpecialWarningGTFO(28547, nil, nil, nil, 1, 8)

function mod:ShowGtfo(spellName)
	if self:AntiSpam(3, "GTFO", spellName) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(1227435) then
		timerBalnazzarRP:Start()
	end
end


function mod:WarnReflect(name)
	if self:AntiSpam(10, "Shield") then
		specWarnShield:Show(name)
		specWarnShield:Play("stopattack")
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1232703) and args.destGUID == UnitGUID("target") and DBM:IsMelee("player") then
		self:WarnReflect(args.destName)
	elseif args:IsSpell(28547, 1233069) and args:IsPlayer() then
		self:ShowGtfo(args.spellName)
	end
end

-- Using UNIT_ events to filter this on nameplate range (which is just 20 yard)
function mod:UNIT_SPELLCAST_START_UNFILTERED(uId, _, spellId)
	if spellId == 1232678 and uId:match("^nameplate") then
		if self:AntiSpam(3, "Whirlwind") then
			specWarnWhirlwind:Show()
			specWarnWhirlwind:Play("whirlwind")
		end
		timerWhirlwindCast:Start(nil, UnitGUID(uId))
	end
end

local playerGuid = UnitGUID("player")
function mod:SPELL_DAMAGE(_, sourceName, _, _, destGUID, _, _, _, spellId)
	if spellId == 1232703 and destGUID == playerGuid then
		self:WarnReflect(sourceName)
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE
mod.DAMAGE_SHIELD = mod.SPELL_DAMAGE
mod.DAMAGE_SHIELD_MISSED = mod.SPELL_DAMAGE

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if (spellId == 28547 or spellId == 1233069) and destGUID == playerGuid then
		self:ShowGtfo(spellName)
	end
end

local lastGossipOptions, lastGossipSelected
function mod:GOSSIP_SHOW(...)
	lastGossipOptions = C_GossipInfo.GetOptions()
end

function mod:UNIT_ENTERING_VEHICLE(uId)
	if UnitIsUnit(uId, "player") then
		if lastGossipSelected then
			-- flight times are until you hit the ground
			if lastGossipSelected == 133549 then
				flightTimer:Start(19.2, L.CentralTower)
			elseif lastGossipSelected == 133775 then
				flightTimer:Start(12.8, L.Prison) -- 11.17 flight time, but you drop from somewhat high in the air
			elseif lastGossipSelected == 133547 then
				flightTimer:Start(26.7, L.Cathedral)
			end
		end
		lastGossipSelected = nil
	end
end

local function gossipHookByIndex(index)
	if lastGossipOptions and lastGossipOptions[index] and lastGossipOptions[index] then
		lastGossipSelected = lastGossipOptions[index].gossipOptionID
	end
end

local function gossipHookByOptionId(optionId)
	lastGossipSelected = optionId
end

local function gossipHookByOrderIndex(orderIndex)
	if lastGossipOptions then
		for _, v in ipairs(lastGossipOptions) do
			if v.orderIndex == orderIndex then
				lastGossipSelected = v.gossipOptionID
				return
			end
		end
	end
end

hooksecurefunc("SelectGossipOption", gossipHookByIndex)
hooksecurefunc(C_GossipInfo, "SelectOption", gossipHookByOptionId)
hooksecurefunc(C_GossipInfo, "SelectOptionByIndex", gossipHookByOrderIndex)
