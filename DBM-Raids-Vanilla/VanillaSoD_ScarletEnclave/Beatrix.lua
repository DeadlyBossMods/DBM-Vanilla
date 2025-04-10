if not DBM:IsSeasonal("SeasonOfDiscovery") then return end

local mod	= DBM:NewMod("Beatrix", "DBM-Raids-Vanilla", 11)
local L		= mod:GetLocalizedStrings()

mod.statTypes = "normal,heroic,mythic"

mod:SetRevision("@file-date-integer@")

mod:SetZone(2856)
mod:SetEncounterID(3187)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 1236174 1232389 1236162 1236182 1232390",
	"SPELL_AURA_REFRESH 1232389"
)

-- This fight is full of dispelable debuffs that stack up in bad ways
-- Probably also to be filtered to dispellers in final version, but for now let's show them all
local warnSheep = mod:NewSpellAnnounce(1236174)
local warnHolyFire = mod:NewTargetNoFilterAnnounce(1236162)
local warnCrusaderStrike = mod:NewTargetNoFilterAnnounce(1236182)

-- This seems to be a *buff* that needs to be healed to 100%
local warnRosesThorns = mod:NewTargetNoFilterAnnounce(1232390)
local specWarnRosesThorns = mod:NewSpecialWarningSpell(1232390, "Healer", nil, nil, 2, 8)


-- Probably a special warning if you are targeted (as you are tanking) TBD
local warnBlade = mod:NewTargetNoFilterAnnounce(1232389)


function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(1236174) then
		warnSheep:CombinedShow(0.1, args.destName)
	elseif args:IsSpell(1232389) and self:AntiSpam(10, "Blade") then -- Gets refreshed if you ignore it, looks like it really affects the tank
		warnBlade:Show(args.destName)
	elseif args:IsSpell(1236162) then
		warnHolyFire:CombinedShow(0.1, args.destName)
	elseif args:IsSpell(1236182) then
		warnCrusaderStrike:CombinedShow(0.1, args.destName)
	elseif args:IsSpell(1232390) then
		warnRosesThorns:CombinedShow(0.2, args.destName)
		if self:AntiSpam(5, "RosesThorns") then
			specWarnRosesThorns:Show()
			specWarnRosesThorns:Play("healfull")
		end
	end
end

mod.SPELL_AURA_REFRESH = mod.SPELL_AURA_APPLIED
