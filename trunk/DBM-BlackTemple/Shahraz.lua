local mod	= DBM:NewMod("Shahraz", "DBM-BlackTemple")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(22947)
mod:SetModelID(21252)
mod:SetZone()
mod:SetUsedIcons(6, 7, 8)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"SPELL_AURA_APPLIED",
	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_AURA_REMOVED"
)

local warnAura1		= mod:NewSpellAnnounce(40880, 3) -- shadow
local warnAura2		= mod:NewSpellAnnounce(40882, 3) -- fire
local warnAura3		= mod:NewSpellAnnounce(40883, 3) -- nature
local warnAura4		= mod:NewSpellAnnounce(40891, 3) -- arcane
local warnAura5		= mod:NewSpellAnnounce(40896, 3) -- frost
local warnAura6		= mod:NewSpellAnnounce(40897, 3) -- holy
local warnFA		= mod:NewTargetAnnounce(41001, 4)

local specWarnFA	= mod:NewSpecialWarningYou(41001)

local timerAura1	= mod:NewBuffActiveTimer(15, 40880) -- shadow
local timerAura2	= mod:NewBuffActiveTimer(15, 40882) -- fire
local timerAura3	= mod:NewBuffActiveTimer(15, 40883) -- nature
local timerAura4	= mod:NewBuffActiveTimer(15, 40891) -- arcane
local timerAura5	= mod:NewBuffActiveTimer(15, 40896) -- frost
local timerAura6	= mod:NewBuffActiveTimer(15, 40897) -- holy

mod:AddBoolOption("FAIcons", true)
mod:AddBoolOption("FAWhisper", false, "announce")

local warnFATargets = {}
local FAIcon = 8

local aura = {
	[1] = GetSpellInfo(44880),
	[2] = GetSpellInfo(44882),
	[3] = GetSpellInfo(44883),
	[4] = GetSpellInfo(44891),
	[5] = GetSpellInfo(44896),
	[6] = GetSpellInfo(44897),
}

local function showFATargets()
	warnFA:Show(table.concat(warnFATargets, "<, >"))
	table.wipe(warnFATargets)
	FAIcon = 8
end

function mod:OnCombatStart(delay)
	table.wipe(warnFATargets)
	FAIcon = 8
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(41001) then
		warnFATargets[#warnFATargets + 1] = args.destName
		self:Unschedule(showFATargets)
		if args:IsPlayer() then
			specWarnFA:Show()
		end
		if self.Options.FAIcons then
			self:SetIcon(args.destName, FAIcon)
			FAIcon = FAIcon - 1
		end
		if IsRaidLeader() and self.Options.FAWhisper then
			self:SendWhisper(L.FAWhisper, args.destName)
		end
		if #warnFATargets >= 3 then
			showFATargets()
		else
			self:Schedule(1, showFATargets)
		end
	end
end

mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(41001) and self.FAIcons then
		self:SetIcon(args.destName, 0)
	end
end

function mod:UNIT_AURA(uId)
	if uId == "player" then
		if UnitDebuff("player", aura[1]) then
			warnAura1:Show()
			timerAura1:Start()
		elseif UnitDebuff("player", aura[2]) then
			warnAura2:Show()
			timerAura2:Start()
		elseif UnitDebuff("player", aura[3]) then
			warnAura3:Show()
			timerAura3:Start()
		elseif UnitDebuff("player", aura[4]) then
			warnAura4:Show()
			timerAura4:Start()
		elseif UnitDebuff("player", aura[5]) then
			warnAura5:Show()
			timerAura5:Start()
		elseif UnitDebuff("player", aura[6]) then
			warnAura6:Show()
			timerAura6:Start()
		end
	end
end
