local mod	= DBM:NewMod("PatchwerkVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 28131",
	"SPELL_CAST_START"
)

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260419000000) -- 2026, April 19th
mod:DisableHardcodedOptions()
mod:SetCreatureID(16028)
mod:SetEncounterID(1118)
mod:SetModelID(16174)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Pull1, L.Pull2)

local warnEnrage 		= mod:NewSpellAnnounce(28131, 4)
local warnEnrageSoon	= mod:NewSoonAnnounce(28131, 2)
local warnSlimeBolt		= mod:NewCastAnnounce(28311, 4)

local timerBerserk		= mod:NewBerserkTimer(420)

mod.vb.warnEnrageSoon = false

function mod:OnCombatStart()
	timerBerserk:Start()
	self.vb.warnEnrageSoon = false
	self:RegisterShortTermEvents(
		"UNIT_HEALTH"
	)
end

function mod:OnCombatEnd()
	self:UnregisterShortTermEvents()
end

function mod:UNIT_HEALTH(uId)
	if self:GetUnitCreatureId(uId) == 16028 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.10 then
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

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(28131) then
		warnEnrage:Show()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(28311) then
		warnSlimeBolt:Show()
	end
end