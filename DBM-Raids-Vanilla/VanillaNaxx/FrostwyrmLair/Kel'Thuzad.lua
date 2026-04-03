local mod	= DBM:NewMod("KelThuzadVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15990)
mod:SetEncounterID(1114)
--mod:SetModelID(15945)--Doesn't work at all, doesn't even render.
mod:SetMinCombatTime(60)
mod:SetUsedIcons(1, 2, 3, 4, 5, 6, 7, 8)
mod:SetZone(533)

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod:DisableBossDeathKill() -- He actually dies at end of P2 in on SoD Mythic and gets resurrected
	mod:RegisterCombat("combat")
else
	mod:RegisterCombat("combat_yell", L.YellP1)
end

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 27808 27819 28410 1222430",
	"SPELL_AURA_REMOVED 28410",
	"SPELL_CAST_SUCCESS 27810 27819 27808 28408 28479",
	"UNIT_HEALTH mouseover target",
	--"UNIT_TARGETABLE_CHANGED",
	"CHAT_MSG_MONSTER_YELL"
)

-- SoD
-- "<127.94 22:09:41> [ENCOUNTER_START] 1114#Kel'Thuzad#186#40",
-- "<128.16 22:09:41> [CHAT_MSG_MONSTER_YELL] Minions, servants, soldiers of the cold dark! Obey the call of Kel'Thuzad!#Kel'Thuzad###Sephyx##0#0##0#5535#nil#0#false#false#false#false",
-- "<342.09 22:13:15> [CHAT_MSG_MONSTER_YELL] The end is upon you!#Kel'Thuzad###World Trigger##0#0##0#5661#nil#0#false#false#false#false",
-- "<358.05 22:13:31> [CLEU] SWING_DAMAGE#Creature-0-5252-533-11218-15990-000051CFAB#Kel'Thuzad#Player-5827-0271EB0C#Ironjoke#3824#-1#nil#nil#false#false#nil#nil",
-- "<358.05 22:13:31> [IsEncounterInProgress()] true",

-- Era (229.18 seconds)
-- "<194.30 19:50:31> [ENCOUNTER_START] 1114#Kel'Thuzad#9#40",
-- "<194.48 19:50:32> [CHAT_MSG_MONSTER_YELL] ¡Esbirros, sirvientes, soldados de la fría oscuridad! ¡Obedeced la llamada de Kel'Thuzad!#Kel'Thuzad###Gorbash##0#0##0#604#nil#0#false#false#false#false",
-- "<408.30 19:54:05> [CHAT_MSG_MONSTER_YELL] ¡Exhalad el último suspiro de vida!#Kel'Thuzad###Activador del mundo##0#0##0#640#nil#0#false#false#false#false",
-- "<423.48 19:54:21> [IsEncounterInProgress()] true",

-- Era (242.26 seconds)
-- "<519.20 20:37:32> [ENCOUNTER_START] 1114#Kel'Thuzad#9#40",
-- "<519.40 20:37:32> [CHAT_MSG_MONSTER_YELL] Lacaios, serviçais, soldados das gélidas trevas! Atendam ao chamado de Kel'Thuzad!#Kel'Thuzad###Fervor##0#0##0#2853#nil#0#false#false#false#false","
-- "<745.76 20:41:19> [CHAT_MSG_MONSTER_YELL] O fim está próximo!#Kel'Thuzad###Portal de Mundo##0#0##0#2898#nil#0#false#false#false#false",
-- "<761.46 20:41:34> [IsEncounterInProgress()] true",

local phase1DurationSoD = 230.1
local phase1DurationEra = "v229.2-242.3"

--[[
ability.id = 27810 or ability.id = 27819 or ability.id = 27808 and type = "cast"
 or (source.type = "NPC" and source.firstSeen = timestamp) or (target.type = "NPC" and target.firstSeen = timestamp)
--]]
local warnPhase 			= mod:NewPhaseChangeAnnounce(2, nil, nil, nil, nil, nil, 2)
local warnPhase2Soon		= mod:NewPrePhaseAnnounce(2)
local warnPhase3Soon		= mod:NewPrePhaseAnnounce(3)
local warnBlastTargets		= mod:NewTargetAnnounce(27808, 2)
local warnFissure			= mod:NewTargetAnnounce(27810, 4, nil, nil, nil, nil, nil, 2)
local warnMana				= mod:NewTargetAnnounce(27819, 2)
local warnChainsTargets		= mod:NewTargetNoFilterAnnounce(28410, 4)

local specWarnManaBomb		= mod:NewSpecialWarningMoveAway(27819, nil, nil, nil, 1, 2)
local specWarnBlast			= mod:NewSpecialWarningTarget(27808, "Healer", nil, nil, 1, 2)
local specWarnFissureYou	= mod:NewSpecialWarningYou(27810, nil, nil, nil, 3, 2)
local yellManaBomb			= mod:NewShortYell(27819)
local yellFissure			= mod:NewYell(27810)

local timerFissureCD		= mod:NewVarTimer("v10.9-42.1", 27810, nil, nil, nil, 2)
local timerFrostboltCD		= mod:NewVarTimer("v15.7-63.1", 28479, nil, nil, nil, 2)
local timerManaBombCD		= mod:NewVarTimer("v20.6-41.3", 27819, nil, nil, nil, 3)
local timerFrostBlastCD		= mod:NewVarTimer(DBM:IsSeasonal("SeasonOfDiscovery") and "v30.3-58.2" or "v33.5-75.3", 27808, nil, nil, nil, 3, nil, DBM_COMMON_L.DEADLY_ICON)
local timerfrostBlast		= mod:NewBuffActiveTimer(4, 27808, nil, nil, nil, 5, nil, DBM_COMMON_L.HEALER_ICON)
local timerMCCD				= mod:NewVarTimer("v63.1-130", 28410, nil, nil, nil, 3)
local timerPhase2			= mod:NewTimer(DBM:IsSeasonal("SeasonOfDiscovery") and phase1DurationSoD or phase1DurationEra, "TimerPhase2", "136116", nil, nil, 6)

local specwarnP2Soon
if DBM:IsSeasonal("SeasonOfDiscovery") then
specwarnP2Soon		= mod:NewSpecialWarning("specwarnP2Soon")
end

mod:AddSetIconOption("SetIconOnMC2", 28410, false, 0, {1, 2, 3, 4, 5})
mod:AddSetIconOption("SetIconOnManaBomb", 27819, false, 0, {8})
mod:AddSetIconOption("SetIconOnFrostTomb2", 27808, false, 0, {1, 2, 3, 4, 5, 6, 7, 8})

mod.vb.MCIcon1 = 1
mod.vb.MCIcon2 = 5
local frostBlastTargets = {}

local function AnnounceBlastTargets(self)
	if self.Options.SetIconOnFrostTomb2 then
		for i = #frostBlastTargets, 1, -1 do
			self:SetIcon(frostBlastTargets[i], 8 - i, 4.5)
			frostBlastTargets[i] = nil
		end
	end
	timerfrostBlast:Start(3.5)
end

function mod:OnCombatStart()
	self:RegisterOnUpdateHandler(function()
    if IsEncounterInProgress() and self:GetStage(2, 1) then
        self:SendSync("Phase", 2)
		if DBM:IsSeasonal("SeasonOfDiscovery") then
			warnPhase:Cancel()
			warnPhase:CancelVoice()
		end
        self:UnregisterOnUpdateHandler()
    end
end, 0.2)
	table.wipe(frostBlastTargets)
	self.vb.MCIcon1 = 1
	self.vb.MCIcon2 = 5
	if DBM:IsSeasonal("SeasonOfDiscovery") then
		specwarnP2Soon:Schedule(phase1DurationSoD - 10)
		warnPhase:Schedule(phase1DurationSoD)
		warnPhase:ScheduleVoice(phase1DurationSoD, "ptwo")
	else
		warnPhase2Soon:Schedule(220)
	end
end

function mod:OnCombatEnd()
	self:UnregisterOnUpdateHandler()
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(27810) then
		timerFissureCD:Start()
		if args.destName then
			if args:IsPlayer() then
				specWarnFissureYou:Show()
				specWarnFissureYou:Play("targetyou")
				yellFissure:Yell()
			else
				warnFissure:Show(args.destName)
			end
		else
			warnFissure:Show(DBM_COMMON_L.UNKNOWN)
		end
	elseif args:IsSpell(27819) then
		timerManaBombCD:Start()
	elseif args:IsSpell(27808) then
		timerFrostBlastCD:Start()
	elseif args:IsSpell(28408) then
		timerMCCD:Start()
	elseif args:IsSpell(28479) then
		timerFrostboltCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(27808) then -- Frost Blast
		table.insert(frostBlastTargets, args.destName)
		self:Unschedule(AnnounceBlastTargets)
		self:Schedule(0.5, AnnounceBlastTargets, self)
		if self.Options.SpecWarn27808target then
			specWarnBlast:CombinedShow(0.5, args.destName)
			specWarnBlast:ScheduleVoice(0.5, "healall")
		else
			warnBlastTargets:CombinedShow(0.5, args.destName)
		end
	elseif args:IsSpell(27819) then -- Mana Bomb
		if self.Options.SetIconOnManaBomb then
			self:SetIcon(args.destName, 8, 5.5)
		end
		if args:IsPlayer() then
			specWarnManaBomb:Show()
			specWarnManaBomb:Play("scatter")
			yellManaBomb:Yell()
		else
			warnMana:Show(args.destName)
		end
	elseif args:IsSpell(28410) and self:AntiSpam(5, 1) then -- Chains of Kel'Thuzad
			self.vb.MCIcon1 = 1
			self.vb.MCIcon2 = 5
		if self.Options.SetIconOnMC2 then
			local _, _, group = GetRaidRosterInfo(UnitInRaid(args.destName) or 0)
			if group % 2 == 1 then
				self:SetIcon(args.destName, self.vb.MCIcon1)
				self.vb.MCIcon1 = self.vb.MCIcon1 + 1
			else
				self:SetIcon(args.destName, self.vb.MCIcon2)
				self.vb.MCIcon2 = self.vb.MCIcon2 - 1
			end
		end
		warnChainsTargets:CombinedShow(1, args.destName)
	elseif args:IsSpell(1222430) then -- SoD Mythic extra phase
		self:SetStage(3)
		warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(3))
		warnPhase:Play("pthree")
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(28410) then
		if self.Options.SetIconOnMC2 then
			self:SetIcon(args.destName, 0)
		end
	end
end

function mod:CHAT_MSG_MONSTER_YELL(msg)
	if msg == L.YellP1 or msg:find(L.YellP1) then
		self:SendSync("Phase", 1)
	end
end

--Classic probably won't have UNIT_TARGETABLE_CHANGED, so backups are in place
--function mod:UNIT_TARGETABLE_CHANGED()
	--if GetStage() < 2 then
		--warnPhase2:Cancel()
		--warnPhase2:CancelVoice()
		--self:SendSync("Phase", 2)
	--end
--end

function mod:UNIT_HEALTH(uId)
	if self:GetStage(2.5, 1) and self:GetUnitCreatureId(uId) == 15990 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.45 then
		self:SetStage(2.5)
		warnPhase3Soon:Show()
	elseif self:GetStage(3, 1) and self:GetUnitCreatureId(uId) == 15990 and UnitHealth(uId) / UnitHealthMax(uId) <= 0.40 and not DBM:IsSeasonal("SeasonOfDiscovery") then
		self:SendSync("Phase", 3)
	end
end

function mod:OnSync(msg, arg)
	if msg == "Phase" then
		local phase = tonumber(arg)
		if not phase then return end
		if self:GetStage(phase, 3) then  -- only if stage changed
			self:SetStage(phase)
			warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(phase))
			if phase == 1 then
				timerPhase2:Start()
			elseif phase == 2 then
				timerPhase2:Stop()
				warnPhase:Play("ptwo")
				timerFissureCD:Start("v10.4-38.4")
				timerFrostboltCD:Start("v15.3-85.9")
				timerManaBombCD:Start("v20.2-46.5")
				timerFrostBlastCD:Start("v30.3-92.7")
				timerMCCD:Start("v21.8-103.4")
			elseif phase == 3 then
				warnPhase:Play("pthree")
			end
		end
	end
end