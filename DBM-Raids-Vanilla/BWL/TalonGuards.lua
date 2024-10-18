local isClassic = WOW_PROJECT_ID == (WOW_PROJECT_CLASSIC or 2)
local isBCC = WOW_PROJECT_ID == (WOW_PROJECT_BURNING_CRUSADE_CLASSIC or 5)
local isWrath = WOW_PROJECT_ID == (WOW_PROJECT_WRATH_CLASSIC or 11)
local catID
if isWrath then
	catID = 4
elseif isBCC or isClassic then
	catID = 5
else--retail or cataclysm classic and later
	catID = 3
end
local mod	= DBM:NewMod("TalonGuards", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:SetCreatureID(12460, 12461, 99999)--99999 to prevent mod from ending combat after one of each talon guard type die. Mod will effectively ALWAYS wipe, but it has disabled stats/reporting so irrelevant
mod:SetModelID(12460)
mod:RegisterCombat("combat")
mod.noStatistics = true

mod:RegisterEvents(
	"PLAYER_TARGET_CHANGED",
	"SPELL_AURA_APPLIED 22277 22278 22279 22280 22281"
)

local warnVuln			= mod:NewAnnounce("WarnVulnerable", 1, nil, false)

mod:AddNamePlateOption("NPAuraOnVulnerable", 22277)

local lastAnnounce = {
	-- [guid] = schoolName
}

-- TODO: info frame with the raid target icons of the mobs would be nice

--Constants
local vulnMobs = {
	[12460] = true,--"Death Talon Wyrmguard"
	[12461] = true,--"Death Talon Overseer"
}

-- https://wow.gamepedia.com/COMBAT_LOG_EVENT
local spellInfo = {
	[2] =	{"Holy",	{r=255 / 255, g=230 / 255, b=128 / 255},	"135924"},-- Smite
	[4] =	{"Fire",	{r=255 / 255, g=128 / 255, b=0 / 255},		"135808"},-- Pyroblast
	[8] =	{"Nature",	{r=77 / 255, g=255 / 255, b=77 / 255},		"136006"},-- Wrath
	[16] =	{"Frost",	{r=128 / 255, g=255 / 255, b=255 / 255},	"135846"},-- Frostbolt
	[32] =	{"Shadow",	{r=128 / 255, g=128 / 255, b=255 / 255},	"136197"},-- Shadow Bolt
	[64] =	{"Arcane",	{r=255 / 255, g=128 / 255, b=255 / 255},	"136096"},-- Arcane Missiles
}

local vulnSpells = {
	--No Holy?
	[22277] = 4,--Fire
	[22280] = 8,--Nature
	[22278] = 16,--Frost
	[22279] = 32,--Shadow
	[22281] = 64,--Arcane
}

function mod:OnCombatStart()
	self:PLAYER_TARGET_CHANGED()
	if self.Options.NPAuraOnVulnerable then
		DBM:FireEvent("BossMod_EnableHostileNameplates")
	end
end

function mod:OnCombatEnd(...)
	table.wipe(lastAnnounce)
end

local shownNameplates = {}

local function updateNameplate(guid, texture)
	if not shownNameplates[guid] then
		shownNameplates[guid] = true
		DBM.Nameplate:Show(true, guid, 22277, texture)
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpell(22277, 22278, 22279, 22280, 22281) and vulnMobs[args:GetDestCreatureID()] then
		if self.Options.NPAuraOnVulnerable then
			local vulnSchool = vulnSpells[args.spellId]
			local info = spellInfo[vulnSchool]
			if not info then
				return
			end
			updateNameplate(args.destGUID, tonumber(info[3]))
		end
	end
end

function mod:PLAYER_TARGET_CHANGED()
	local target = UnitGUID("target")
	if not target then
		return
	end
	local cid = self:GetCIDFromGUID(target)
	if not vulnMobs[cid] then
		return
	end

	local spellId = select(10, DBM:UnitBuff("target", 22277, 22280, 22278, 22279, 22281))
	local vulnSchool = vulnSpells[spellId]
	local info = spellInfo[vulnSchool]
	if not info then
		return
	end
	updateNameplate(target, tonumber(info[3]))
	local name = L[info[1]] or info[1]
	if not lastAnnounce[target] or lastAnnounce[target] ~= name then
		---@diagnostic disable-next-line: inject-field
		warnVuln.icon = info[3]
		warnVuln:Show(name)
		lastAnnounce[target] = name
	end
end
