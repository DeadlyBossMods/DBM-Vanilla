local mod	= DBM:NewMod("Brutallus", "DBM-Sunwell")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(24882)
mod:SetModelID(22711)
mod:SetMinSyncRevision(358)--Block bad pulls from old versions
mod:SetZone()
mod:SetUsedIcons(1, 2, 3, 4, 5, 6, 7, 8)

mod:RegisterCombat("yell", L.Pull)

mod:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_REMOVED",
	"SPELL_MISSED",
)

local warnMeteor		= mod:NewSpellAnnounce(45150, 3)
local warnBurn			= mod:NewTargetAnnounce(46394, 3)
local warnStomp			= mod:NewTargetAnnounce(45185, 3)

local specWarnBurn		= mod:NewSpecialWarningYou(46394)

local timerMeteorCD		= mod:NewCDTimer(12, 45150)
local timerStompCD		= mod:NewCDTimer(31, 45185)
local timerBurn			= mod:NewTargetTimer(60, 46394)
local timerBurnCD		= mod:NewCDTimer(20, 46394)

local berserkTimer		= mod:NewBerserkTimer(360)

mod:AddBoolOption("BurnIcon", true)
mod:AddBoolOption("BurnWhisper", true, "announce")

local lastBurn = 8
local burnTime = 0

function mod:OnCombatStart(delay)
	lastBurn = 8
	burnTime = 0
	timerBurnCD:Start(-delay)
	timerStompCD:Start(-delay)
	berserkTimer:Start(-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(46394) then
		warnBurn:Show(args.destName)
		timerBurn:Start(args.destName)
		local firstBurn = false
		if GetTime() - burnTime >= 19 then
			burnTime = GetTime()
			firstBurn = true
		end
		if firstBurn then
			timerBurnCD:Start()
		end
		if self.Options.BurnIcon then
			self:SetIcon(args.destName, lastBurn)
			if lastBurn == 1 then
				lastBurn = 8
			else
				lastBurn = lastBurn - 1
			end
		end
		if IsRaidLeader() and self.Options.BurnWhisper then
			self:SendWhisper(L.BurnWhisper, args.destName)
		end
		if args:IsPlayer() then
			specWarnBurn:Show()
		end
	elseif args:IsSpellID(45185) then
		warnStomp:Show(args.destName)
		timerStompCD:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(46394) then
		if self.Options.BurnIcon then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(45150) then
		warnMeteor:Show()
		timerMeteorCD:Start()
	end
end

function mod:SPELL_MISSED(sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags, spellId)
	if spellId == 46394 then
		warnBurn:Show("MISSED")
		if GetTime() - burnTime >= 19 then
			burnTime = GetTime()
			firstBurn = true
		end
		if firstBurn then
			timerBurnCD:Start()
		end
	end
end
