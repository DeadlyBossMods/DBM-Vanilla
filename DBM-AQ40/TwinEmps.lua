local mod	= DBM:NewMod("TwinEmpsAQ", "DBM-AQ40", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(15276, 15275)
mod:SetEncounterID(715)
mod:SetModelID(15778)
mod:RegisterCombat("combat")
mod:SetBossHealthInfo(
	15276, L.Veklor,
	15275, L.Veknil
)
mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 799 800",
	"SPELL_CAST_SUCCESS 802 804"
)

--Audio countdown for teleport? if precise enough
local warnTeleport			= mod:NewSpellAnnounce(800, 3)
local warnExplodeBug		= mod:NewSpellAnnounce(804, 2, nil, false)
local warnMutateBug			= mod:NewSpellAnnounce(802, 2, nil, false)

local timerTeleport			= mod:NewNextTimer(30, 800, nil, nil, nil, 6)
local timerExplodeBugCD		= mod:NewCDTimer(8, 804, nil, false, nil, 1)
local timerMutateBugCD		= mod:NewCDTimer(11, 802, nil, false, nil, 1)

local countdownTeleport		= mod:NewCountdown(30, 800)

local berserkTimer			= mod:NewBerserkTimer(900)

function mod:OnCombatStart(delay)
	berserkTimer:Start()
	timerTeleport:Start(-delay)
	countdownTeleport:Start(-delay)
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(799, 800) and self:AntiSpam() then
		warnTeleport:Show()
		timerTeleport:Start()
		countdownTeleport:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args.spellId == 802 then
		warnMutateBug:Show()
		timerMutateBugCD:Start()
	elseif args.spellId == 804 then
		warnExplodeBug:Show()
		timerExplodeBugCD:Start()
	end
end
