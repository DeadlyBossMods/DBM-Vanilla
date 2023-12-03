local mod	= DBM:NewMod("AkumaiSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(213334)
mod:SetEncounterID(2891)--2767 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)
mod:SetUsedIcons(1, 2)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 429168",
	"SPELL_CAST_SUCCESS 427751 428761 429207 429541 429359 429353",
	"SPELL_SUMMON 428828",
	"SPELL_AURA_APPLIED 427625 428482 429394",
	"SPELL_AURA_APPLIED_DOSE 427625 428482",
	"SPELL_AURA_REMOVED 429541"
)

--TODO, corrosive blast is utterly ambigious about who it targets or what it even does, so generic warning for now
--TODO, Shadowbolt Volley ability from elemental adds? blue post mentions such an ability but nos uch ability exists in logs
--TODO, too much of boss is ambigous and many warnings are just pure drycode without any idea what they even do
local warnCorrosion				= mod:NewStackAnnounce(427625, 2, nil, "Tank|Healer")
local warnCorrosiveBlast		= mod:NewCastAnnounce(429168, 3)
local warnCleansingPool			= mod:NewSpellAnnounce(427751, 1)
local warnElementalInstability	= mod:NewSpellAnnounce(428761, 3)
local warnDarkProtection		= mod:NewSpellAnnounce(429541, 3)
local warnDarkProtectionOver	= mod:NewEndAnnounce(429541, 3)
local warnVoidBlast				= mod:NewCastAnnounce(429359, 3, 3)
local warnShadowSeep			= mod:NewStackAnnounce(428482, 2, nil, "Tank|Healer")
local warningPoolofShadow		= mod:NewTargetNoFilterAnnounce(429394, 3)--No idea what this does

local timerCorrosiveBlastCD		= mod:NewCDTimer(21, 429168, nil, nil, nil, 3)
local timerCorrosiveBiteCD		= mod:NewCDTimer(6.5, 429207, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerVoidBlastCD			= mod:NewCDTimer(21, 429359, nil, nil, nil, 3)
local timerVoidFangCD			= mod:NewCDTimer(6.5, 429353, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)

mod:AddSetIconOption("SetIconOnElementals", 428828, true, 5, {1, 2})

mod.vb.iconCount = 1

function mod:OnCombatStart(delay)
	self:SetStage(1)
	timerCorrosiveBiteCD:Start(3-delay)
	timerCorrosiveBlastCD:Start(21.2-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(429168) then
		warnCorrosiveBlast:Show()
		timerCorrosiveBlastCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(427751) and self:AntiSpam(5, 1) then
		warnCleansingPool:Show()
	elseif args:IsSpell(428761) then
		warnElementalInstability:Show()
	elseif args:IsSpell(429207) then
		timerCorrosiveBiteCD:Start()
	elseif args:IsSpell(429541) then
		self:SetStage(2)
		self.vb.iconCount = 1
		timerCorrosiveBiteCD:Stop()
		timerCorrosiveBlastCD:Stop()
		warnDarkProtection:Show()
	elseif args:IsSpell(429359) then
		warnVoidBlast:Show()
		timerVoidBlastCD:Start()
	elseif args:IsSpell(429353) then
		timerVoidFangCD:Start()
	end
end

function mod:SPELL_SUMMON(args)
	local spellId = args.spellId
	if args:IsSpell(428828) then
		if self.Options.SetIconOnElementals then
			self:ScanForMobs(args.destGUID, 2, self.vb.iconCount, 1, nil, 12, "SetIconOnElementals")
		end
		self.vb.iconCount = self.vb.iconCount + 1
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(427625) then
		local amount = args.amount or 1
		if amount % 3 == 0 or amount >= 6 then
			warnCorrosion:Show(args.destName, amount)
		end
	elseif args:IsSpell(428482) then
		local amount = args.amount or 1
		if amount % 3 == 0 or amount >= 6 then
			warnShadowSeep:Show(args.destName, amount)
		end
	elseif args:IsSpell(429394) then
		warningPoolofShadow:Show(args.destName)
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

--[[
function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 213451 then--CLeansing Elemental

	end
end
--]]
