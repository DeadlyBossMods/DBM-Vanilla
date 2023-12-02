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
 or (source.type = "NPC" and source.firstSeen = timestamp) or (target.type = "NPC" and target.firstSeen = timestamp)
--]]
--TODO, more stage 1 add stuff, maybe more spawn timers?
--TODO, Triple Puncture stacks 407794?
--TODO, find a way to detect stage 2 start in cleaner better way
--NOTE, New Totem every 9.5 seconds. Windfury 414691 -- > Lighting Shield 414763 -- > Molten Fury 419636 -- > repeat.
--local warnSleep					= mod:NewTargetNoFilterAnnounce(8399, 2)
local warnBlackfathomMurloc			= mod:NewSpellAnnounce(419649, 2)
local warnWindfuryTotem				= mod:NewSpellAnnounce(414691, 2)
local warnLightningShieldtotem		= mod:NewSpellAnnounce(414763, 2)
local warnMoltenFuryTotem			= mod:NewSpellAnnounce(419636, 2)

local specWarnHeal					= mod:NewSpecialWarningInterrupt(407568, "HasInterrupt", nil, nil, 1, 2)

local timerTriplePunctureCD			= mod:NewCDNPTimer(10.9, 407794, nil, nil, nil, 5)
local timerHealCD					= mod:NewCDNPTimer(10.9, 22883, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)--10.9+
local timerBlackfathomMurlocCD		= mod:NewCDTimer(27.5, 419649, nil, nil, nil, 1)

local timerWindfuryTotemCD			= mod:NewCDTimer(9.5, 414691, nil, nil, nil, 1)
local timerLightningShieldTotemCD	= mod:NewCDTimer(9.5, 414763, nil, nil, nil, 1)
local timerMoltenFuryTotemCD		= mod:NewCDTimer(9.5, 419636, nil, nil, nil, 1)

mod:AddSetIconOption("SetIconOnAdds", 419649, true, 5, {1, 2})
mod:AddSetIconOption("SetIconOnTotem", 414691, true, 5, {8})

mod.vb.iconCount = 1

function mod:OnCombatStart(delay)
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
		if self:GetStage(1) then
			self:SetStage(2)
			timerBlackfathomMurlocCD:Stop()
		end
		warnWindfuryTotem:Show()
		timerLightningShieldTotemCD:Start()
	elseif args:IsSpell(414763) then--Lighting Shield totem
		warnLightningShieldtotem:Show()
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
	elseif args:IsSpell(414691, 414763, 419636) then--All the totems
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

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 204645 or cid == 204091 or cid == 209209 then--Blackfathom Elites
		timerTriplePunctureCD:Stop(args.destGUID)
	elseif cid == 207367 or cid == 207358 or cid == 214603 or cid == 207359 then--Blackfathom Tide Priestess
		timerHealCD:Stop(args.destGUID)
	end
end
