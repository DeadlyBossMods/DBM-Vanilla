local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isWrath then
	catID = 5
elseif isBCC or isClassic then
	catID = 6
else--retail or cataclysm classic and later
	catID = 4
end
local mod	= DBM:NewMod("Golemagg", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 228435 or 11988)--, 11672
mod:SetEncounterID(670)
if not mod:IsClassic() then
	mod:SetModelID(11986)--Totally fucked on classic
end
mod:SetHotfixNoticeRev(20240724000000)

mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_SUCCESS 20553 19798 461463"
)
local specWarnFallingRocks, yellFallingRocks, timerFallingRocks
if DBM:IsSeasonal("SeasonOfDiscovery") then
	timerFallingRocks		= mod:NewCDTimer(461463, 25)
	specWarnFallingRocks	= mod:NewSpecialWarningDodge(461463, nil, nil, nil, 2, 2)
	yellFallingRocks		= mod:NewIconRepeatYell(461463)
end
local warnQuake				= mod:NewSpellAnnounce(19798)

--[=[
Falling Rocks looks like it has the target on CAST_SUCCESS, but only exactly at that moment, it switches immediately after that event
"<212.30 21:47:43> [UNIT_SPELLCAST_SUCCEEDED] Golemagg the Incinerator(25.8%-0.0%){Target:Preyxy} -Falling Rocks- [[nameplate1:Cast-3-5210-409-10629-461463-000DB3CF61:461463]]",
"<212.30 21:47:43> [UNIT_SPELLCAST_SUCCEEDED] Golemagg the Incinerator(25.8%-0.0%){Target:Preyxy} -Falling Rocks- [[target:Cast-3-5210-409-10629-461463-000DB3CF61:461463]]",
"<212.30 21:47:43> [CLEU] SPELL_CAST_SUCCESS##nil##nil#461463#Falling Rocks#nil#nil#nil#nil#nil#nil",
"<212.30 21:47:43> [UNIT_TARGET] nameplate1#Golemagg the Incinerator#Target: Mafakacoil#TargetOfTarget: Golemagg the Incinerator",
]=]

function mod:OnCombatStart()
	if timerFallingRocks then
		timerFallingRocks:Start()
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(20553, 19798) then -- not sure if both are needed, at least SoD only has 19798
		warnQuake:Show()
	elseif args:IsSpell(461463) and DBM:IsSeasonal("SeasonOfDiscovery") then
		specWarnFallingRocks:Show()
		specWarnFallingRocks:Play("watchstep")
		timerFallingRocks:Start()
		local name, _, bossUid = self:GetBossTarget(228435) -- The event somehow doesn't have a source
		if name == UnitName("player") and not self:IsTanking("player", bossUid) then -- Exclude tank cause I'm not sure if this logic is even correct
			yellFallingRocks:Show()
		end
	end
end
