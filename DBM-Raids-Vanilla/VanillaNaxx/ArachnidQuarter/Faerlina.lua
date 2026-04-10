local mod	= DBM:NewMod("FaerlinaVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15953)
mod:SetEncounterID(1110)
mod:SetModelID(15940)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Pull1, L.Pull2, L.Pull3, L.Pull4)

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 28798 28732 28794",
	"SPELL_AURA_REMOVED 28732",
	"UNIT_DIED"
)

local warnEmbraceActive		= mod:NewSpellAnnounce(28732, 1)
local warnEmbraceExpire		= mod:NewAnnounce("WarningEmbraceExpire", 2, 28732)
local warnEmbraceExpired	= mod:NewFadesAnnounce(28732, 3)
local warnEnrage			= mod:NewSpellAnnounce(28131, 4)

local specWarnEnrage		= mod:NewSpecialWarningDefensive(28131, nil, nil, nil, 3, 2)
local specWarnGTFO			= mod:NewSpecialWarningGTFO(28794, nil, nil, nil, 1, 8)

local timerEmbrace			= mod:NewBuffActiveTimer(30, 28732, nil, nil, nil, 6)
local timerEnrageCD			= mod:NewVarTimer("v56-76", 28131, nil, "RemoveEnrage", nil, 6, nil, DBM_COMMON_L.ENRAGE_ICON)-- 56-76

mod.vb.enraged = false

function mod:OnCombatStart(delay)
	timerEnrageCD:Start(56)
	self.vb.enraged = false
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(28798) and args:IsDestTypeHostile() then -- Frenzy
		self.vb.enraged = true
		if self:IsTanking("player", nil, nil, nil, args.destGUID) then--Basically, HAS to be bosses current target
			specWarnEnrage:Show()
			specWarnEnrage:Play("defensive")
		else
			warnEnrage:Show()
		end
	elseif args:IsSpell(28732) and args:GetDestCreatureID() == 15953 and self:AntiSpam(5) then
		warnEmbraceExpire:Cancel()
		warnEmbraceExpired:Cancel()
		timerEnrageCD:Stop()
		if self.vb.enraged then
			timerEnrageCD:Start()
		end
		timerEmbrace:Start()
		warnEmbraceActive:Show()
		warnEmbraceExpire:Schedule(25)
		self.vb.enraged = false
	elseif args:IsSpell(28794) and args:IsPlayer() then--Rain of Fire
		specWarnGTFO:Show(args.spellName)
		specWarnGTFO:Play("watchfeet")
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(28732) and args:GetDestCreatureID() == 15953 and self:AntiSpam(5) then
		warnEmbraceExpired:Show()
end

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 15953 then
		--warnEnrageSoon:Cancel()
		warnEmbraceExpire:Cancel()
		warnEmbraceExpired:Cancel()
	end
end
