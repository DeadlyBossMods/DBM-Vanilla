local mod	= DBM:NewMod("OnyxiaVanilla", "DBM-Raids-Vanilla", 7)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(10184)
mod:SetEncounterID(1084)
mod:SetModelID(8570)
mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20191122000000)--2019, 11, 22
mod:SetZone(249)

mod:RegisterCombat("combat")

mod:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL"
)

--[[
(ability.id = 17086 or ability.id = 18351 or ability.id = 18500 or ability.id = 18564 or ability.id = 18576 or ability.id = 17086 or ability.id = 18596 or ability.id = 18609 or ability.id = 18617 or ability.id = 18435 or ability.id = 18431) and type = "begincast"
--]]
--https://classic.wowhead.com/spell=17646/summon-onyxia-whelp
--TODO, if blizzard makes classic wrath and this mod is used as foundation, remove the deep breath emote trigger (because pet added in wrath breaks it)
mod:RegisterEventsInCombat(
	"SPELL_CAST_START 17086 18351 18392 18435 18431 18500 18564 18584 18576 18596 18609 18617 21131",
	"SPELL_CAST_SUCCESS 19633",
	"SPELL_DAMAGE 15847",
	"UNIT_DIED",
	"CHAT_MSG_MONSTER_EMOTE",
	"UNIT_HEALTH",
	"LOADING_SCREEN_DISABLED"
)

--Todo, adds stuff (if they exist) with classic IDs
--local warnWhelpsSoon		= mod:NewAnnounce("WarnWhelpsSoon", 1, 69004)
local warnFireball			= mod:NewTargetNoFilterAnnounce(18392, 2, nil, false)
local warnWingBuffet		= mod:NewSpellAnnounce(18500, 2, nil, "Tank", 1)
local warnKnockAway			= mod:NewTargetNoFilterAnnounce(19633, 2, nil, false)
local warnPhase 			= mod:NewPhaseChangeAnnounce(nil, nil, nil, nil, nil, nil, 2)
local warnPhase2Soon		= mod:NewPrePhaseAnnounce(2)
local warnPhase3Soon		= mod:NewPrePhaseAnnounce(3)

local specWarnBellowingRoar		= mod:NewSpecialWarningSpell(18431, nil, nil, nil, 2, 2)
local specWarnBreath			= mod:NewSpecialWarningSpell(17086, nil, nil, nil, 2, 2)
local yellFireball				= mod:NewYell(18392)
--local specWarnBlastNova		= mod:NewSpecialWarningRun(68958, "Melee", nil, nil, 4, 2)
--local specWarnAdds			= mod:NewSpecialWarningAdds(68959, "-Healer", nil, nil, 1, 2)

local timerFlameBreathCD	= mod:NewVarTimer("v9.7-35.6", 18435, nil, "Tank|Healer", 3, 5)
local timerBreath			= mod:NewCastTimer(5, 17086, nil, nil, nil, 3)
local timerRoarCD			= mod:NewVarTimer("v9.7-58.3", 18431, nil, nil, nil, 2)
local timerWingBuffetCD		= mod:NewVarTimer("v17.8-32.4", 18500, nil, "Tank", nil, 2)

--local timerWhelps			= mod:NewTimer(105, "TimerWhelps", 10697, nil, nil, 1)
--local timerBigAddCD			= mod:NewAddsTimer(44.9, 68959, nil, "-Healer")

-- First Deep Breath is on a fixed timer in SoD
local specWarnBreathSoon
if DBM:IsSeasonal("SeasonOfDiscovery") then
	specWarnBreathSoon = mod:NewSpecialWarningSoon(17086, nil, nil, nil, 2, 2)
end

mod:AddBoolOption("SoundWTF3", true, "sound")
mod:AddSetIconOption("SetIconOnFireball", 18392, true, 0, {8})

--mod.vb.whelpsCount = 0

function mod:OnCombatStart()
	timerFlameBreathCD:Start("v11.3-28.5")
	timerWingBuffetCD:Start("v11.3-24.5")
	if self.Options.SoundWTF3 then
		DBM:PlaySoundFile("Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\dps-very-very-slowly.ogg")
		self:Schedule(20, DBM.PlaySoundFile, DBM, "Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\hit-it-like-you-mean-it.ogg")
		self:Schedule(30, DBM.PlaySoundFile, DBM, "Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\now-hit-it-very-hard-and-fast.ogg")
	end
end


--[[
--70, 60,
function mod:Whelps()--Not right, need to fix
	if self:IsInCombat() then
		self.vb.whelpsCount = self.vb.whelpsCount + 1
		timerWhelps:Start()
		warnWhelpsSoon:Schedule(60)
		self:ScheduleMethod(70, "Whelps")
	end
end
--]]

function mod:FireballTarget(targetname, uId)
	if not targetname then return end
	if self.Options.SetIconOnFireball then
		self:SetIcon(targetname, 8, 3)
	end
	warnFireball:Show(targetname)
	if targetname == UnitName("player") then
		yellFireball:Yell()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(17086, 18351, 18564, 18576, 18584, 18596, 18609, 18617, 21131) and args:IsSrcTypeHostile() then
		timerBreath:Start()
		if self:AntiSpam(8, 1) then
			specWarnBreath:Show()
			specWarnBreath:Play("breathsoon")
		end
	elseif args:IsSpell(18435) and args:IsSrcTypeHostile() then
		timerFlameBreathCD:Start()
	elseif args:IsSpell(18431) and args:IsSrcTypeHostile() then
		timerRoarCD:Start()
		if self:AntiSpam(3, 3) then
			specWarnBellowingRoar:Show()
			specWarnBellowingRoar:Play("fearsoon")
		end
	elseif args:IsSpell(18500) and args:IsSrcTypeHostile() then
		warnWingBuffet:Show()
		timerWingBuffetCD:Start()
	elseif args:IsSpell(18392) and args:IsSrcTypeHostile() and self:AntiSpam(3, 2) then
		self:BossTargetScanner(args.sourceGUID, "FireballTarget", 0.3, 6)
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(19633) and args:IsSrcTypeHostile() then
		warnKnockAway:Show(args.destName)
	end
end

do
	local tailSweep = DBM:GetSpellName(15847)--Classic Note
	function mod:SPELL_DAMAGE(_, _, _, _, destGUID, _, _, _, spellId, spellName)
		if (spellId == 15847 or spellName == tailSweep) and destGUID == UnitGUID("player") and self.Options.SoundWTF3 then -- Tail Sweep
			DBM:PlaySoundFile("Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\watch-the-tail.ogg")
		end
	end
end

function mod:UNIT_DIED(args)
	if self:IsInCombat() and args:IsPlayer() and self.Options.SoundWTF3 then
		DBM:PlaySoundFile("Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\thats-a-fucking-fifty-dkp-minus.ogg")
	end
end

-- Looks like SoD has a scripted Breath in Phase 2, pretty cool, avoids the boring fights where this never happens
-- "<169.88 22:13:32> [CHAT_MSG_MONSTER_YELL] This meaningless exertion bores me. I'll incinerate you all from above!#Onyxia#####0#0##0#1673#nil#0#false#false#false#false",
-- "<199.08 22:14:01> [CHAT_MSG_MONSTER_EMOTE] %s takes in a deep breath...#Onyxia#####0#0##0#1701#nil#0#false#false#false#false",
-- +29.2s
-- "<342.34 22:48:04> [CHAT_MSG_MONSTER_YELL] This meaningless exertion bores me. I'll incinerate you all from above!#Onyxia#####0#0##0#1088#nil#0#false#false#false#false",
-- "<371.51 22:48:33> [CHAT_MSG_MONSTER_EMOTE] %s takes in a deep breath...#Onyxia#####0#0##0#1118#nil#0#false#false#false#false",
-- +29.17s
-- "<238.47 23:00:39> [CHAT_MSG_MONSTER_YELL] This meaningless exertion bores me. I'll incinerate you all from above!#Onyxia#####0#0##0#1891#nil#0#false#false#false#false",
-- "<267.59 23:01:09> [CHAT_MSG_MONSTER_EMOTE] %s takes in a deep breath...#Onyxia#####0#0##0#1914#nil#0#false#false#false#false",
-- +29.12s

function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if msg == L.Breath or msg:find(L.Breath) then
		self:SendSync("Breath")
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellP1 or msg:find(L.YellP1) then
		self:SendSync("Phase", 1)
	elseif msg == L.YellP2 or msg:find(L.YellP2) then
		self:SendSync("Phase", 2)
	elseif msg == L.YellP3 or msg:find(L.YellP3) then
		self:SendSync("Phase", 3)
	end
end

function mod:UNIT_HEALTH(uId)
	if self:GetStage(1.5, 1) and self:GetUnitCreatureId(uId) == 10184 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.70 then
		self:SetStage(1.5)
		warnPhase2Soon:Show()
	elseif self:GetStage(2.5, 1) and self:GetUnitCreatureId(uId) == 10184 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.45 then
		self:SetStage(2.5)
		warnPhase3Soon:Show()
		if self.Options.SoundWTF3 then
			self:Unschedule(DBM.PlaySoundFile, DBM)
		end
	end
end

function mod:OnSync(msg, arg, sender)
	if msg == "Phase" and sender then
		local phase = tonumber(arg) or 0
		if phase > 0 and self:GetStage(phase, 3) then
			self:SetStage(phase)
			warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(phase))
			if phase == 2 then
				warnPhase:play("ptwo")
				timerWingBuffetCD:Stop()
				timerFlameBreathCD:Stop()
				--self.vb.whelpsCount = 0
				--timerBigAddCD:Start(65)
				--timerNextDeepBreath:Start(67)
				--self:ScheduleMethod(5, "Whelps")
				if self.Options.SoundWTF3 then
					self:Unschedule(DBM.PlaySoundFile, DBM)
					DBM:PlaySoundFile("Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\i-dont-see-enough-dots.ogg")
					self:Schedule(10, DBM.PlaySoundFile, DBM, "Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\throw-more-dots.ogg")
					self:Schedule(18, DBM.PlaySoundFile, DBM, "Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\whelps-left-side-even-side-handle-it.ogg")
				end
				if DBM:IsSeasonal("SeasonOfDiscovery") then
					-- Starts casting 29.1 seconds after phase change (small diff likely due to rp walk), 5 sec cast time
					timerBreath:Start(29.1 + 5)
					-- This is likely going to be the only Deep Breath that happens and the only one where we have an exact timing, so make sure everyone is as prepared as possible
					-- with an extra special warning before the cast even starts
					specWarnBreathSoon:Schedule(25)
				end
			elseif phase == 3 then
				warnPhase:play("pthree")
				--self:UnscheduleMethod("Whelps")
				--timerWhelps:Stop()
				--timerNextDeepBreath:Stop()
				--timerBigAddCD:Stop()
				--warnWhelpsSoon:Cancel()
				if self.Options.SoundWTF3 then
					self:Unschedule(DBM.PlaySoundFile, DBM)
					self:Schedule(15, DBM.PlaySoundFile, DBM, "Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\dps-very-very-slowly.ogg")
					self:Schedule(35, DBM.PlaySoundFile, DBM, "Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\hit-it-like-you-mean-it.ogg")
					self:Schedule(45, DBM.PlaySoundFile, DBM, "Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaOnyxia\\sounds\\now-hit-it-very-hard-and-fast.ogg")
				end
			end
		end
	elseif msg == "Breath" and self:AntiSpam(8, 4) then
		specWarnBreath:Show()
		specWarnBreath:Play("breathsoon")
		if timerBreath:IsStarted() then
			timerBreath:Update(29.1, 29.1 + 5)
		else
			timerBreath:Start()
		end
	end
end

function mod:ShowSoundWarning()
	-- Ugly option handling because default mod options are all per character
	local globalOptions = DBMRaidsVanilla_AllSavedVars["global-options"] or {}
	DBMRaidsVanilla_AllSavedVars["global-options"] = globalOptions
	if not globalOptions.OnyxiaSoundWarningShown then
		mod:AddMsg(L.SoDWarning:format((GetInstanceInfo())))
		DBM:PlaySoundFile(567458) -- "Ding"
		globalOptions.OnyxiaSoundWarningShown = true
	end
end

function mod:ShowSoundWarningDelayed()
	-- SoD players might not be used to DBM's fun sounds here, let's add a message for them
	-- Only trigger when entering Onyxia's Lair on SoD
	if select(8, GetInstanceInfo()) == 249 and DBM:IsSeasonal("SeasonOfDiscovery") then
		self:ScheduleMethod(4, "ShowSoundWarning")
	end
end

mod.OnInitialize = mod.ShowSoundWarningDelayed
mod.LOADING_SCREEN_DISABLED = mod.ShowSoundWarningDelayed
