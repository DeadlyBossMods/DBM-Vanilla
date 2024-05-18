local mod	= DBM:NewMod("DreamscytheAndWeaverSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(220833, 220864)--Dreamscythe, Weaver
mod:SetEncounterID(2955)
mod:SetBossHPInfoToHighest()
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240405000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 443766 443830 443793 443827",
	"SPELL_CAST_SUCCESS 442620",
	"SPELL_AURA_APPLIED 443302 442622",
	"SPELL_AURA_APPLIED_DOSE 442622",
	"SPELL_AURA_REMOVED 443302"
)

--[[
(ability.id = 443766 or ability.id = 443830 or ability.id = 443793 or ability.id = 443827) and type = "begincast"
 or (ability.id = 442622 or ability.id = 442620) and type = "cast"
 or ability.id = 443302
--]]
--Once again, timers are too variable across board for acid breath and wing flap, especially when both out. Wing buffet has problem too in stage 3 but a bit more consistent in stage 1 and 2
local warnPhase						= mod:NewPhaseChangeAnnounce(2, 2, nil, nil, nil, nil, nil, 2)
--local warnTheClaw					= mod:NewTargetNoFilterAnnounce(432062, 3)
local warnAcidBreath				= mod:NewStackAnnounce(442622, 2, nil, "Tank|Healer")--Used by both
local warnWingFlap					= mod:NewSpellAnnounce(442620, 3)--Used by both

local specWarnWingBuffet			= mod:NewSpecialWarningSpell(443766, nil, nil, nil, 2, 2)
local specWarnDelayedWingBuffet		= mod:NewSpecialWarningSpell(443830, nil, nil, nil, 2, 2)

--local timerAcidBreathCD			= mod:NewAITimer(11.3, 442622, nil, "Healer|Tank", nil, 5, nil, DBM_COMMON_L.TANK_ICON)--Far to variable
--local timerTheClawCD				= mod:NewAITimer(15.2, 432062, nil, nil, nil, 3)
local timerWingBuffetCD				= mod:NewCDTimer(22.6, 443766, nil, nil, nil, 3)--22.6-70 (they have same variable timer, only need one object

function mod:OnCombatStart(delay)
	self:SetStage(1)
	timerWingBuffetCD:Start(19.4-delay)--19-26
end


function mod:SPELL_CAST_START(args)
	if args:IsSpell(443766, 443793) then--Diff Ids based on which side boss goes to
		if self:AntiSpam(3, 1) then--Aggregate warnings when both dragons are out, they're cast at same time
			specWarnWingBuffet:Show()
			specWarnWingBuffet:Play("carefly")
			timerWingBuffetCD:Start()
		end
	elseif args:IsSpell(443830, 443827) then--Diff Ids based on which side boss goes to
		if self:AntiSpam(3, 1) then--Aggregate warnings when both dragons are out, they're cast at same time
			specWarnDelayedWingBuffet:Show()
			specWarnDelayedWingBuffet:Play("carefly")
			timerWingBuffetCD:Start()
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(442620) then
		warnWingFlap:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 443302 and args:GetDestCreatureID() == 220833 then--Emerald Ward on Dreamscythe
		self:SetStage(2)
		warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(2))
		warnPhase:Play("ptwo")
		timerWingBuffetCD:Stop()
		timerWingBuffetCD:Start(5)
	elseif spellId == 442622 then
		local uId = DBM:GetRaidUnitId(args.destName)
		--Makes sure the target of the debuff, is highest threat of the caster
		--(basically filters everyone who's not actively tanking mob such as melee in wrong place)
		if self:IsTanking(uId, nil, nil, false, args.sourceGUID) then--playerUnitID, enemyUnitID, isName, onlyRequested, enemyGUID
			local amount = args.amount or 1
			warnAcidBreath:Show(args.destName, amount)
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 443302 and args:GetDestCreatureID() == 220833 then--Emerald Ward removed from Dreamscythe
		self:SetStage(3)
		warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(3))
		warnPhase:Play("pthree")
		timerWingBuffetCD:Stop()
		timerWingBuffetCD:Start(3)--Can be as early as 3 or delayed quite a bit
	end
end
