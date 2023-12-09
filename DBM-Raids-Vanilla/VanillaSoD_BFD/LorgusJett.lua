local mod	= DBM:NewMod("LorgusJettSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(207356)
mod:SetEncounterID(2710)--2764 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)
mod:SetUsedIcons(1, 2, 8)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 22883",
	"SPELL_CAST_SUCCESS 407794 419649 414691 414763 419636",
	"SPELL_SUMMON 419649 414691 414763 419636",
--	"SPELL_AURA_APPLIED",
	"UNIT_DIED"
)

--[[
 (ability.id = 419649 or ability.id = 414691 or ability.id = 414763 or ability.id = 419636) and type = "cast"
 or (target.id = 207367 or target.id = 207358 or target.id = 214603 or target.id = 207359) and type = "death"
 or (source.type = "NPC" and source.firstSeen = timestamp) or (target.type = "NPC" and target.firstSeen = timestamp)
--]]
--TODO, more stage 1 add stuff, maybe more spawn timers?
--TODO, Triple Puncture stacks 407794?
--TODO, find a way to detect stage 2 start in cleaner better way
--NOTE, New Totem every 9.5 seconds. Windfury 414691 -- > Lighting Shield 414763 -- > Molten Fury 419636 -- > repeat.
local warnPriestRemaining			= mod:NewAnnounce("warnPriestRemaining", 2)
local warnPhase2					= mod:NewPhaseAnnounce(2, 2)
local warnBlackfathomMurloc			= mod:NewSpellAnnounce(419649, 2)
local warnWindfuryTotem				= mod:NewSpellAnnounce(414691, 2)
local warnMoltenFuryTotem			= mod:NewSpellAnnounce(419636, 2)

local specWarnLightningShield		= mod:NewSpecialWarningSwitch(414763, nil, nil, nil, 1, 2)
local specWarnHeal					= mod:NewSpecialWarningInterrupt(407568, "HasInterrupt", nil, nil, 1, 2)

local timerTriplePunctureCD			= mod:NewCDNPTimer(10.9, 407794, nil, nil, nil, 5)
local timerHealCD					= mod:NewCDNPTimer(10.9, 22883, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)--10.9+
local timerBlackfathomMurlocCD		= mod:NewCDTimer(27.5, 419649, nil, nil, nil, 1)

local timerWindfuryTotemCD			= mod:NewCDTimer(9.5, 414691, nil, nil, nil, 1)
local timerLightningShieldTotemCD	= mod:NewCDTimer(9.5, 414763, nil, nil, nil, 1)
local timerMoltenFuryTotemCD		= mod:NewCDTimer(9.5, 419636, nil, nil, nil, 1)

mod:AddSetIconOption("SetIconOnAdds", 419649, true, 5, {1, 2})
mod:AddSetIconOption("SetIconOnTotem", 414763, true, 5, {8})

mod.vb.iconCount = 1
mod.vb.priestessRemaining = 3

function mod:OnCombatStart(delay)
	self.vb.priestessRemaining = 3
	timerBlackfathomMurlocCD:Start(27.5-delay)
	self:SetStage(1)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(22883) and args:IsSrcTypeHostile() then
		timerHealCD:Start(nil, args.sourceGUID)
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnHeal:Show(args.sourceName)
			specWarnHeal:Play("kickcast")
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(407794) then
		timerTriplePunctureCD:Start(nil, args.sourceGUID)
	elseif args:IsSpell(419649) and self:AntiSpam(5, 1) then
		self.vb.iconCount = 1
		warnBlackfathomMurloc:Show()
		timerBlackfathomMurlocCD:Start()
	elseif args:IsSpell(414691) then--Windfury totem
		if self:GetStage(1) then--Shouldn't be needed, but i'll leave it
			self:SetStage(2)
			timerBlackfathomMurlocCD:Stop()
		end
		warnWindfuryTotem:Show()
		timerLightningShieldTotemCD:Start()
	elseif args:IsSpell(414763) then--Lighting Shield totem
		specWarnLightningShield:Show()
		specWarnLightningShield:Play("attacktotem")
		timerMoltenFuryTotemCD:Start()
	elseif args:IsSpell(419636) then--Molten Fury totem
		warnMoltenFuryTotem:Show()
		timerWindfuryTotemCD:Start()
	end
end

function mod:SPELL_SUMMON(args)
	local spellId = args.spellId
	if args:IsSpell(419649) then
		local cid = self:GetCIDFromGUID(args.destGUID)
--		if cid == 209214 then--Blackfathom Murloc
			if self.Options.SetIconOnAdds then
				self:ScanForMobs(args.destGUID, 2, self.vb.iconCount, 1, nil, 12, "SetIconOnAdds")
			end
			self.vb.iconCount = self.vb.iconCount + 1
--		end
	elseif args:IsSpell(414763) then--All the totems, 419636, 414691
		if self.Options.SetIconOnTotem then--Only use up to 5 icons
			self:ScanForMobs(args.destGUID, 2, 8, 1, nil, 12, "SetIconOnTotem")
		end
	end
end

--function mod:SPELL_AURA_APPLIED(args)
--	if args:IsSpell(407791) then
--		warningAkumaisRage:Show(args.destName)
--	end
--end

--"<8.52 23:15:31> [ENCOUNTER_START] 2710#Lorgus Jett#198#10", -- [62]
--"<55.83 23:16:19> [CLEU] UNIT_DIED##nil#Creature-0-5164-48-15397-207358-00006C001D#Blackfathom Tide Priestess#-1#false#nil#nil", -- [1456]
--"<76.80 23:16:39> [CLEU] UNIT_DIED##nil#Creature-0-5164-48-15397-207359-00006C001D#Blackfathom Tide Priestess#-1#false#nil#nil", -- [1974]
--"<98.10 23:17:01> [CLEU] UNIT_DIED##nil#Creature-0-5164-48-15397-207367-00006C001D#Blackfathom Tide Priestess#-1#false#nil#nil", -- [2510]
--"<104.41 23:17:07> [CLEU] SPELL_CAST_SUCCESS#Creature-0-5164-48-15397-207356-00006C001D#Lorgus Jett##nil#414691#Corrupted Windfury Totem#nil#nil", -- [2676]
function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 204645 or cid == 204091 or cid == 209209 then--Blackfathom Elites
		timerTriplePunctureCD:Stop(args.destGUID)
	elseif cid == 207367 or cid == 207358 or cid == 214603 or cid == 207359 then--Blackfathom Tide Priestess
		timerHealCD:Stop(args.destGUID)
		--Boss versions, 214603 is trash version thats included only if non boss version is pulled and we want to stop a heal timer
		if cid == 207367 or cid == 207358 or cid == 207359 then
			self.vb.priestessRemaining = self.vb.priestessRemaining - 1
			if self.vb.priestessRemaining > 0 then
				warnPriestRemaining:Show(self.vb.priestessRemaining)
			end
			if cid == 207367 then--Last add dying
				if self:GetStage(1) then
					self:SetStage(2)
					warnPhase2:Show()
					timerBlackfathomMurlocCD:Stop()
					timerWindfuryTotemCD:Start(6.3)
				end
			end
		end
	end
end
