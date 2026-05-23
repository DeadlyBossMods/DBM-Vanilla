local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isBCC or isClassic then
	catID = 4
elseif isWrath then--Wrath classic
	catID = 3
else--Cataclysm classic
	catID = 5
end
local mod	= DBM:NewMod("Arlokk", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260522000000) -- 2026, May 22nd
mod:DisableHardcodedOptions()
mod:SetCreatureID(14515)
mod:SetEncounterID(791)
mod:SetZone(309)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 24210 24212",
	"SPELL_AURA_REMOVED 24212",
	"SWING_DAMAGE",
	"SWING_MISSED",
	"UNIT_SPELLCAST_SUCCEEDED"
)

local warnMark		= mod:NewTargetNoFilterAnnounce(24210, 3)
local warnPain		= mod:NewTargetNoFilterAnnounce(24212, 2, nil, "RemoveMagic")
local warnVanish	= mod:NewSpellAnnounce(24223,2)

local specWarnMark	= mod:NewSpecialWarningYou(24210, nil, nil, nil, 1, 2)

local timerPain		= mod:NewTargetTimer(18, 24212, nil, "RemoveMagic", nil, 3, nil, DBM_COMMON_L.MAGIC_ICON)
local timerVanish	= mod:NewBuffActiveTimer("v43.7-61.5", 24223, nil, nil, nil, 6)
local timerVanishCD	= mod:NewVarTimer("v65-70", 24223, nil, nil, nil, 6) -- need more logs to verify, rare for Arlokk to vanish more than once

mod.vb.vanished = false

function mod:OnCombatStart()
	self.vb.vanished = false
	timerVanishCD:Start("v33.7-34.4")
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(24210) then
		if args:IsPlayer() then
			specWarnMark:Show()
			specWarnMark:Play("targetyou")
		else
			warnMark:Show(args.destName)
		end
	elseif args:IsSpell(24212) and args:IsDestTypePlayer() then
		warnPain:Show(args.destName)
		timerPain:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(24212) and args:IsDestTypePlayer() then
		timerPain:Stop(args.destName)
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if not self.vb.vanished and spellId == 24223 then
		self:SendSync("Vanish")
	end
end

function mod:OnSync(event)
    if event == "Vanish" then
		self.vb.vanished = true
		warnVanish:Show()
		timerVanishCD:Stop()
        timerVanish:Start()
    end
end

function mod:SWING_DAMAGE(srcGuid)
	if self.vb.vanished and DBM:GetCIDFromGUID(srcGuid) == 14515 then
		self.vb.vanished = false
		timerVanish:Stop()
		timerVanishCD:Start()
	end
end

mod.SWING_MISSED = mod.SWING_DAMAGE
