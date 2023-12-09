local mod	= DBM:NewMod("GhamooraSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(201722)
mod:SetEncounterID(2697)--2761 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231208000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 407077",
	"SPELL_AURA_APPLIED 406970 407025 407095",
	"SPELL_AURA_APPLIED_DOSE 407095",
	"SPELL_AURA_REMOVED 406970 407025",
	"SPELL_AURA_REMOVED_DOSE 406970"
)

--Change aqua shell to carefly knockback warning after confirming mechanic/spellId
local warnCrunchArmor			= mod:NewStackAnnounce(407095, 2, nil, "Tank|Healer")
local warningTripleChomp		= mod:NewSpellAnnounce(407077, 2, nil, "Tank|Healer")
local warningAquaShell			= mod:NewCountAnnounce(414370, 2)--Aqua Shell cracking/exploding
local warningExposed			= mod:NewTargetNoFilterAnnounce(407025, 2)

local timerCrunchArmorCD		= mod:NewCDTimer(7, 407095, nil, "Tank|Healer", nil, 5)
local timerTripleChompCD		= mod:NewCDTimer(11, 407077, nil, "Tank|Healer", nil, 5)
local timerExposed				= mod:NewBuffActiveTimer(60, 407025, nil, nil, nil, 6)

mod.vb.exposedActive = false

function mod:OnCombatStart(delay)
	self.vb.exposedActive = false
	timerTripleChompCD:Start(15.8-delay)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(407077) then
		warningTripleChomp:Show()
		if self.vb.exposedActive then
			timerTripleChompCD:Start(10.7)
		else
			timerTripleChompCD:Start(16)
		end
	elseif args:IsSpell(407095) then
		if self.vb.exposedActive then
			timerCrunchArmorCD:Start(7)
		else
			timerCrunchArmorCD:Start(12.9)
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(406970) then
		warningAquaShell:Show(100)
	elseif args:IsSpell(407025) then
		self.vb.exposedActive = true
		warningExposed:Show(args.destName)
		timerExposed:Start()
	elseif args:IsSpell(407095) then
		local amount = args.amount or 1
		if amount >= 3 then
			warnCrunchArmor:Show(args.destName, amount)
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(406970) then
		local amount = args.amount or 0
		if amount == 0 or (amount % 25 == 0) then--75, 50, 25, 0
			warningAquaShell:Show(amount)
		end
	elseif args:IsSpell(407025) then
		self.vb.exposedActive = false
		timerExposed:Stop()
	end
end
mod.SPELL_AURA_REMOVED_DOSE = mod.SPELL_AURA_REMOVED
