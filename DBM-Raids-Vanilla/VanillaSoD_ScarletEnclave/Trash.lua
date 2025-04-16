if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("SE_Trash", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")
mod:SetZone(2856)
mod.isTrashMod = true

mod:RegisterEvents(
	"SPELL_AURA_APPLIED 1232703",
	"SPELL_CAST_START 1232703 1232678",
	"SPELL_DAMAGE 1232703",
	"SPELL_MISSED 1232703",
	"DAMAGE_SHIELD 1232703",
	"DAMAGE_SHIELD_MISSED 1232703",
	"GOSSIP_SHOW",
	"UNIT_ENTERING_VEHICLE player"
)

local flightTimer = mod:NewIntermissionTimer(0, nil, "%s", true, "FlightTimer", nil, "136106")
flightTimer.startLarge = true

-- Damage reflect, can be interrupted
local specWarnShieldInterrupt	= mod:NewSpecialWarningInterrupt(1232703, nil, nil, nil, 1, 2)
local specWarnShield			= mod:NewSpecialWarningReflect(1232703, nil, nil, nil, 1, 2)

-- Whirlwind, important for melees
local specWarnWhirlwind			= mod:NewSpecialWarningDodge(1232678, "Melee", nil, nil, 1, 8)
local timerWhirlwindCast		= mod:NewCastNPTimer(2, 1232678)

-- Consecration
mod:NewGtfo{antiSpam = 5, spell = 1233069, spellAura = 1233069, spellPeriodicDamage = 1233069}

function mod:WarnReflect(name)
	if self:AntiSpam(10, "Shield") then
		specWarnShield:Show(name)
		specWarnShield:Play("stopattack")
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1232703) and args.destGUID == UnitGUID("target") and DBM:IsMelee("player") then
		self:WarnReflect(args.destName)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1232703) then
		if self:CheckInterruptFilter(args.sourceGUID, nil, true) then
			specWarnShieldInterrupt:Show(args.sourceName)
			specWarnShieldInterrupt:Play("kickcast")
		end
	elseif args:IsSpell(1232678) then
		specWarnWhirlwind:Show()
		specWarnWhirlwind:Play("whirlwind")
		timerWhirlwindCast:Start(args.sourceGUID)
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
