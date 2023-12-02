local mod	= DBM:NewMod("GelihastSoD", "DBM-Raids-Vanilla", 8)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(204921)
mod:SetEncounterID(2704)--2763 is likely 5 man version in instance type 201
mod:SetHotfixNoticeRev(20231201000000)
--mod:SetMinSyncRevision(20231115000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
--	"SPELL_CAST_START",
	"SPELL_CAST_SUCCESS 412072 411973 412456 411990 412528",
	"SPELL_AURA_APPLIED 412072 411956",
	"SPELL_AURA_APPLIED_DOSE 412072"
)

--TODO, better detect march starting/ending to cleanup antispam and resume nono murloc phase timers
--TODO, what does shadow crash even do, does it need an alert?
--TODO, void empowerment is what? stage change?
--[[
(ability.id = 412456  or ability.id = 411973 or ability.id = 412072 or ability.id = 411990 or ability.id = 412248 or ability.id = 412528) and type = "cast"
--]]
local warnShadowStrike			= mod:NewStackAnnounce(412072, 2, nil, "Tank|Healer")
local warnCurseofBlackfathom	= mod:NewTargetNoFilterAnnounce(411956, 2, nil, "RemoveCurse")
local warnMarchofMurlocs		= mod:NewSpellAnnounce(412456, 2)
local warnGroundRupture			= mod:NewSpellAnnounce(412528, 2)

local timerShadowStrikeCD		= mod:NewCDTimer(11.3, 412072, nil, nil, nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)
local timerCurseofBlackfathomCD	= mod:NewCDTimer(11.3, 411973, nil, nil, nil, 5, nil, DBM_COMMON_L.CURSE_ICON)
local timerShadowCrashCD		= mod:NewCDTimer(11.3, 411990, nil, nil, nil, 3)
local timerGroundRuptureCD		= mod:NewCDTimer(11.3, 412528, nil, nil, nil, 3)
local timerMarchofMurlocsCD		= mod:NewCDTimer(77.6, 412456, nil, nil, nil, 1)

function mod:OnCombatStart(delay)
	timerShadowStrikeCD:Start(3-delay)
	timerCurseofBlackfathomCD:Start(6-delay)
	timerShadowCrashCD:Start(8-delay)
	timerMarchofMurlocsCD:Start(40-delay)
end

--[[
function mod:SPELL_CAST_START(args)
	if args:IsSpell(8399) and args:IsSrcTypeHostile() then

	end
end
--]]

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(412072) then
		timerShadowStrikeCD:Start()
	elseif args:IsSpell(411973) then
		timerCurseofBlackfathomCD:Start()
	elseif args:IsSpell(411990) then
		timerShadowCrashCD:Start()
	elseif args:IsSpell(412528) and self:AntiSpam(5, 1) then
		warnGroundRupture:Show()
		timerGroundRuptureCD:Start()
	elseif args:IsSpell(412456) and self:AntiSpam(25, 2) then
		--Boss stops casting these during murlocs
		timerCurseofBlackfathomCD:Stop()
		timerShadowStrikeCD:Stop()
		timerShadowCrashCD:Stop()
		warnMarchofMurlocs:Show()
		timerMarchofMurlocsCD:Start()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(412072) and args:IsDestTypePlayer() then
		local amount = args.amount or 1
		warnShadowStrike:Show(args.destName, amount)
	elseif args:IsSpell(412072) and args:IsDestTypePlayer()
		warnCurseofBlackfathom:CombinedShow(0.5, args.destName)
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED
