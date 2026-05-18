local mod	= DBM:NewMod("RazuviousVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetMinSyncRevision(20260419000000) -- 2026, April 19th
mod:DisableHardcodedOptions()
mod:SetCreatureID(16061)
mod:SetEncounterID(1113)
mod:SetModelID(16582)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Pull1, L.Pull2, L.Pull3, L.Pull4)

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 29107 29060 29061",
	"UNIT_SPELLCAST_SUCCEEDED",
	"UNIT_DIED"
)

-- New spell ID found in logs on SoD
-- 1225423 (Disarm) cast by Understudies, TBD if we want to do something with that
local isPriest 				= select(2, UnitClass("player")) == "PRIEST"
local warnShoutNow			= mod:NewSpellAnnounce(29107, 4, 6673)
local warnShoutSoon			= mod:NewSoonAnnounce(29107, 3, 6673, "ManaUser")
local warnShieldWall		= mod:NewTargetNoFilterAnnounce(29061, 2, nil, "Dps")

local timerShout			= mod:NewCDTimer(25.9, 29107, nil, "ManaUser", nil, 2, 6673, DBM_COMMON_L.DEADLY_ICON, true, 1, 5)
local timerTaunt			= mod:NewCDTimer(60, 29060, nil, isPriest, nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerShieldWall		= mod:NewBuffActiveTimer(20, 29061, nil, "Dps", nil, 5, nil, DBM_COMMON_L.DAMAGE_ICON)
local timerMindExhaustionCD	= mod:NewCDNPTimer(60, 29051, nil, isPriest, nil, 5)

function mod:OnCombatStart()
	timerShout:Start()
	warnShoutSoon:Schedule(19)
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(29107) then
		if DBM:IsSeasonal("SeasonOfDiscovery") then
			-- Might be the same as the initial pull on SoD
			timerShout:Start("v25.4-27.3")
		else
			timerShout:Start()
		end
		warnShoutNow:Show()
		warnShoutSoon:Schedule(20)
	elseif args:IsSpell(29060) and args:IsPetSource() then -- Taunt
		timerTaunt:Start(60, args.sourceGUID)
	elseif args:IsSpell(29061) and args:IsPetSource() then -- ShieldWall
		timerShieldWall:Start(20, args.sourceGUID)
		warnShieldWall:Schedule(15)
	end
end

function mod:UNIT_SPELLCAST_SUCCEEDED(uId, _, spellId)
	if spellId == 29051 then
		local guid = UnitGUID(uId)
		if guid then
			local cid = self:GetCIDFromGUID(guid)
			if cid == 16803 then
				self:SendSync("MindExhaustion", guid)
			end
		end
	end
end

function mod:OnSync(event, guid)
    if event == "MindExhaustion" and guid then
        timerMindExhaustionCD:Start(guid)
    end
end

function mod:UNIT_DIED(args)
	if self:GetCIDFromGUID(args.destGUID) == 16803 then
		timerTaunt:Stop(args.destGUID)
		timerShieldWall:Stop(args.destGUID)
		timerMindExhaustionCD:Stop(args.destGUID)
	end
end
