if not DBM:IsSeasonal("SeasonOfDiscovery") then return end
local mod	= DBM:NewMod("MoltenCore", "DBM-Raids-Vanilla", 6)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(227939)
mod:SetEncounterID(3018)
mod:RegisterCombat("combat")
mod:SetUsedIcons(1, 2)

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 460890 460898 460895",
	"SPELL_AURA_APPLIED_DOSE 460890",
	"SPELL_AURA_REMOVED 460898 460895",
	"SPELL_CAST_SUCCESS 462619 460883 462778 462779 462780",
	"UNIT_POWER_UPDATE"
)

-- Meteor
-- Different spell IDs for Meteor probably different number of Meteors? But what does it depend on, Energy?
-- Only got 460883 and 462778 in our kill, a longer wipe log also has 462779 and 462780
-- Timer seems to be between 11 and 18 seconds, so rather useless. The 18 second outliers may be related to Harmonic Tremor
-- Targets for meteor seem unreliable, it sometimes definitely targets the target of Meteor, but I think this may be related to it applying Conflagration?
-- Sometimes it's just
-- 	"<656.47 21:07:32> [UNIT_SPELLCAST_SUCCEEDED] The Molten Core(51.8%-89.6%){Target:??} -Meteor- [[target:Cast-3-5208-409-31544-462780-0001C4E974:462780]]",
--
-- But other times it looks like it clearly targets the target
-- "<439.91 21:03:55> [UNIT_TARGET] target#The Molten Core#Target: Zugzugmedumb#TargetOfTarget: Primal Flame Elemental",
-- "<441.26 21:03:57> [UNIT_SPELLCAST_SUCCEEDED] The Molten Core(73.9%-12.1%){Target:Zugzugmedumb} -Meteor- [[target:Cast-3-5208-409-31544-460883-001A44E89C:460883]]",
-- "<441.26 21:03:57> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5208-409-31544-227939-000044E81F#The Molten Core##nil#460883#Meteor#nil#nil#nil#nil#nil#nil",
-- "<441.26 21:03:57> [UNIT_TARGET] target#The Molten Core#Target: Mafakacoil#TargetOfTarget: Primal Flame Elemental", (tank)

-- Harmonic Tremor
-- Doesn't seem useful to warn for

-- Conjure Flame
-- Timer seems too random to be useful
-- "Conjure Flame-462619-npc:227939-000044E81F = pull:28.7, 34.4, 32.4, 35.6, 27.5, 29.1, 35.6, 40.4, 45.3, 40.5", (wipe)
-- "Conjure Flame-462619-npc:227939-000044DE3B = pull:30.5, 25.9, 35.6", (wipe)
-- "Conjure Flame-462619-npc:227939-000044EDFC = pull:27.9, 35.2, 35.6", (kill)

local warnMeltArmor		= mod:NewStackAnnounce(460890, 2)
local warnAdds			= mod:NewSpellAnnounce(462619, 2)
local warnMeteor		= mod:NewSpellAnnounce(460883, 3, 364844) -- Actual Meteor Spells don't have a real icon, this is some fire ball icon
local warnBossPower		= mod:NewAnnounce("WarnBossPower", 2, 29166)

-- "<278.47 23:00:13> [CLEU] SPELL_AURA_APPLIED#Player-5826-026A3C71#Zred#Player-5826-026A3C71#Zred#460898#Heart of Ash#DEBUFF#nil#nil#nil#nil#nil",
-- "<278.47 23:00:13> [CLEU] SPELL_AURA_APPLIED#Player-5826-01FA1F88#Glassy#Player-5826-01FA1F88#Glassy#460895#Heart of Cinder#DEBUFF#nil#nil#nil#nil#nil",
-- only have limited data, but might be on a 35 second cooldown and happen first at about 20 second after pull
local timerHearts		= mod:NewCDTimer(35, 460898)
local warnHearts		= mod:NewTargetNoFilterAnnounce(460898, 4)
local specWarnHeart		= mod:NewSpecialWarningMoveTo(460898, nil, nil, nil, 3, 2)
local yellHeart			= mod:NewIconTargetYell(460898, nil, nil, nil, "YELL")
local yellHeartCleared	= mod:NewYell(460898, DBM_COMMON_L.CLEAR, true, "YellHeartCleared", "YELL")

local ashTarget, cinderTarget

local shownPowerWarnings = {}

function mod:OnCombatStart(delay)
	ashTarget = nil
	cinderTarget = nil
	table.wipe(shownPowerWarnings)
	timerHearts:Start(20 - delay)
end

function mod:FoundBothHeartTargets()
	if ashTarget == UnitName("player") then
		specWarnHeart:Show(cinderTarget) -- TODO: include icon here explicitly (icon will likely be set by someone else and not yet available)
	elseif cinderTarget == UnitName("player") then
		specWarnHeart:Show(ashTarget)
	end
	ashTarget = nil
	cinderTarget = nil
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(460890) then
		local uId = DBM:GetRaidUnitId(args.destName)
		local amount = args.amount or 1
		if self:IsTanking(uId, nil, nil, false, args.sourceGUID) and amount >= 5 and amount % 2 == 0 then
			warnMeltArmor:Show(args.destName, amount)
		end
	elseif args:IsSpell(460898, 460895) then
		warnHearts:PreciseShow(2, args.destName)
		if args:IsPlayer() then
			for i = 0, 10, 2 do
				yellHeart:Schedule(i, 1)
			end
			specWarnHeart:Play("bombyou")
		end
		if args:IsSpell(460898) then
			timerHearts:Start()
			self:SetIcon(args.destName, 1)
			ashTarget = args.destName
			if cinderTarget then
				self:FoundBothHeartTargets()
			end
		end
		if args:IsSpell(460895) then
			self:SetIcon(args.destName, 2)
			cinderTarget = args.destName
			if ashTarget then
				self:FoundBothHeartTargets()
			end
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

-- This stays on death, so we could also clear stuff on UNIT_DIED, but doesn't really matter
function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(460898, 460895) then
		self:RemoveIcon(args.destName)
		if args:IsPlayer() then
			yellHeartCleared:Yell()
			yellHeart:Cancel()
		end
		if args:IsSpell(460898) then
			cinderTarget = nil
		elseif args:IsSpell(460895) then
			ashTarget = nil
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(462619) then
		warnAdds:Show()
	elseif args:IsSpell(460883, 462778, 462779, 462780) then
		warnMeteor:Show()
	end
end


local function triggerPowerWarning(value)
	if not shownPowerWarnings[value] then
		warnBossPower:Show(value)
		shownPowerWarnings[value] = true
	end
end

function mod:UNIT_POWER_UPDATE(uId)
	if self:GetUnitCreatureId(uId) == 227939 then
		local power = UnitPower(uId) / UnitPowerMax(uId)
		if power >= 0.9999 then
			triggerPowerWarning(100)
		elseif power >= 0.9 then
			triggerPowerWarning(90)
		elseif power >= 0.75 then
			triggerPowerWarning(75)
		elseif power >= 0.5 then
			triggerPowerWarning(50)
		end
	end
end
