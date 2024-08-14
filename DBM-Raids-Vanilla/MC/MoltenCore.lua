if not DBM:IsSeasonal("SeasonOfDiscovery") then return end
local mod	= DBM:NewMod("MoltenCore", "DBM-Raids-Vanilla", 6)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(227939)
mod:SetEncounterID(3018)
mod:RegisterCombat("combat")
mod:SetUsedIcons(1, 2)

mod:RegisterEventsInCombat(
	"SPELL_AURA_APPLIED 460890 460898 460895",
	"SPELL_AURA_APPLIED_DOSE 460890",
	"SPELL_AURA_REMOVED 460898 460895",
	"SPELL_CAST_SUCCESS 462619"
)

--TODO, which Meteor spellId to warn for. 460883 (cast success) fires first but might be too early. 462583 (Cast start) fires second
local warnMeltArmor		= mod:NewStackAnnounce(460890, 2)
local warnAdds			= mod:NewSpellAnnounce(462619, 2)

-- "<278.47 23:00:13> [CLEU] SPELL_AURA_APPLIED#Player-5826-026A3C71#Zred#Player-5826-026A3C71#Zred#460898#Heart of Ash#DEBUFF#nil#nil#nil#nil#nil",
-- "<278.47 23:00:13> [CLEU] SPELL_AURA_APPLIED#Player-5826-01FA1F88#Glassy#Player-5826-01FA1F88#Glassy#460895#Heart of Cinder#DEBUFF#nil#nil#nil#nil#nil",
-- only have limited data, but might be on a 35 second cooldown and happen first at about 20 second after pull
local timerHearts	= mod:NewCDTimer(35, 460898)
local warnHearts	= mod:NewTargetNoFilterAnnounce(460898, 4)
local specWarnHeart	= mod:NewSpecialWarningMoveTo(460898, nil, nil, nil, 3, 2)
local yellHeart		= mod:NewIconTargetYell(460898)

local ashTarget, cinderTarget

function mod:OnCombatStart(delay)
	ashTarget = nil
	cinderTarget = nil
	timerHearts:Start(20 - delay)
end

function mod:FoundBothHeartTargets()
	if ashTarget == UnitName("player") then
		specWarnHeart:Show(cinderTarget) -- TODO: include icon here explicitly (icon will likely be set by someone else and not yet available)
	elseif cinderTarget == UnitName("player") then
		specWarnHeart:Show(ashTarget)
	end
	ashTarget = nil
	cinderTarget = nil
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(460890) then
		local uId = DBM:GetRaidUnitId(args.destName)
		if self:IsTanking(uId, nil, nil, false, args.sourceGUID) then
			local amount = args.amount or 1
			warnMeltArmor:Show(args.destName, amount)
		end
	elseif args:IsSpell(460898, 460895) then
		warnHearts:PreciseShow(2, args.destName)
		if args:IsPlayer() then
			for i = 0, 10, 2 do
				yellHeart:Schedule(i, 8)
			end
			specWarnHeart:Play("bombyou")
		end
		if args:IsSpell(460898) then
			timerHearts:Start()
			self:SetIcon(args.destName, 1)
			ashTarget = args.destName
			if cinderTarget then
				self:FoundBothHeartTargets()
			end
		end
		if args:IsSpell(460895) then
			self:SetIcon(args.destName, 2)
			cinderTarget = args.destName
			if ashTarget then
				self:FoundBothHeartTargets()
			end
		end
	end
end
mod.SPELL_AURA_APPLIED_DOSE = mod.SPELL_AURA_APPLIED

-- TODO: should we also handle UNIT_DIED for clearing the variable? but doesn't really matter
function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpell(460898, 460895) then
		self:RemoveIcon(args.destName)
		if args:IsPlayer() then
			yellHeart:Cancel()
		end
		if args:IsSpell(460898) then
			cinderTarget = nil
		elseif args:IsSpell(460895) then
			ashTarget = nil
		end
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(462619) then
		warnAdds:Show()
	end
end
