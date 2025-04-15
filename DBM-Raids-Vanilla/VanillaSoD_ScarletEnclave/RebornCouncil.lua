if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("RebornCouncil", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3188)

mod:SetCreatureID(240795, 240809, 240810)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 1231264 1231095",
	"SPELL_CAST_SUCCESS 1236306 1231383"
)

-- Blades of Light: Dodge this
local timerBlades		= mod:NewVarTimer("v28-31", 1231264)
local specWarnBlades	= mod:NewSpecialWarningDodge(1231264, "Melee", nil, nil, 4, 2)

-- Divine Avatar, why does this have two spell IDs?
local warnAvatar = mod:NewSpellAnnounce(1236306)

-- Peeled Secrets, interrupt this
local specWarnSecrets = mod:NewSpecialWarningInterrupt(1231095, true, nil, nil, 1, 2)

-- Volcanic unrest, seems hard to avoid but is avoidable
mod:NewGtfo{antiSpam = 10, spell = 1236157, spellDamage = 1236157, spellPeriodicDamage = 1236157}

local berserkTimer = mod:NewBerserkTimer(330)

-- TODO: probably needs some nameplate timers, but I gotta get a feeling for how this boss works first

mod:AddInfoFrameOption()

function mod:OnCombatStart(delay)
	berserkTimer:Start(330 - delay)
	timerBlades:Start()
	if self.Options.InfoFrame then
		DBM.InfoFrame:Show(10, "bosshealth", self)
		self.bossHealthUpdateTime = 0.5
	end
end

function mod:OnCombatEnd()
	DBM.InfoFrame:Hide()
end


function mod:SPELL_CAST_START(args)
	if args:IsSpell(1231264) then
		timerBlades:Start()
		specWarnBlades:Show()
		specWarnBlades:Play("watchfeet")
	elseif args:IsSpell(1231095) then
		if self:CheckInterruptFilter(args.sourceGUID, nil, true) then
			specWarnSecrets:Show(args.sourceName)
			specWarnSecrets:Play("kickcast")
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(1236306, 1231383) then
		warnAvatar:Show()
	end
end

