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
	"SPELL_CAST_SUCCESS 1236306 1231383 1236220",
	"SPELL_AURA_APPLIED_DOSE 1236125",
	"UNIT_POWER_UPDATE_UNFILTERED"
)

-- Blades of Light: Dodge this
local timerBlades		= mod:NewCDNPTimer(27, 1231264)
local specWarnBlades	= mod:NewSpecialWarningDodge(1231264, false, nil, 2, 4, 2)

-- Divine Avatar, why does this have two spell IDs?
local warnAvatar = mod:NewSpellAnnounce(1236306)

-- Peeled Secrets, interrupt this
local specWarnSecrets = mod:NewSpecialWarningInterrupt(1231095, true, nil, nil, 1, 2)

-- Volcanic unrest, seems hard to avoid but is avoidable (by hugging the wall in certain spots)
mod:NewGtfo{antiSpam = 10, spell = 1236157, spellDamage = 1236157, spellPeriodicDamage = 1236157}

local berserkTimer = mod:NewBerserkTimer(420)

-- Whirlwind
local specialWarningWWSoon = mod:NewSpecialWarningSoon(1231312, "Melee", nil, nil, 2, 2)

-- Slow
local timerSlow = mod:NewCDNPTimer(30, 1236220) -- 30 to 50 seconds :/

-- Tank debuff
local specWarnRendFlesh = mod:NewSpecialWarningStack(1236125, nil, 2, nil, nil, 1, 6)


mod:AddInfoFrameOption()

local wwNameplateActive
function mod:OnCombatStart(delay)
	wwNameplateActive = false
	berserkTimer:Start(-delay)
	if self.Options.InfoFrame then
		DBM.InfoFrame:Show(10, "bosshealth", self)
		self.bossHealthUpdateTime = 0.5
	end
end

function mod:OnCombatEnd()
	DBM.InfoFrame:Hide()
end


function mod:UNIT_POWER_UPDATE_UNFILTERED(uId)
	if self:GetUnitCreatureId(uId) == 240795 then
		local guid = UnitGUID(uId)
		if not guid then return end
		local power = UnitPower(uId) / UnitPowerMax(uId)
		if power >= 0.9 then
			if uId and uId:match("^nameplate") and self:AntiSpam(10) then
				specialWarningWWSoon:Show()
				specialWarningWWSoon:Play("watchstep")
			end
			if not wwNameplateActive then -- We used to have some problems with setting the same twice with the Plater integration, just making sure to avoid that here
				DBM.Nameplate:Show(true, guid, 1680, nil, nil, nil, true) -- Different spell ID on purpose, I've had problems with the normal buff icons vs. boss mod icons using the same spell ID, so whatever
				wwNameplateActive = true
			end
		elseif power <= 0.5 then
			wwNameplateActive = false
			DBM.Nameplate:Hide(true, guid, 1680)
		end
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(1231264) then
		timerBlades:Start(nil, args.sourceGUID)
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
	elseif args:IsSpell(1236220) then
		timerSlow:Start(nil, args.sourceGUID)
	end
end

function mod:SPELL_AURA_APPLIED_DOSE(args)
	if args:IsSpell(1236125) and args:IsPlayer() then
		if args.amount >= 2 then
			specWarnRendFlesh:Show(args.amount)
			specWarnRendFlesh:Play("stackhigh")
		end
	end
end
