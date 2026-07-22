local mod	= DBM:NewMod("AnubRekhanVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15956)
mod:SetEncounterID(1107)
mod:SetModelID(15931)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Pull1, L.Pull2, L.Pull3)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 28785 28783",--54021
	"SPELL_AURA_REMOVED 28785"--54021
)

--TODO, add timer for crypt guards?
--TODO, warn if players are taking damage from locust swarm to move further away from boss?
--[[
(ability.id = 28783 or ability.id = 28785) and type = "begincast"
 or ability.id = 28785 and type = "removebuff"
 --]]
local warningLocustSoon		= mod:NewSoonAnnounce(28785, 2)
local warningLocustFaded	= mod:NewFadesAnnounce(28785, 1)
local warnImpale			= mod:NewTargetNoFilterAnnounce(28783, 3)

local specialWarningLocust	= mod:NewSpecialWarningSpell(28785, nil, nil, nil, 2, 2, nil, nil, "aesoon")
local yellImpale			= mod:NewYell(28783)

local timerLocustCD			= mod:NewVarTimer("v81.3-104.5", 28785, nil, nil, nil, 2)
local timerLocustFade 		= mod:NewBuffActiveTimer(23, 28785, nil, nil, nil, 2)

local firstBossMod = DBM:GetModByName("NaxxTrash")

function mod:OnCombatStart()
	timerLocustCD:Start("v77.3-109.3")
	warningLocustSoon:Schedule(75)
	if not firstBossMod.vb.firstEngageTime then
		firstBossMod.vb.firstEngageTime = GetServerTime()
		if firstBossMod.Options.FastestClear4 and firstBossMod.Options.SpeedClearTimer then
			--Custom bar creation that's bound to core, not mod, so timer doesn't stop when mod stops it's own timers
			DBT:CreateBar(firstBossMod.Options.FastestClear4, DBM_CORE_L.SPEED_CLEAR_TIMER_TEXT, 136106)
		end
	end
end

function mod:ImpaleTarget(targetname, uId)
	if not targetname then return end
	warnImpale:Show(targetname)
	if targetname == UnitName("player") then
		yellImpale:Yell()
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(28785) then -- Locust Swarm
		specialWarningLocust:Show()
		specialWarningLocust:Play("aesoon")
		timerLocustCD:Stop()
		timerLocustFade:Start()
	elseif args:IsSpell(28783) then -- Impale
		self:BossTargetScanner(args.sourceGUID, "ImpaleTarget", 0.1, 6)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(28785) and args:IsDestTypeHostile() then--Want it removing from boss, not players, without ID we check hostility of affected unit
		warningLocustFaded:Show()
		timerLocustCD:Start(69.2)--More consistent
		warningLocustSoon:Schedule(54.2)
	end
end
