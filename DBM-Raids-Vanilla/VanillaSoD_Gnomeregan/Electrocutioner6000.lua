local mod	= DBM:NewMod("ElectrocutionerSoD", "DBM-Raids-Vanilla", 9)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(220072)
mod:SetEncounterID(2927)
mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240209000000)
--mod:SetMinSyncRevision(20231115000000)
mod:SetZone(90)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 433251",
	"SPELL_CAST_SUCCESS 433398",
	"SPELL_AURA_APPLIED 433359"
)

--[[
 ability.id = 433251 and type = "begincast"
 or ability.id = 433398 and type = "cast"
 or ability.name = "Magnetic Pulse" and type = "applydebuff"
--]]
--local warnCorrosion				= mod:NewStackAnnounce(427625, 2, nil, "Tank|Healer")
local warnStaticArc					= mod:NewCountAnnounce(433251, 3)

local specWarnMagneticPulse			= mod:NewSpecialWarningMoveAway(433359, nil, nil, nil, 1, 2)
local yellMagneticPulse				= mod:NewYell(433359)
local specWarnDiscombobulation		= mod:NewSpecialWarningSpell(433398, nil, nil, nil, 2, 2)

local timerStaticArcCD				= mod:NewCDCountTimer(14.5, 433251, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)--14.5-16.2 (might also be as low as 12.9)
local timerMagneticPulseCD			= mod:NewCDTimer(12.9, 433359, nil, nil, nil, 3)--12.9-16.2
local timerDiscombobulationCD		= mod:NewNextTimer(30.7, 433398, nil, nil, nil, 2)
--local timerCorrosiveBiteCD		= mod:NewCDTimer(6.5, 429207, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)

mod:AddInfoFrameOption(433251)

mod.vb.arcCount = 0

function mod:OnCombatStart(delay)
	self.vb.arcCount = 0
	timerStaticArcCD:Start(6, 1)
	timerMagneticPulseCD:Start(12.6)
	timerDiscombobulationCD:Start(30)
	--Since it's incast cast and an aoe knockback, we pre schedule it to warn 2.5 seconds before initial cast
	specWarnDiscombobulation:Schedule(27.5)
	specWarnDiscombobulation:ScheduleVoice(27.5, "carefly")
	if self.Options.InfoFrame then
		DBM.InfoFrame:SetHeader(DBM:GetSpellName(433251))
		DBM.InfoFrame:Show(10, "playerdebuffremaining", 433251)
	end
end

function mod:OnCombatEnd()
	if self.Options.InfoFrame then
		DBM.InfoFrame:Hide()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(433251) then
		self.vb.arcCount = self.vb.arcCount + 1
		warnStaticArc:Show(self.vb.arcCount)
		timerStaticArcCD:Start(nil, self.vb.arcCount+1)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(433398) then
		--Since it's incast cast and an aoe knockback, we pre schedule it to warn 2.5 seconds before next cast
		specWarnDiscombobulation:Schedule(27.5)
		specWarnDiscombobulation:ScheduleVoice(27.5, "carefly")
		timerDiscombobulationCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(433359) then
		if self:AntiSpam(5, 1) then
			timerMagneticPulseCD:Start()
		end
		if args:IsPlayer() then
			specWarnMagneticPulse:Show()
			specWarnMagneticPulse:Play("runout")
			yellMagneticPulse:Yell()
		end
	end
end
