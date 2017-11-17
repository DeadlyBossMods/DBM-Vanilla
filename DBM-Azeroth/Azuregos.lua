local mod	= DBM:NewMod("Azuregos", "DBM-Azeroth")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(121820)--121820 TW ID, need classic ID
--mod:SetModelID(17887)
mod:SetZone()

mod:RegisterCombat("combat_yell", L.Pull)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 243784 243789",
	"SPELL_CAST_SUCCESS 243835"
)

--TODO, maybe add yells for classic version, for timewalking version, it just doens't matter if marks don't run out
local warningFrostBreath			= mod:NewSpellAnnounce(243789, 3)

local specWarnArcaneVacuum		= mod:NewSpecialWarningSpell(243723, nil, nil, nil, 2, 5)
local specWarnReflection		= mod:NewSpecialWarningSpell(243835, "SpellCaster", nil, nil, 1, 2)--Change to CasterDps after next core release

local timerReflectionCD			= mod:NewCDTimer(15.7, 243835, nil, "SpellCaster", nil, 5, nil, DBM_CORE_DAMAGER_ICON)--15.7-30
local timerFrostBreathCD		= mod:NewCDTimer(8.5, 243789, nil, nil, nil, 3)--8.5-20.1
local timerArcaneVacuumCD		= mod:NewCDTimer(20.1, 243784, nil, nil, nil, 2)

local voiceArcaneVacuum			= mod:NewVoice(243723)--teleyou (you are teleported to boss)
local voiceReflection			= mod:NewVoice(243835, "SpellCaster")--stilldanger (iffy)

--mod:AddReadyCheckOption(48620, false)

function mod:OnCombatStart(delay, yellTriggered)
	if yellTriggered then
		timerFrostBreathCD:Start(7-delay)
		timerArcaneVacuumCD:Start(12-delay)
		timerReflectionCD:Start(24.4-delay)
	end
end

function mod:SPELL_CAST_START(args)
	if args.spellId == 243784 then
		specWarnArcaneVacuum:Show()
		voiceArcaneVacuum:Play("teleyou")
		timerArcaneVacuumCD:Start()
	elseif args.spellId == 243789 then
		warningFrostBreath:Show()
		timerFrostBreathCD:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 243784 then
		specWarnReflection:Show()
		voiceReflection:Play("stilldanger")
		--pull:176.7, 31.3, 23.1, 20.8, 30.6, 26.2, 25.5, 15.7, 33.1, 30.1
		timerReflectionCD:Start()
	end
end
