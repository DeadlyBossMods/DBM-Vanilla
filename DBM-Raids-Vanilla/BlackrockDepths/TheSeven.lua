local mod	= DBM:NewMod(2667, "DBM-Raids-Vanilla", 5, 1301)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "lfr,normal,heroic"

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(226307, 226310, 226309, 226313, 226311, 226312, 226308)--226307 Anger'rel, 226310/doomrel, 226309/doperel, 226313/gloomrel, 226311/haterel, 226312/seethrel, 226308/vilerel
mod:SetEncounterID(3048)
mod:SetUsedIcons(1, 2, 3, 4)
mod:SetHotfixNoticeRev(20241027000000)
--mod:SetMinSyncRevision(20211203000000)
mod:SetZone(2792)
--mod.respawnTime = 29

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 464347 464348 464358 464359 464361 464331 464333 464334 469628 464363 469636 464367 464341 469711 469723 465652",
	"SPELL_CAST_SUCCESS 464353 464344 464337",
	"SPELL_SUMMON 464366",
	"SPELL_AURA_APPLIED 464347 464348 464358 464361 464371 464333 464356 464362 464337 464340 464344 469711 469723",
	"SPELL_AURA_APPLIED_DOSE 464347",
	"SPELL_AURA_REMOVED 464371 464337 464340",
	"SPELL_PERIODIC_DAMAGE 464350 464339",
	"SPELL_PERIODIC_MISSED 464350 464339"
--	"UNIT_DIED"
--	"UNIT_SPELLCAST_SUCCEEDED boss1"
)

--[[

--]]
--TODO, review all timers and decide if any are worth setting to nameplate only
--TODO, what stacks to tanks swap at
--TODO, figure out which boss is 3rd boss, on engage (and if it's always that one)
--TODO, infoframe for absorb amount if it's not broken easily
--TODO, update terrify alert when it's clearer how mechanic works
--TODO, change option key if devs moves tooltip to correct ID for Mind Torrent (469722 vs 469723)
--[[
(ability.id = 464347 or ability.id = 464348 or ability.id = 464358 or ability.id = 464359 or ability.id = 464361 or ability.id = 464331 or ability.id = 464333 or ability.id = 464334 or ability.id = 469628 or ability.id = 464363 or ability.id = 469636 or ability.id = 464367 or ability.id = 464341 or ability.id = 469711 or ability.id = 469723 or ability.id = 465652) and type = "begincast"
 or (ability.id = 464353 or ability.id = 464344 or ability.id = 464337) and type = "cast"
 or ability.id = 464371 and (type = "applybuff")
 or type
 or ability.id = 464366 and type = "summon"
--]]
--General
--mod:AddNamePlateOption("NPOnHoney", 443983)
local specWarnGTFO							= mod:NewSpecialWarningGTFO(464350, nil, nil, nil, 1, 8)

local berserkTimer							= mod:NewBerserkTimer(600)
mod:AddSetIconOption("SetIconOnCorp", 464371, true, 5, {1, 2, 3})
--Anger'rel
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30766))
local warnSunderArmor						= mod:NewStackAnnounce(464347, 3, nil, "Tank|Healer")
local warnMortalStrike						= mod:NewTargetNoFilterAnnounce(464348, 3, nil, "Tank|Healer")
local warnBladestorm						= mod:NewTargetNoFilterAnnounce(465652, 3)

--local specWarnSunderArmor					= mod:NewSpecialWarningTaunt(464347, nil, nil, nil, 1, 2)
local specWarnBladestorm					= mod:NewSpecialWarningYou(465652, nil, nil, nil, 1, 2)
local yellBladestorm						= mod:NewShortYell(465652)
--local yellHoneyMarinadeFades				= mod:NewShortFadesYell(438025)

local timerSunderArmorCD					= mod:NewCDTimer(17, 464347, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerMortalStrikeCD					= mod:NewCDTimer(12.1, 464348, nil, "Tank|Healer", nil, 5)--12.1 but reset by bladestorm
local timerBladestormCD						= mod:NewCDTimer(37.6, 465652, nil, nil, nil, 3)

--Gloom'rel
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30769))
local warnRend								= mod:NewTargetNoFilterAnnounce(464358, 2, nil, false)
local warnRecklessness						= mod:NewTargetNoFilterAnnounce(464361, 3, nil, "Tank|Healer")

local specWarnRampage						= mod:NewSpecialWarningDefensive(464359, nil, nil, nil, 1, 2)

local timerRendCD							= mod:NewCDTimer(17, 464358, nil, false, nil, 3)
local timerRampageCD						= mod:NewCDTimer(17, 464359, nil, "Tank|Healer", nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerRecklessnessCD					= mod:NewCDTimer(36.5, 464361, nil, "Tank|Healer", nil, 5)
--Doom'rel
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30767))

local specWarnShadowBoltVolley				= mod:NewSpecialWarningInterrupt(464331, false, nil, nil, 1, 2)
local specWarnBanish						= mod:NewSpecialWarningDispel(464333, "RemoveMagic", nil, nil, 1, 2)
local specWarnSummonFelguard				= mod:NewSpecialWarningInterruptCount(464334, "HasInterrupt", nil, nil, 1, 2)

local timerShadowBoltVolleyCD				= mod:NewCDTimer(6, 464331, nil, false, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)--Spammed except when reset by phasing
local timerBanishCD							= mod:NewCDTimer(4.9, 464333, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)--4.9-12.2
local timerSummonFelguardCD					= mod:NewCDTimer(33, 464334, nil, "HasInterrupt", nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
--Dope'rel
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30768))
local warnFanofKnives						= mod:NewSpellAnnounce(464353, 2)
local warnSmokeBomb							= mod:NewSpellAnnounce(469628, 2)

local specWarnSmokeBomb						= mod:NewSpecialWarningMove(469628, nil, nil, nil, 1, 2)--Move is for 464356 on a boss

local timerFanofKnivesCD					= mod:NewCDTimer(10.9, 464353, nil, nil, nil, 3)
local timerSmokeBombCD						= mod:NewCDTimer(33, 469628, nil, nil, nil, 5)

--Hate'rel
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30770))

local specWarnMagmaBolt						= mod:NewSpecialWarningInterrupt(464363, "HasInterrupt", nil, nil, 1, 2)
local specWarnMagmaBurn						= mod:NewSpecialWarningDispel(464362, "RemoveMagic", nil, nil, 1, 2)
local specWarnSummonFireElemental			= mod:NewSpecialWarningSwitch(469636, nil, nil, nil, 1, 2)
local specWarnFireNova						= mod:NewSpecialWarningInterruptCount(464367, "HasInterrupt", nil, nil, 1, 2)

--local timerMagmaBoltCD					= mod:NewAITimer(33, 464363, nil, "HasInterrupt", nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)
local timerSummonFireElementalCD			= mod:NewCDTimer(33, 469636, nil, nil, nil, 1, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerFireNovaCD						= mod:NewCDPNPTimer(4.9, 464367, nil, "HasInterrupt", nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)--4.9-6

mod:AddSetIconOption("SetIconOnFireElemental", 469636, true, 5, {4})
--Seeth'rel
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30771))
local warnBlizzard							= mod:NewTargetAnnounce(464337, 2)

local specWarnBlizzard						= mod:NewSpecialWarningMoveAway(464337, nil, nil, nil, 1, 2)
local yellBlizzard							= mod:NewYell(464337)
local yellBlizzardFades						= mod:NewShortFadesYell(464337)
local specWarnBitterCold					= mod:NewSpecialWarningMoveAway(464341, nil, nil, nil, 3, 2)
local yellBitterCold						= mod:NewYell(464341, nil, false)
local yellBitterColdFades					= mod:NewShortFadesYell(464341, nil, false)

local timerBlizzardCD						= mod:NewCDTimer(7, 464337, nil, nil, nil, 3)
local timerBitterColdCD						= mod:NewCDTimer(33, 464341, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON)
--Vile'rel
mod:AddTimerLine(DBM:EJ_GetSectionInfo(30772))
local warnTerrify							= mod:NewCastAnnounce(469711, 3)
local warnMindTorrent						= mod:NewTargetNoFilterAnnounce(469722, 4)

local specWarnRespite						= mod:NewSpecialWarningSwitchCustom(464344, "Dps", nil, nil, 1, 2)
local specWarnTerrifyDispel					= mod:NewSpecialWarningDispel(469711, "RemoveMagic", nil, nil, 1, 2)
local specWarnMindTorrent					= mod:NewSpecialWarningMoveTo(469722, nil, nil, nil, 1, 2)
local yellMindTorrent						= mod:NewYell(469722, DBM_COMMON_L.GROUPSOAK, nil, nil, "YELL")

local timerRespiteCD						= mod:NewCDTimer(11.6, 464344, nil, "Dps", nil, 1, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerTerrifyCD						= mod:NewCDTimer(17.0, 469711, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)
local timerMindTorrentCD					= mod:NewCDTimer(33, 469722, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)

local castsPerGUID = {}
mod.vb.activeBossGUID = "unknown"
mod.vb.corpIcon = 8

--"<51.06 21:15:04> [UNIT_SPELLCAST_START] Anger'rel(91.6%-100.0%){Target:Cáreßear} -Bladestorm- 3s [[nameplate4:Cast-3-4238-2792-3565-465652-00899D3FB9:465652]]",
--"<51.06 21:15:04> [CLEU] SPELL_CAST_START#Creature-0-4238-2792-3565-226307-00001D3242#Anger'rel(91.6%-100.0%)##nil#465652#Bladestorm#nil#nil#nil#nil#nil#nil",
--"<51.07 21:15:04> [UNIT_TARGET] nameplate4#Anger'rel#Target: Nhex#TargetOfTarget: Gloom'rel",
function mod:BladestormTarget(targetname, uId)
	if not targetname then return end
	if targetname == UnitName("player") then
		specWarnBladestorm:Show()
		yellBladestorm:Yell()
	else
		warnBladestorm:Show(targetname)
	end
end

function mod:StartEngageTimers(guid, cid, delay)
	if cid == 226307 then--Anger'rel (First activation)
		if self:IsHeroic() then
			timerMortalStrikeCD:Start(5.0-delay, guid)
			timerSunderArmorCD:Start(11.1-delay, guid)
			timerBladestormCD:Start(17.1-delay, guid)
		else
			timerMortalStrikeCD:Start(6.1-delay, guid)
			timerSunderArmorCD:Start(12.3-delay, guid)--12-15
			timerBladestormCD:Start(18.4-delay, guid)--18-21
		end
	elseif cid == 226313 then--Gloom'rel (First activation)
		timerRampageCD:Start(6.1-delay, guid)
		timerRendCD:Start(12.2-delay, guid)
		timerRecklessnessCD:Start(self:IsHeroic() and (26.7-delay) or (36.1-delay), guid)
--	elseif cid == 226310 then--Doom'rel (First activation)
		--Empowered timers handled by corporeal activation
		--Volley cast instantly on pull
	elseif cid == 226312 then--Seeth'rel
		timerBlizzardCD:Start(5.1-delay, guid)
	elseif cid == 226308 then--Vile'rel
		timerRespiteCD:Start(5-delay, guid)--Will be cast at either 5 or 17, not sure what causes difference
		timerTerrifyCD:Start(17-delay, guid)
	end
end

function mod:OnCombatStart(delay)
	table.wipe(castsPerGUID)
	self.vb.activeBossGUID = "unknown"
	berserkTimer:Start(420-delay)
	self:RegisterBossUnitScan(2)
end

function mod:OnCombatEnd()

end

function mod:SPELL_CAST_START(args)
	local spellId = args.spellId
	if spellId == 464347 then
		timerSunderArmorCD:Start(self:IsHeroic() and 30 or 17, args.sourceGUID)
	elseif spellId == 464348 then
		timerMortalStrikeCD:Start(nil, args.sourceGUID)
	elseif spellId == 464358 then
		timerRendCD:Start(nil, args.sourceGUID)
	elseif spellId == 464359 then
		timerRampageCD:Start(nil, args.sourceGUID)
		if self:IsTanking("player", nil, nil, true, args.sourceGUID) then
			specWarnRampage:Show()
			specWarnRampage:Play("defensive")
		end
	elseif spellId == 464361 then
		timerRecklessnessCD:Start(nil, args.sourceGUID)
	elseif spellId == 464331 and self.vb.activeBossGUID == args.sourceGUID then
		timerShadowBoltVolleyCD:Start(nil, args.sourceGUID)
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then--Count interrupt, so cooldown is not checked
			specWarnShadowBoltVolley:Show(args.sourceName)
			specWarnShadowBoltVolley:Play("kickcast")
		end
	elseif spellId == 464363 and self.vb.activeBossGUID == args.sourceGUID then
		--timerMagmaBoltCD:Start(nil, args.sourceGUID)
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then--Count interrupt, so cooldown is not checked
			specWarnMagmaBolt:Show(args.sourceName)
			specWarnMagmaBolt:Play("kickcast")
		end
	elseif spellId == 464334 then
		if not castsPerGUID[args.sourceGUID] then
			castsPerGUID[args.sourceGUID] = 0
		end
		castsPerGUID[args.sourceGUID] = castsPerGUID[args.sourceGUID] + 1
		local count = castsPerGUID[args.sourceGUID]
		if count == 1 then--Volley is suspended until all 4 felguard casts complete
			timerShadowBoltVolleyCD:Stop()
		elseif count == 4 then--Done casting felguards
			--Even starting here is iffy since technically he just casts volley immediately after last felguard interrupt
			timerShadowBoltVolleyCD:Start(2.4)
		end
		if self:CheckInterruptFilter(args.sourceGUID, false, false) then--Count interrupt, so cooldown is not checked
			specWarnSummonFelguard:Show(args.sourceName, count)
			if count < 6 then
				specWarnSummonFelguard:Play("kick"..count.."r")
			else
				specWarnSummonFelguard:Play("kickcast")
			end
		end
	elseif spellId == 464367 then
		timerFireNovaCD:Start(nil, args.sourceGUID)
		--Delete redundant table creation if spell summon is in CLEU
		if not castsPerGUID[args.sourceGUID] then
			castsPerGUID[args.sourceGUID] = 0
		end
		castsPerGUID[args.sourceGUID] = castsPerGUID[args.sourceGUID] + 1
		local count = castsPerGUID[args.sourceGUID]
		if self:CheckInterruptFilter(args.sourceGUID, false, false) then--Count interrupt, so cooldown is not checked
			specWarnFireNova:Show(args.sourceName, count)
			if count < 6 then
				specWarnFireNova:Play("kick"..count.."r")
			else
				specWarnFireNova:Play("kickcast")
			end
		end
	elseif spellId == 464333 then
		timerBanishCD:Start(nil, args.sourceGUID)
	elseif spellId == 469628 then
		warnSmokeBomb:Show()
		--timerSmokeBombCD:Start(nil, args.sourceGUID)--Only cast once per rotation
	elseif spellId == 469636 then
		specWarnSummonFireElemental:Show()
		specWarnSummonFireElemental:Play("killmob")
		--timerSummonFireElementalCD:Start(nil, args.sourceGUID)--Only cast once per rotation
	elseif spellId == 464341 then
		specWarnBitterCold:Show()
		specWarnBitterCold:Play("scatter")
		--timerBitterColdCD:Start(nil, args.sourceGUID)--Only cast once per rotation
	elseif spellId == 469711 then
		warnTerrify:Show()
		timerTerrifyCD:Start(nil, args.sourceGUID)
	elseif spellId == 469723 then
	--	timerMindTorrentCD:Start(nil, args.sourceGUID)
		timerTerrifyCD:Stop(args.sourceGUID)
		timerTerrifyCD:Start(self:IsHeroic() and 16.2 or 14.1, args.sourceGUID)--Mind Torent resets Terrify timer
	elseif spellId == 465652 then
		self:BossTargetScanner(args.sourceGUID, "BladestormTarget", 0.1, 6)
		timerBladestormCD:Start(self:IsHeroic() and 30 or 37.6, args.sourceGUID)
		timerMortalStrikeCD:Stop(args.sourceGUID)
		timerSunderArmorCD:Stop(args.sourceGUID)
		--Bladestorm resets his other ability timers
		timerMortalStrikeCD:Start(12.1, args.sourceGUID)
		timerSunderArmorCD:Start(18.2, args.sourceGUID)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	local spellId = args.spellId
	if spellId == 464353 then
		warnFanofKnives:Show()
		timerFanofKnivesCD:Start(nil, args.sourceGUID)
	elseif spellId == 464344 then
		timerRespiteCD:Start(nil, args.sourceGUID)
	elseif spellId == 464337 then
		timerBlizzardCD:Start(nil, args.sourceGUID)
	end
end

function mod:SPELL_SUMMON(args)
	local spellId = args.spellId
	if spellId == 464366 then
		--timerFireNovaCD:Start(nil, args.destGUID)
		if not castsPerGUID[args.destGUID] then
			castsPerGUID[args.destGUID] = 0
		end
		if self.Options.SetIconOnFireElemental then
			self:ScanForMobs(args.destGUID, 2, 4, 1, nil, 12, "SetIconOnFireElemental", nil, nil, true, true)
		end
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 464347 then
		local amount = args.amount or 1
		--local _, _, _, _, _, expireTime = DBM:UnitDebuff("player", spellId)
		--local remaining
		--if expireTime then
		--	remaining = expireTime-GetTime()
		--end
		--if (not remaining or remaining and remaining < 6.1) and not UnitIsDeadOrGhost("player") then
		--	specWarnSunderArmor:Show(args.destName)
		--	specWarnSunderArmor:Play("tauntboss")
		--else
		warnSunderArmor:Show(args.destName, amount)
		--end
	elseif spellId == 464348 then
		warnMortalStrike:Show(args.destName)
	elseif spellId == 464358 then
		warnRend:Show(args.destName)
	elseif spellId == 464361 then
		warnRecklessness:Show(args.destName)
	elseif spellId == 464333 and self:CheckDispelFilter("magic") then
		specWarnBanish:Show(args.destName)
		specWarnBanish:Play("dispelnow")
	elseif spellId == 464356 and args:IsDestTypeHostile() then
		if self:IsTanking("player", nil, nil, true, args.destGUID) then
			specWarnSmokeBomb:Show()
			specWarnSmokeBomb:Play("moveboss")
		end
	elseif spellId == 464362 and self:CheckDispelFilter("magic") then
		specWarnMagmaBurn:Show(args.destName)
		specWarnMagmaBurn:Play("dispelnow")
	elseif spellId == 464337 then
		if args:IsPlayer() then
			specWarnBlizzard:Show()
			specWarnBlizzard:Play("runout")
			yellBlizzard:Yell()
			yellBlizzardFades:Countdown(spellId)
		else
			warnBlizzard:Show(args.destName)
		end
	elseif spellId == 464340 then
		if args:IsPlayer() then
			yellBitterCold:Yell()
			yellBitterColdFades:Countdown(spellId)
		end
	elseif spellId == 464344 then
		specWarnRespite:Show(args.destName)
		specWarnRespite:Play("attackshield")
	elseif spellId == 469711 and self:CheckDispelFilter("magic") then
		specWarnTerrifyDispel:Show(args.destName)
		specWarnTerrifyDispel:Play("dispelnow")
	elseif spellId == 469723 then
		if args:IsPlayer() then
			specWarnMindTorrent:Show(DBM_COMMON_L.ALLIES)
			specWarnMindTorrent:Play("gathershare")
			yellMindTorrent:Yell()
		else
			warnMindTorrent:Show(args.destName)
		end
	elseif spellId == 464371 then--Corporeal
		self.vb.activeBossGUID = args.destGUID
		castsPerGUID[args.destGUID] = 0--Always wipe table/count on activation again
		if self:AntiSpam(5, 1) then
			self.vb.corpIcon = 1
		end
		if self.Options.SetIconOnCorp then
			self:ScanForMobs(args.destGUID, 2, self.vb.corpIcon, 1, nil, 6, "SetIconOnCorp", nil, nil, true, true)
		end
		self.vb.corpIcon = self.vb.corpIcon + 1
		local cid = self:GetCIDFromGUID(args.destGUID)
		--226307 Anger'rel, 226310/doomrel, 226309/doperel, 226313/gloomrel, 226311/haterel, 226312/seethrel, 226308/vilerel
		if cid == 226310 then--Doom'rel
			--timerBanishCD:Start(1, args.destGUID)--1-5
			timerSummonFelguardCD:Start(self:IsHeroic() and 14.5 or 18, args.destGUID)--18-19
		elseif cid == 226309 then--Dope'rel
			--timerFanofKnivesCD:Start(1, args.destGUID)--Used immediately
			timerSmokeBombCD:Start(self:IsHeroic() and 14.5 or 18.2, args.destGUID)
		elseif cid == 226311 then--Hate'rel
			timerSummonFireElementalCD:Start(self:IsHeroic() and 13.7 or 18, args.destGUID)
		elseif cid == 226312 then--Seeth'rel
			timerBitterColdCD:Start(18.2, args.destGUID)--Seems same in all
		elseif cid == 226308 then--Vile'rel
			timerTerrifyCD:Stop(args.destGUID)
			if self:IsHeroic() then
				--Terrify rolls over on heroic
				timerMindTorrentCD:Start(15, args.destGUID)
			else
				timerTerrifyCD:Stop(args.destGUID)
				timerTerrifyCD:Start(7.8, args.destGUID)--restarts only on non heroic
				timerMindTorrentCD:Start(20, args.destGUID)
			end
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	local spellId = args.spellId
	if spellId == 464371 then--Corporeal
		local cid = self:GetCIDFromGUID(args.destGUID)
		--226307 Anger'rel, 226310/doomrel, 226309/doperel, 226313/gloomrel, 226311/haterel, 226312/seethrel, 226308/vilerel
		if cid == 226310 then--Doom'rel
			timerBanishCD:Stop(args.destGUID)
			timerSummonFelguardCD:Stop(args.destGUID)
		elseif cid == 226309 then--Dope'rel
			timerFanofKnivesCD:Stop(args.destGUID)
			timerSmokeBombCD:Stop(args.destGUID)
		elseif cid == 226311 then--Hate'rel
			timerSummonFireElementalCD:Stop(args.destGUID)
		elseif cid == 226312 then--Seeth'rel
			timerBitterColdCD:Stop(args.destGUID)
		elseif cid == 226308 then--Vile'rel
			timerTerrifyCD:Stop(args.destGUID)
			timerMindTorrentCD:Stop(args.destGUID)
		end
	elseif spellId == 464337 then
		if args:IsPlayer() then
			yellBlizzardFades:Cancel()
		end
	elseif spellId == 464340 then
		if args:IsPlayer() then
			yellBitterColdFades:Cancel()
		end
	end
end

function mod:SPELL_PERIODIC_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if (spellId == 464350 or spellId == 464339) and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_PERIODIC_MISSED = mod.SPELL_PERIODIC_DAMAGE

--[[
function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 231410 then--Fire Elemental
		timerFireNovaCD:Stop(args.destGUID)
	end
end
--]]

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 74859 then

	end
end
--]]
