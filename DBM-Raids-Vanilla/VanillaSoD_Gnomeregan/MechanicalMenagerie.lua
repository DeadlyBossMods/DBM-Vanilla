local mod	= DBM:NewMod("MechanicalMenagerieSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218245, 218244, 218243, 218242)--https://www.wowhead.com/classic/npc=218344/explosive-egg
mod:SetEncounterID(2935)
mod:SetBossHPInfoToHighest()
mod:SetHotfixNoticeRev(20240209000000)
--mod:SetMinSyncRevision(20231115000000)

--[[
STX-37/CN 218245 (Chicken)
STX-25/NB 218244 (Squirrel)
STX-13/LL 218243 (sheep)
STX-04/BD 218242 (whelp)
--]]

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 436692 440073 436833 436836 436824 436816 436695",
	"SPELL_CAST_SUCCESS 436570",
	"SPELL_SUMMON 436692",
	"SPELL_AURA_APPLIED 436837 436828 436825 436741",
--	"SPELL_AURA_APPLIED_DOSE",
	"SPELL_AURA_REMOVED 436825"
)

--NOTE: All 4 must die within 20 seconds due to Self Repair
--NOTE: Cluck is 50% attack speed to all, maybe normalize text for it?
--NOTE: Overload is damage bonus to targets, also maybe normalize text?
--TODO: add https://www.wowhead.com/classic/spell=436691/peck ? seems like just standard tank damage attack
--TODO: 2 person or 3 person interrupt rotation, if count is added to it. Or maybe a dropdown to choose which?
--[[
(ability.id = 436692 or ability.id = 440073 or ability.id = 436833 or ability.id = 436836 or ability.id = 436824 or ability.id = 436816 or ability.id = 436695) and type = "begincast"
 or (ability.id = 436828 or ability.id = 436570) and type = "cast"
--]]
--General
local warnSelfRepair				= mod:NewCastAnnounce(440073, 4)

local timerSelfRepair				= mod:NewCastSourceTimer(20, 440073, nil, nil, nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
--STX-37/CN
--local warnCorrosion				= mod:NewStackAnnounce(427625, 2, nil, "Tank|Healer")
local warnCluck						= mod:NewSpellAnnounce(436570, 3)

local specWarnExplosiveEgg			= mod:NewSpecialWarningSwitch(436692, "Ranged", nil, nil, 1, 2)

local timerExplosiveEggCD			= mod:NewCDTimer(21, 436692, nil, nil, nil, 1, nil, DBM_COMMON_L.DAMAGE_ICON)--21-39 (pretty gross, but consistent min window)

mod:AddSetIconOption("SetIconOnEgg", 436692, true, 5, {8})
--STX-25/NB
local warnWidgetFortress			= mod:NewCastAnnounce(436836, 4)

local specWarnWidgetVolley			= mod:NewSpecialWarningInterrupt(436833, "HasInterrupt", nil, nil, 1, 2)
local specWarnWidgetFortress		= mod:NewSpecialWarningMove(436836, "Tank", nil, nil, 1, 2)
--local yellDepthCharge				= mod:NewYell(404806)

--local timerWidgetFortressCD		= mod:NewCDTimer(6.5, 436836, nil, "Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--50-89 so no timer for now
-- STX-13/LL
local warnBinaryBleat				= mod:NewTargetNoFilterAnnounce(436828, 3, nil, false)--off by default optioanl announce for anyone who gets silenced for 10 seconds. ALso, no timer since 11-21 variation
local warnFrayedOver				= mod:NewFadesAnnounce(436825, 1, nil, nil, 27564)

local specWarnFrayedWiring			= mod:NewSpecialWarningReflect(436825, nil, 27564, nil, 1, 2)--Short name "Reflection"

mod:AddNamePlateOption("NPAuraOnFrayed", 436825)
--STX-04/BD
local warnOverheat						= mod:NewCastAnnounce(436741, 1, 3)

local specWarnSprocketfireBreath		= mod:NewSpecialWarningSpell(436816, nil, 18351, nil, 2, 2)--Short name "Breath"

local timerOverheat						= mod:NewBuffActiveTimer(15, 436741, nil, nil, nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerSprocketfireBreathCD			= mod:NewCDTimer(21, 436816, 18351, nil, nil, 3)--21-26, first timer that's not too radically variable and we can include

local bossRenames = {
	[218245] = L.Chicken,
	[218244] = L.Squirrel,
	[218243] = L.Sheep,
	[218242] = L.Whelp
}

function mod:OnCombatStart(delay)
--	timerWidgetFortressCD:Start(1)
	timerSprocketfireBreathCD:Start(13)--13-23 (gross)
--	timerExplosiveEggCD:Start(3.2)--3.2-31, yeah, nope
	if self.Options.NPAuraOnFrayed then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
	end
end

function mod:OnCombatEnd()
	if self.Options.NPAuraOnFrayed then
		DBM.Nameplate:Hide(true, nil, nil, nil, true, true)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(436692) then
		specWarnExplosiveEgg:Show()
		specWarnExplosiveEgg:Play("targetchange")
		timerExplosiveEggCD:Start()
	elseif args:IsSpell(440073) then
		local cid = self:GetCIDFromGUID(args.sourceGUID)
		local bossName = bossRenames[cid] or args.sourceName
		timerSelfRepair:Start(20, bossName)
		if self:AntiSpam(3, 1) then
			warnSelfRepair:Show()
		end
		if cid == 218242 then--STX-04/BD
			--20 second channel, safe to assume any existing breath timer is delayed
			timerSprocketfireBreathCD:Stop()
		end
	elseif args:IsSpell(436833) then
--		timerPetrifyCD:Start()
		local cid = self:GetCIDFromGUID(args.sourceGUID)
		local bossName = bossRenames[cid] or args.sourceName
		if self:CheckInterruptFilter(args.sourceGUID, false, true, true) then--Since it's council boss, target/focus filter is disabled for now.
			specWarnWidgetVolley:Show(bossName)
			specWarnWidgetVolley:Play("kickcast")
		end
	elseif args:IsSpell(436836) then
		warnWidgetFortress:Show()
--		timerWidgetFortressCD:Start()
	elseif args:IsSpell(436824) then
		local cid = self:GetCIDFromGUID(args.sourceGUID)
		local bossName = bossRenames[cid] or args.sourceName
		specWarnFrayedWiring:Show(bossName)
		specWarnFrayedWiring:Play("stopattack")
	elseif args:IsSpell(436816) then
		specWarnSprocketfireBreath:Show()
		specWarnSprocketfireBreath:Play("breathsoon")
		timerSprocketfireBreathCD:Start()
	elseif args:IsSpell(436695) then
		warnOverheat:Show()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(436570) then
		warnCluck:Show()
	end
end

function mod:SPELL_SUMMON(args)
	local spellId = args.spellId
	if spellId == 436692 then
		if self.Options.SetIconOnEgg then
			self:ScanForMobs(args.destGUID, 2, 8, 1, nil, 12, "SetIconOnEgg")
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(436837) and self:AntiSpam(3, 2) then
		specWarnWidgetFortress:Show()
		specWarnWidgetFortress:Play("moveboss")
	elseif args:IsSpell(436828) then
		local cid = self:GetCIDFromGUID(args.destGUID)
		local bossName = bossRenames[cid] or args.destName
		warnBinaryBleat:CombinedShow(0.3, bossName)
	elseif args:IsSpell(436825) then
		if self.Options.NPAuraOnFrayed then
			DBM.Nameplate:Show(true, args.destGUID, 436825, nil, 15)
		end
	elseif args:IsSpell(436741) and self:AntiSpam(3, 3) then
		timerOverheat:Start()
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(436825) then
		if self:AntiSpam(3, 4) then
			warnFrayedOver:Show()
		end
		if self.Options.NPAuraOnFrayed then
			DBM.Nameplate:Hide(true, args.destGUID, 436825)
		end
	end
end

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
