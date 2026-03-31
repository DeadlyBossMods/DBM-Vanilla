local mod	= DBM:NewMod("GluthVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15932)
mod:SetEncounterID(1108)
mod:SetModelID(16064)
mod:SetZone(533)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 29685 28371",
	"SPELL_AURA_APPLIED 28371",
	"SPELL_AURA_REMOVED 28371",
	"SPELL_DAMAGE 28375"
)

--TODO, is it really nessesarly to use SPELL_DAMAGE here?
local warnFrenzy		= mod:NewTargetNoFilterAnnounce(28371, 3, nil , "Tank|RemoveEnrage|Healer", 2)
local warnRoar			= mod:NewSpellAnnounce(29685, 2)
local warnDecimate		= mod:NewSpellAnnounce(28374, 3)

local specWarnFrenzy	= mod:NewSpecialWarningDispel(28371, "RemoveEnrage", nil, nil, 1, 6)

local timerFrenzy		= mod:NewBuffActiveTimer(8, 28371, nil, "Tank|RemoveEnrage|Healer", nil, 5, nil, DBM_COMMON_L.ENRAGE_ICON)
local timerFrenzyCD		= mod:NewVarTimer("v8.1-11.4", 28371, nil, "RemoveEnrage", nil, 5, nil, DBM_COMMON_L.ENRAGE_ICON)
local timerRoarCD		= mod:NewVarTimer("v17.8-24.2", 29685, nil, nil, nil, 2)
local timerEnrage		= mod:NewBerserkTimer(420)

function mod:OnCombatStart()
	timerFrenzyCD:Start("v9.6-11.3")
	timerRoarCD:Start()
	timerEnrage:Start(420)
	--warnDecimateSoon:Schedule(100 - delay)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(29685) then
		warnRoar:Show()
		timerRoarCD:Start()
	elseif args:IsSpell(28371) then
		timerFrenzyCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(28371) and args:IsDestTypeHostile() then
		if self.Options.SpecWarn19451dispel then
			specwarnFrenzy:Show(args.destName)
			specwarnFrenzy:Play("enrage")
		else
			warnFrenzy:Show(args.destName)
		end
		timerFrenzy:Start()
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(28371) and args:IsDestTypeHostile()  then
		timerFrenzy:Stop()
	end
end

do
	local Decimate = DBM:GetSpellName(28375)--Classic Note
	function mod:SPELL_DAMAGE(_, _, _, _, _, _, _, _, spellId, spellName)
		if (spellId == 28375 or spellName == Decimate) and self:AntiSpam(20) then
			warnDecimate:Show()
			--timerDecimate:Start()
			--warnDecimateSoon:Schedule(96)
		end
	end
end
