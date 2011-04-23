local mod	= DBM:NewMod("Vashj", "DBM-Serpentshrine")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(21212)
mod:SetZone()
mod:SetUsedIcons(8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_CAST_SUCCESS",
	"UNIT_DIED"
)

local warnCharge		= mod:NewTargetAnnounce(38280, 4)
local warnEntangle		= mod:NewSpellAnnounce(38316, 3)
local warnPhase2		= mod:NewPhaseAnnounce(2)
local warnElemental		= mod:NewAnnounce("WarnElemental", 4, 31687)
local warnStrider		= mod:NewAnnounce("WarnStrider", 3, 475)
local warnNaga			= mod:NewAnnounce("WarnNaga", 3, 2120)
local warnShield		= mod:NewAnnounce("WarnShield", 3)
local warnLoot			= mod:NewAnnounce("WarnLoot", 4, 38132)
local warnPhase3		= mod:NewPhaseAnnounce(3)

local specWarnCharge	= mod:NewSpecialWarningYou(38280)
local specWarnElemental	= mod:NewSpecialWarning("SpecWarnElemental")
local specWarnToxic		= mod:NewSpecialWarningMove(38575)
local specWarnCore		= mod:NewSpecialWarning("SpecWarnCore")

local timerCharge		= mod:NewTargetTimer(20, 38280)
local timerElemental	= mod:NewTimer(53, "TimerElemental", 39088)
local timerStrider		= mod:NewTimer(63, "TimerStrider", 475)
local timerNaga			= mod:NewTimer(47.5, "TimerNaga", 2120)

mod:AddBoolOption("RangeFrame", true)
mod:AddBoolOption("ChargeIcon", true)
mod:AddBoolOption("LootIcon", true)

local shieldLeft = 4
local toxicSpam = 0
local p2Spam = 0
local nagaCount = 1
local striderCount = 1
local elementalCount = 1

function mod:StriderSpawn()
	striderCount = striderCount + 1
	timerStrider:Start(nil, tostring(striderCount))
	warnStrider:Schedule(57, tostring(striderCount))
	self:ScheduleMethod(63, "StriderSpawn")
end

function mod:NagaSpawn()
	nagaCount = nagaCount + 1
	timerNaga:Start(nil, tostring(nagaCount))
	warnNaga:Schedule(42.5, tostring(nagaCount))
	self:ScheduleMethod(47.5, "NagaSpawn")
end

function mod:OnCombatStart(delay)
	shieldLeft = 4
	toxicSpam = 0
	p2Spam = 0
	nagaCount = 1
	striderCount = 1
	elementalCount = 1
	if self.Options.RangeFrame then
		DBM.RangeCheck:Show()
	end
end

function mod:OnCombatEnd()
	DBM.RangeCheck:Hide()
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(38280) then
		warnCharge:Show(args.destName)
		timerCharge:Start(args.destName)
		if args:IsPlayer() then
			specWarnCharge:Show()
		end
		if self.Options.ChargeIcon then
			self:SetIcon(args.destName, 8, 20)
		end
	elseif args:IsSpellID(38132) then
		warnLoot:Show(args.destName)
		if self.Options.LootIcon then
			self:SetIcon(args.destName, 8)
		end
		if args:IsPlayer() then
			specWarnCore:Show()
		end
	elseif args:IsSpellID(38112) and GetTime() - p2Spam >= 5 then
		p2Spam = GetTime()
		nagaCount = 1
		striderCount = 1
		elementalCount = 1
		shieldLeft = 4
		warnPhase2:Show()
		timerNaga:Start(nil, tostring(nagaCount))
		warnNaga:Schedule(42.5, tostring(elementalCount))
		self:ScheduleMethod(47.5, "NagaSpawn")
		timerElemental:Start(nil, tostring(elementalCount))
		warnElemental:Schedule(48, tostring(elementalCount))
		specWarnElemental:Schedule(48)
		timerStrider:Start(nil, tostring(striderCount))
		warnStrider:Schedule(57, tostring(striderCount))
		self:ScheduleMethod(63, "StriderSpawn")
	elseif args:IsSpellID(38575) and args:IsPlayer() and GetTime() - toxicSpam >= 2 then
		specWarnToxic:Show()
		toxicSpam = GetTime()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(38280) then
		timerCharge:Cancel(args.destName)
		if self.Options.ChargeIcon then
			self:SetIcon(args.destName, 0)
		end
	elseif args:IsSpellID(38132) then
		if self.Options.LootIcon then
			self:SetIcon(args.destName, 0)
		end
	elseif args:IsSpellID(38112) then
		shieldLeft = shieldLeft - 1
		warnShield:Show(shieldLeft)
		if shieldLeft == 0 then
			warnPhase3:Show()
			timerNaga:Cancel()
			warnNaga:Cancel()
			self:UnscheduleMethod("NagaSpawn")
			timerElemental:Cancel()
			warnElemental:Cancel()
			specWarnElemental:Cancel()
			timerStrider:Cancel()
			warnStrider:Cancel()
			self:ScheduleMethod("StriderSpawn")
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpellID(38316) then
		warnEntangle:Show()
	end
end

function mod:UNIT_DIED(args)
	if bit.band(args.destGUID:sub(0, 5), 0x00F) == 3 then
		local cid = self:GetCIDFromGUID(args.destGUID)
		if cid == 22009 then
			elementalCount = elementalCount + 1
			timerElemental:Start(nil, tostring(elementalCount))
			warnElemental:Schedule(48, tostring(elementalCount))
			specWarnElemental:Schedule(48)
		end
	end
end
