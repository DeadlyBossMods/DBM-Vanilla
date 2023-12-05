local mod	= DBM:NewMod("AkumaiSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(213334)
mod:SetEncounterID(2891)--2767 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 429168",
	"SPELL_CAST_SUCCESS 429207 429541 429359 429353",
	"SPELL_AURA_APPLIED 427625 428482",
	"SPELL_AURA_APPLIED_DOSE 427625 428482",
	"SPELL_AURA_REMOVED 429541"
)

--NOTE, corrosive blast is random target, but bosses target nils out so can't target scan
--TODO, Shadowbolt Volley ability from elemental adds? blue post mentions such an ability but no such ability exists in logs
local warnCorrosion				= mod:NewStackAnnounce(427625, 2, nil, "Tank|Healer")
local warnDarkProtection		= mod:NewSpellAnnounce(429541, 3)
local warnDarkProtectionOver	= mod:NewEndAnnounce(429541, 3)
local warnShadowSeep			= mod:NewStackAnnounce(428482, 2, nil, "Tank|Healer")

local specWarnCorrosiveBlast	= mod:NewSpecialWarningDodge(429168, nil, nil, nil, 2, 2)
local specWarnVoidBlast			= mod:NewSpecialWarningDodge(429359, nil, nil, nil, 2, 2)

local timerCorrosiveBlastCD		= mod:NewCDTimer(21, 429168, nil, nil, nil, 3)
local timerCorrosiveBiteCD		= mod:NewCDTimer(6.5, 429207, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerVoidBlastCD			= mod:NewCDTimer(21, 429359, nil, nil, nil, 3)
local timerVoidFangCD			= mod:NewCDTimer(6.5, 429353, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)


function mod:OnCombatStart(delay)
	self:SetStage(1)
	timerCorrosiveBiteCD:Start(3-delay)
	timerCorrosiveBlastCD:Start(21.2-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(429168) then
		specWarnCorrosiveBlast:Show()
		specWarnCorrosiveBlast:Play("breathsoon")
		timerCorrosiveBlastCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(429207) then
		timerCorrosiveBiteCD:Start()
	elseif args:IsSpell(429541) then
		self:SetStage(2)
		timerCorrosiveBiteCD:Stop()
		timerCorrosiveBlastCD:Stop()
		warnDarkProtection:Show()
	elseif args:IsSpell(429359) then
		specWarnVoidBlast:Show()
		specWarnVoidBlast:Play("breathsoon")
		timerVoidBlastCD:Start()
	elseif args:IsSpell(429353) then
		timerVoidFangCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(427625) then
		local amount = args.amount or 1
		if amount >= 3 then
			warnCorrosion:Show(args.destName, amount)
		end
	elseif args:IsSpell(428482) then
		local amount = args.amount or 1
		if amount >= 3 then
			warnShadowSeep:Show(args.destName, amount)
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(429541) then
		warnDarkProtectionOver:Show()
		timerVoidFangCD:Start(3.7)
		timerVoidBlastCD:Start()--21
	end
end
