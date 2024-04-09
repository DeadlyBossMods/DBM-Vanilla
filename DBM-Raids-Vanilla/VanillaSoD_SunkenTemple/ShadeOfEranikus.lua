local mod	= DBM:NewMod("ShadeofEranikusSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(218571)
mod:SetEncounterID(2959)
mod:SetUsedIcons(8, 7)
mod:SetHotfixNoticeRev(20240405000000)
--mod:SetMinSyncRevision(20231115000000)
mod.respawnTime = 29--VERIFY, it felt like at least this long

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 437353 437301 437390 445498 437398 437425 437410",
	"SPELL_CAST_SUCCESS 3391",
	"SPELL_SUMMON 437416 437418",--445545 isn't logged
	"SPELL_AURA_APPLIED 437353 437390 437425",
	"SPELL_DAMAGE 445575",
	"SPELL_MISSED 445575"
)

--[[
 (ability.id = 437353 or ability.id = 437301 or ability.id = 437390 or ability.id = 445498 or ability.id = 437398 or ability.id = 437425) and type = "begincast"
 or (ability.id = 437416 or ability.id = 437418 or ability.id = 3391) and type = "cast"
 or ability.id = 437416 or abilty.id = 445545 or ability.id = 437418 or ability.id = 437410
 or (source.type = "NPC" and source.firstSeen = timestamp and source.id = 222089) or (target.type = "NPC" and target.firstSeen = timestamp and target.id = 222089)
--]]
--NOTE: https://www.wowhead.com/classic/spell=445545/dream-awakening not logged
--218606
local warnDeepSlumber				= mod:NewCountAnnounce(437301, 2)
local warnLethargicPoison			= mod:NewTargetNoFilterAnnounce(437390, 3, nil, "RemovePoison")
local warnThrash					= mod:NewSpellAnnounce(3391, 4, nil, "Tank|Healer")

local specWarnCorrosiveBreath		= mod:NewSpecialWarningDefensive(437353, nil, nil, nil, 1, 2)
local specWarnCorrosiveBreathTaunt	= mod:NewSpecialWarningTaunt(437353, nil, nil, nil, 1, 2)
local specWarnBellowingRoar			= mod:NewSpecialWarningInterruptCount(445498, nil, nil, nil, 1, 2)
local specWarnWakingNightmare		= mod:NewSpecialWarningMoveTo(437398, nil, nil, nil, 3, 2)
local specWarnLethargicPoisonAdd	= mod:NewSpecialWarningInterruptCount(437425, nil, nil, nil, 1, 2)
local specWarnGTFO					= mod:NewSpecialWarningGTFO(445575, nil, nil, nil, 1, 8)

--local timerThrashCD				= mod:NewCDTimer(16.1, 3391, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)--16-49, seems to be filler GCD of boss so used in spell gaps
local timerCorrosiveBreathCD		= mod:NewCDTimer(19.3, 437353, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)--19.3 except when spell queued
local timerDeepSlumberCD			= mod:NewCDCountTimer(19.3, 437301, nil, nil, nil, 3)--19.3 except when spell queued
local timerLethargicPoisonCD		= mod:NewCDTimer(19.3, 437390, nil, nil, nil, 3, nil, DBM_COMMON_L.POISON_ICON)
local timerBellowingRoarCD			= mod:NewCDCountTimer(33.5, 445498, nil, nil, nil, 4, nil, DBM_COMMON_L.INTERRUPT_ICON)--33.5 but often spell queued due to lowest cast priority, delaying it often
local timerWakingNightmareCD		= mod:NewCDCountTimer(66.3, 437398, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON)
local timerDeepSlumber				= mod:NewBuffActiveTimer(23, 437410, nil, nil, nil, 6)

mod:AddSetIconOption("SetIconOnBigAdd", 437416, true, 5, {8, 7})

mod.vb.slumberCount = 0
mod.vb.roarCount = 0
mod.vb.nightmareCount = 0
mod.vb.addIcon = 8
local castsPerGUID = {}
local slumberName = DBM:GetSpellInfo(437301)

function mod:OnCombatStart(delay)
	self:SetStage(1)
	table.wipe(castsPerGUID)
	self.vb.slumberCount = 0
	self.vb.roarCount = 0
	self.vb.nightmareCount = 0
	self.vb.addIcon = 8
	timerCorrosiveBreathCD:Start(6.4-delay)
	timerDeepSlumberCD:Start(14.5-delay, 1)
	timerLethargicPoisonCD:Start(16.1-delay)
	timerBellowingRoarCD:Start(20.9-delay, 1)
	timerWakingNightmareCD:Start(61.1-delay, 1)--61-65
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(437353) then
		if self:IsTanking("player", nil, nil, nil, args.sourceGUID) then
			specWarnCorrosiveBreath:Show()
			specWarnCorrosiveBreath:Play("defensive")
		end
		timerCorrosiveBreathCD:Start()
	elseif args:IsSpell(437301) then
		self.vb.slumberCount = self.vb.slumberCount + 1
		warnDeepSlumber:Show(self.vb.slumberCount)
		timerDeepSlumberCD:Start(nil, self.vb.slumberCount+1)
	elseif args:IsSpell(437390) then--Boss Version
		timerLethargicPoisonCD:Start()
	elseif args:IsSpell(445498) then
		self.vb.roarCount = self.vb.roarCount + 1
		specWarnBellowingRoar:Show(self.vb.roarCount)
		specWarnBellowingRoar:Play("kickcast")
		timerBellowingRoarCD:Start(nil, self.vb.roarCount+1)
	elseif args:IsSpell(437398) then
		self.vb.nightmareCount = self.vb.nightmareCount + 1
		specWarnWakingNightmare:Show(slumberName)
		specWarnWakingNightmare:Play("specialsoon")
		timerWakingNightmareCD:Start(nil, self.vb.nightmareCount+1)
	elseif args:IsSpell(437425) then
		if not castsPerGUID[args.sourceGUID] then--Shouldn't happen, but just in case
			castsPerGUID[args.sourceGUID] = 0
			if self.Options.SetIconOnBigAdd then
				self:ScanForMobs(args.sourceGUID, 2, self.vb.addIcon, 1, nil, 12, "SetIconOnBigAdd")
			end
			self.vb.addIcon = self.vb.addIcon - 1
		end
		castsPerGUID[args.sourceGUID] = castsPerGUID[args.sourceGUID] + 1
		local count = castsPerGUID[args.sourceGUID]
		if self:CheckInterruptFilter(args.sourceGUID, false, false) then--Count interrupt, so cooldown is not checked
			specWarnLethargicPoisonAdd:Show(args.sourceName, count)
			if count < 6 then
				specWarnLethargicPoisonAdd:Play("kick"..count.."r")
			else
				specWarnLethargicPoisonAdd:Play("kickcast")
			end
		end
	elseif args:IsSpell(437410) then
		timerDeepSlumber:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(3391) and args:IsSrcTypeHostile() then
		warnThrash:Show()
	end
end

function mod:SPELL_SUMMON(args)
	local spellId = args.spellId
	if args:IsSpell(437416, 437418) then--Dreamwalker 1st Add, 2nd Add
		if args:IsSpell(437416) then--First add
			self.vb.addIcon = 8
			self:SetStage(0)
			--70% and 40%
			--If timers have less than a certain amount remaining on add spawns, they are pushed back
			--if there is MORE time remaining than these values, the old remaining is used
			--This there still needs more testing/vetting but it seems closest to explain large timer variations (besides the 66-75 CD window)
			if self.vb.phase == 2 then
				--This may be wrong, it may work same as below rule for stage 3, just rarely see that since most trigger nightmare just before first slumber
				--But this does at least kinda fix the 75-90sec timers so i'll leave til i get better sample of data with different push timings
				if timerWakingNightmareCD:GetRemaining(self.vb.nightmareCount+1) < 60 then
					timerWakingNightmareCD:Stop()
					timerWakingNightmareCD:Start(60.1, self.vb.nightmareCount+1)--60.1-66
				end
			else--Stage 3
				--https://sod.warcraftlogs.com/reports/qr31gtbXQDY6zyHL#fight=116&view=events&type=summary&hostility=1&pins=2%24Off%24%23244F4B%24expression%24%20(ability.id%20%3D%20437353%20or%20ability.id%20%3D%20437301%20or%20ability.id%20%3D%20437390%20or%20ability.id%20%3D%20445498%20or%20ability.id%20%3D%20437398%20or%20ability.id%20%3D%20437425)%20and%20type%20%3D%20%22begincast%22%0A%20or%20(ability.id%20%3D%20437416%20or%20ability.id%20%3D%20437418%20or%20ability.id%20%3D%203391)%20and%20type%20%3D%20%22cast%22%0A%20or%20ability.id%20%3D%20437416%20or%20abilty.id%20%3D%20445545%20or%20ability.id%20%3D%20437418%20or%20ability.id%20%3D%20437410%0A%20or%20(source.type%20%3D%20%22NPC%22%20and%20source.firstSeen%20%3D%20timestamp%20and%20source.id%20%3D%20222089)%20or%20(target.type%20%3D%20%22NPC%22%20and%20target.firstSeen%20%3D%20timestamp%20and%20target.id%20%3D%20222089)
				if timerWakingNightmareCD:GetRemaining(self.vb.nightmareCount+1) < 27 then
					timerWakingNightmareCD:Stop()
					timerWakingNightmareCD:Start(27.4, self.vb.nightmareCount+1)--Basically 4 seconds after dragon reactivates
				end
			end
		end
		if not castsPerGUID[args.destGUID] then--Shouldn't happen, but just in case
			castsPerGUID[args.destGUID] = 0
			if self.Options.SetIconOnBigAdd then
				self:ScanForMobs(args.destGUID, 2, self.vb.addIcon, 1, nil, 12, "SetIconOnBigAdd")
			end
			self.vb.addIcon = self.vb.addIcon - 1
		end
--	elseif args:IsSpell(445545) then--Dream Awakening (isn't logged)

	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if args:IsSpell(437353) and not args:IsPlayer() then
		local uId = DBM:GetRaidUnitId(args.destName)
		if self:IsTanking(uId, nil, nil, true, args.sourceGUID) then
			specWarnCorrosiveBreathTaunt:Show(args.destName)
			specWarnCorrosiveBreathTaunt:Play("tauntboss")
		end
	elseif args:IsSpell(437390, 437425) then
		warnLethargicPoison:CombinedShow(0.5, args.destName)
	end
end
--mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
	if spellId == 445575 and destGUID == UnitGUID("player") and self:AntiSpam(3, 2) then
		specWarnGTFO:Show(spellName)
		specWarnGTFO:Play("watchfeet")
	end
end
mod.SPELL_MISSED = mod.SPELL_DAMAGE

--[[
function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 411583 then--Replace Stand with Swim
		self:SendSync("PhaseChange")
	end
end

--https://www.wowhead.com/classic/npc=218606/lumbering-dreamwalker
function mod:OnSync(msg)
	if not self:IsInCombat() then return end
	if msg == "PhaseChange" and self:AntiSpam(30, 2) then

	end
end
--]]
