local mod	= DBM:NewMod("ElectrocutionerSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(220072)
mod:SetEncounterID(2927)
--mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 433251",
	"SPELL_CAST_SUCCESS 433359",
	"SPELL_AURA_APPLIED 433359"
--	"SPELL_AURA_APPLIED_DOSE",
--	"SPELL_AURA_REMOVED"
)

--TODO, https://www.wowhead.com/classic/spell=433398/discombobulation-protocol is an instant cast so can't really prewarn it?
--local warnCorrosion				= mod:NewStackAnnounce(427625, 2, nil, "Tank|Healer")
--local warnDarkProtection		= mod:NewSpellAnnounce(429541, 3)

local specWarnStaticArc				= mod:NewSpecialWarningCount(433251, nil, nil, nil, 2, 2)
local specWarnMagneticPulse			= mod:NewSpecialWarningMoveAway(433359, nil, nil, nil, 1, 2)
local yellMagneticPulse				= mod:NewYell(433359)

local timerStaticArcCD				= mod:NewAITimer(21, 433251, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
local timerMagneticPulseCD			= mod:NewAITimer(21, 433359, nil, nil, nil, 3)
--local timerCorrosiveBiteCD		= mod:NewCDTimer(6.5, 429207, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)

mod.vb.arcCount = 0

function mod:OnCombatStart(delay)
	self.vb.arcCount = 0
	timerMagneticPulseCD:Start(1)
	timerStaticArcCD:Start(1)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(433251) then
		self.vb.arcCount = self.vb.arcCount + 1
		specWarnStaticArc:Show(self.vb.arcCount)
		specWarnStaticArc:Play("specialsoon")
		timerStaticArcCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(429207) and self:AntiSpam(3, 1) then
		timerMagneticPulseCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(427625) then
		if args:IsPlayer() then
			specWarnMagneticPulse:Show()
			specWarnMagneticPulse:Play("runout")
			yellMagneticPulse:Yell()
		end
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

--[[
function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(429541) then

	end
end
--]]

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 411583 then--Replace Stand with Swim
		self:SendSync("PhaseChange")
	end
end

function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "PhaseChange" and self:AntiSpam(30, 2) then

	end
end
--]]
