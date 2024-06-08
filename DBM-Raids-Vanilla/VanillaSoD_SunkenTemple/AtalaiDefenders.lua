local mod	= DBM:NewMod("AtalaiDefendersSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(221640, 218868, 221639, 221637, 221638, 223586)--Zul'Lor, Mijan, Zolo, Gasher, Loro, Hukku
mod:SetEncounterID(2954)
mod:SetBossHPInfoToHighest()
--mod:SetUsedIcons(8)
mod:SetHotfixNoticeRev(20240404000000)
--mod:SetMinSyncRevision(20231115000000)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 446372 438294 446338 438341 438339 23511 446361 438335",
	"SPELL_CAST_SUCCESS 446364 446369 444962 445912 445940 446339 445289 444747 444960 444961 446360 444963 444964",
	"SPELL_AURA_APPLIED 446354 438294",
	"SPELL_AURA_APPLIED_DOSE 445284",
	"SPELL_AURA_REMOVED 445284 438294",
	"SPELL_SUMMON 444962 444963 444964 444747 444960 444961"
)

--[[
(ability.id = 438335 or ability.id = 446372 or ability.id = 438294 or ability.id = 446338 or ability.id = 438341 or ability.id = 438339 or ability.id = 23511 or ability.id = 446361) and type = "begincast"
 or (ability.id = 446364 or ability.id = 446369 or ability.id = 444962 or ability.id = 445912 or ability.id = 445940 or ability.id = 446339 or ability.id = 445289 or ability.id = 444747 or ability.id = 444960 or ability.id = 444961 or ability.id = 446360 or ability.id = 444963 or ability.id = 444964) and type = "cast"
--]]
--TODO, possibly cull less important abilities (or disable by default) if it feels spammy
--TODO, initial timers from activatd bosses, if they have clean USCS event or emote or something (I don't really want to check all damage events from players to detect this if it can be helped)
--General
local warnPhase = mod:NewPhaseChangeAnnounce(2, 2, nil, nil, nil, nil, nil, 2)
mod:AddSetIconOption("SetIconsOnGhosts", nil, true, 5, {1, 2, 3, 4, 5, 6})

--Zul'Lor
--NOTE, if charge is prevented with a fiegn or the like, the corrupted slam doesn't happen
local warnFrailty					= mod:NewSpellAnnounce(446364, 2)
local warnCharge					= mod:NewSpellAnnounce(446369, 2)--Charge target is in out of game combat log but very much doubt it's IN GAME combat log since success levels have target stripped in 1.15.x and later

local specWarnCorruptedSlam			= mod:NewSpecialWarningDodge(446372, nil, nil, nil, 2, 2)--Corrupted Slam follows Charge
--local specWarnTheClaw				= mod:NewSpecialWarningYou(432062, nil, nil, nil, 1, 2)
--local yellTheClaw					= mod:NewYell(432062)

--local timerFrailtyCD				= mod:NewAITimer(9.7, 446364, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)--9.7-30, so disabled for now
--local timerChargeCD				= mod:NewAITimer(8, 446369, nil, nil, nil, 3)--8-17.8 so disabled for now

--Mijan
local warnThorns					= mod:NewSpellAnnounce(438294, 2)
local warnHealingWard				= mod:NewSpellAnnounce(438335, 3)

local specWarnAtalaiSerpentTotem	= mod:NewSpecialWarningSwitch(445912, "Dps", nil, nil, nil, 2)
local specWarnThornsPurge			= mod:NewSpecialWarningDispel(438294, "MagicDispeller", nil, nil, 1, 2)
local specWarnThornsStopDps			= mod:NewSpecialWarningReflect(438294, "Melee", nil, nil, 1, 2)

local timerThorns					= mod:NewBuffActiveTimer(60, 438294)

--Zolo
local warnUnstableCask				= mod:NewSpellAnnounce(445940, 3, nil, "Healer")--Stun on the tank i believe

local specWarnChainLightning		= mod:NewSpecialWarningInterrupt(446338, "HasInterrupt", nil, nil, 1, 2)
local specWarnRenew					= mod:NewSpecialWarningInterrupt(438341, "HasInterrupt", nil, nil, 1, 2)
local specWarnHealingWave			= mod:NewSpecialWarningInterrupt(438339, "HasInterrupt", nil, nil, 1, 2)
local specWarnAtalaiSkeletonTotem	= mod:NewSpecialWarningSwitch(446339, "Dps", nil, nil, nil, 2)


--local timerAtalaiSkeletonTotemCD	= mod:NewAITimer(8, 446339, nil, nil, nil, 3)--9-17 so disabled for now
--Gasher
local warnSpinningAxes				= mod:NewSpellAnnounce(445289, 2, nil, "Melee")
local warnFervor					= mod:NewStackAnnounce(445284, 2, nil, "Tank|Healer")
local warnFervorFaded				= mod:NewFadesAnnounce(445284, 1, nil, "Tank|Healer")
--Loro
local warnDemoShout					= mod:NewCastAnnounce(23511, 2)
local warnShieldSlam				= mod:NewTargetNoFilterAnnounce(446354, 2, nil, false)--Cast pretty often, so off by default

local timerDemoShoutCD				= mod:NewCDTimer(22.8, 23511, nil, nil, nil, 2)
--Hukku
local warnKukkusGuardians			= mod:NewSpellAnnounce(446360, 2)

local specWarnShadowBolt			= mod:NewSpecialWarningInterrupt(446361, "HasInterrupt", nil, nil, 1, 2)

--[[
function mod:ClawTarget(targetname, uId)
	if not targetname then return end
	if targetname == UnitName("player") then
		specWarnTheClaw:Show()
		specWarnTheClaw:Play("runout")
		yellTheClaw:Yell()
	else
		warnTheClaw:Show(targetname)
	end
	if self.Options.SetIconOnClaw then
		self:SetIcon(targetname, 8, 3)
	end
end
--]]

function mod:OnCombatStart(delay)
	self:SetStage(1)
	--Unsure of start timers, cause i'm sure you can pull any of them first
	--If it's one of those things where timers start based on who you pull then we'd need to scan for initial attacks on every boss, entire fight  :\
	--timerFrailtyCD:Start(6.3-delay)
	--timerChargeCD:Start(14.4-delay)
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(446372) then
		specWarnCorruptedSlam:Show()
		specWarnCorruptedSlam:Play("watchstep")
	elseif args:IsSpell(438294) and args:GetSrcCreatureID() == 218868  then -- ignore the ghost
		warnThorns:Show(args.sourceName)--Paladin aura of a druid ability, nani?
		specWarnThornsStopDps:Show(args.sourceName)
		specWarnThornsStopDps:Play("stopattack")
	elseif args:IsSpell(438335) then
		warnHealingWard:Show()
	elseif args:IsSpell(446338) then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnChainLightning:Show(args.sourceName)
			specWarnChainLightning:Play("kickcast")
		end
	elseif args:IsSpell(438341) then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnRenew:Show(args.sourceName)
			specWarnRenew:Play("kickcast")
		end
	elseif args:IsSpell(438339) then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnHealingWave:Show(args.sourceName)
			specWarnHealingWave:Play("kickcast")
		end
	elseif args:IsSpell(446361) then
		if self:CheckInterruptFilter(args.sourceGUID, false, true) then
			specWarnShadowBolt:Show(args.sourceName)
			specWarnShadowBolt:Play("kickcast")
		end
	elseif args:IsSpell(23511) and args:IsSrcTypeHostile() then--Casts shared version of spell, so scoped for good measure
		warnDemoShout:Show()
		timerDemoShoutCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(446364) then
		warnFrailty:Show()
		--timerFrailtyCD:Start()
	elseif args:IsSpell(446369) then
		warnCharge:Show()
	elseif args:IsSpell(444962, 444963, 444964, 444747, 444960, 444961) then--Any of bosses dying and summoning their undead counterpart
		self:SetStage(0)--Auto increment stage by 1
		warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(self.vb.phase))
		warnPhase:Play("phasechange")
		--Bosses are NOT a fixed order, so starting timers here not possible for living npcs
		--Can restart timers here for resurrected ones, but can't set initial timers for new spawning boss since group decides which one they pull, so that check needs scanning player damage events :\
		if args:IsSpell(444960) then--Laro
			--maybe stop sooner (UNIT_DIED)?
			timerDemoShoutCD:Stop()
			timerDemoShoutCD:Start(14.6)
		end
	elseif args:IsSpell(445912) then
		specWarnAtalaiSerpentTotem:Show()
	elseif args:IsSpell(445940) then
		warnUnstableCask:Show()
	elseif args:IsSpell(446339) then
		specWarnAtalaiSkeletonTotem:Show()
		specWarnAtalaiSkeletonTotem:Play("attacktotem")
	elseif args:IsSpell(445289) then
		warnSpinningAxes:Show()
	elseif args:IsSpell(446360) then
		warnKukkusGuardians:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	local spellId = args.spellId
	if spellId == 446354 then
		warnShieldSlam:Show(args.destName)
	elseif spellId == 445284 and args:GetDestCreatureID() == 221637 then
		local amount = args.amount or 1
		if amount % 10 == 0 then--Some kills had 80+ stacks, so trying every 10 stack for now
			warnFervor:Show(args.destName, args.amount or 1)
		end
	elseif args:IsSpell(438294) and args:GetDestCreatureID() == 218868 then
		timerThorns:Start()
		specWarnThornsPurge:Show(args.destName)
		specWarnThornsPurge:Play("dispelboss")
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

function mod:SPELL_AURA_REMOVED(args)
	if args.spellId == 445284 and args:GetDestCreatureID() == 221637 and self:AntiSpam(8, 1) then--In case continously kited don't want to spam announce it faded
		warnFervorFaded:Show()
	elseif args.spellId == 438294 and args:GetDestCreatureID() == 218868 then
		timerThorns:Stop()
	end
end

-- Summons:
--[[
"<529.92 22:21:02> [CLEU] SPELL_SUMMON#Creature-0-5250-109-7069-221640-0000143F40#Zul'Lor#Creature-0-5250-109-7069-221837-00001451AE#Zul'Lor#444962#Summon Zul'Lor#nil#nil", -- [6972]
"<579.26 22:21:52> [CLEU] SPELL_SUMMON#Creature-0-5250-109-7069-218868-0000143F41#Mijan#Creature-0-5250-109-7069-221835-00001451E0#Mijan#444963#Summon Mijan#nil#nil", -- [11470]
"<629.82 22:22:42> [CLEU] SPELL_SUMMON#Creature-0-5250-109-7069-221639-0000143F41#Zolo#Creature-0-5250-109-7069-221836-0000145212#Zolo#444964#Summon Zolo#nil#nil", -- [16440]
"<710.68 22:24:03> [CLEU] SPELL_SUMMON#Creature-0-5250-109-7069-221637-0000143F40#Gasher#Creature-0-5250-109-7069-221759-0000145263#Gasher#444747#Summon Gasher#nil#nil", -- [23682]
"<797.26 22:25:30> [CLEU] SPELL_SUMMON#Creature-0-5250-109-7069-221638-0000143F40#Loro#Creature-0-5250-109-7069-221834-00001452BA#Loro#444960#Summon Loro#nil#nil", -- [31440]
-- (one missing from my log because random order, but we know it from warcraftlogs)
]]
function mod:SPELL_SUMMON(args)
	if args:IsSpell(444962, 444963, 444964, 444747, 444960, 444961) then
		local iconOrder = {
			[221837] = 1,--Zul'Lor
			[221835] = 2,--Mijan
			[221836] = 3,--Zolo
			[221759] = 4,--Gasher
			[221834] = 5,--Loro
			[221833] = 6--Hukku
		}
		local cid = self:GetCIDFromGUID(args.destGUID)
		if self.Options.SetIconsOnGhosts and cid and iconOrder[cid] then
			self:ScanForMobs(args.destGUID, 2, iconOrder[cid], 1, nil, 30, "SetIconsOnGhosts", nil, nil, true)
		end
	end
end

--https://www.wowhead.com/classic/npc=221732/atalai-defenders-controller
--[[
function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if cid == 222542 then--Drum

	end
end

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
