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
local mod	= DBM:NewMod("BWLTrash", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod.isTrashMod = true
mod:SetModelID(12460)
mod:SetZone(469)
mod:RegisterZoneCombat(469)

mod:RegisterEvents(
	"PLAYER_TARGET_CHANGED",
	"SPELL_CAST_START 22458",
	"SPELL_CAST_SUCCESS 22275 19717",
	"SPELL_AURA_APPLIED 22277 22278 22279 22280 22281 22428 19717 22275",
	"UNIT_DIED"
)

--TODO, keep warlocks alive longer to pull more portal timer data
--"Demon Portal-22372-npc:12459-0000BDADC5 = pull:54.5, 32.7",
local warnVuln					= mod:NewAnnounce("WarnVulnerable", 1, nil, false)
local warnEnrage				= mod:NewTargetNoFilterAnnounce(22428, 2, nil, "Tank|Healers|RemoveEnrage")
local warnFlamestrike			= mod:NewSpellAnnounce(22275, 2)
local warnRainofFire			= mod:NewSpellAnnounce(19717, 2)

local specWarnHealingCircle		= mod:NewSpecialWarningInterrupt(22458, nil, nil, nil, 1, 2)
local specWarnGTFO				= mod:NewSpecialWarningGTFO(22428, nil, nil, nil, 1, 8)

local timerFlameStrikeCD		= mod:NewCDNPTimer(8.1, 22275, nil, nil, nil, 3)--8.1-10.9, often it can be 10.9 repeating

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

local shownNameplates = {}

local function updateNameplate(guid, texture)
	if not shownNameplates[guid] then
		shownNameplates[guid] = true
		DBM.Nameplate:Show(true, guid, 22277, texture)
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(22458) and self:CheckInterruptFilter(args.sourceGUID, nil, true) then
		specWarnHealingCircle:Show(args.sourceName)
		specWarnHealingCircle:Play("kickcast")
	end
end

function mod:SPELL_CAST_SUCCESS(args)
	if args:IsSpell(22275) and args:GetSrcCreatureID() == 12468 then
		--"Flamestrike-22275-npc:12468-00003DADC5 = pull:374.0, 8.5, 10.9",
		--"Flamestrike-22275-npc:12468-0002BDADC5 = pull:364.3, 13.4, 10.9, 8.5",
		--"Flamestrike-22275-npc:12468-00033DADC5 = pull:352.2, 13.3, 8.5, 10.9, 10.9",
		--"Flamestrike-22275-npc:12468-0003BDADC5 = pull:322.2, 8.1, 8.5, 11.3, 10.9, 8.5, 10.9, 13.3",
		--"Flamestrike-22275-npc:12468-00043DADC5 = pull:360.7, 10.9, 10.9, 10.9",
		--"Flamestrike-22275-npc:12468-00053DADC5 = pull:239.2, 11.0, 10.9, 11.0, 10.9, 11.0",
		warnFlamestrike:Show()
		timerFlameStrikeCD:Start(nil, args.sourceGUID)
	elseif args:IsSpell(19717) then
		--"Rain of Fire-19717-npc:12459-00003DADC5 = pull:32.0, 15.8, 20.6, 13.3, 15.4, 13.7",
		--"Rain of Fire-19717-npc:12459-0000BDADC5 = pull:32.0, 15.8, 10.9, 13.3, 15.5, 18.5",
		--"Rain of Fire-19717-npc:12459-00013DADC5 = pull:205.6, 24.3, 21.8",
		--"Rain of Fire-19717-npc:12459-00033DADC5 = pull:60.7, 13.4",
		--"Rain of Fire-19717-npc:12459-0003BDADC5 = pull:41.3, 17.1, 19.4",
		--"Rain of Fire-19717-npc:12459-00053DADC5 = pull:139.6",
		--"Rain of Fire-19717-npc:12459-0005BDADC5 = pull:126.3, 13.3",
		--"Rain of Fire-19717-npc:12459-00063DADC5 = pull:126.3, 9.7",
		--"Rain of Fire-19717-npc:12459-0006BDADC5 = pull:131.1",
		warnRainofFire:Show()
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
	elseif args:IsSpell(22428) then
		--"Enrage-22428-npc:12464-00003DADC5 = pull:53.8, 20.6, 19.5, 14.6, 19.6",
		--"Enrage-22428-npc:12464-0000BDADC5 = pull:181.3, 17.0, 14.5, 15.8, 13.4, 22.0, 14.6, 16.9",
		--"Enrage-22428-npc:12464-00013DADC5 = pull:180.2, 13.3, 18.2, 12.1, 19.4, 13.4, 17.0, 16.9",
		warnEnrage:Show(args.destName)
	elseif args:IsSpell(19717, 22275) then
		if args:IsPlayer() and self:AntiSpam(3, 1) then
			specWarnGTFO:UpdateKey(args.spellId)
			specWarnGTFO:Show(args.spellName)
			specWarnGTFO:Play("watchfeet")
		end
	end
end

function mod:UNIT_DIED(args)
	local cid = self:GetCIDFromGUID(args.destGUID)
	if vulnMobs[cid] then--Death Talon Wyrmguard / Death Talon Overseer
		table.wipe(lastAnnounce)
		shownNameplates[args.destGUID] = nil
	elseif cid == 12468 then--Seether
		timerFlameStrikeCD:Stop(args.destGUID)
	end
end

function mod:StartEngageTimers(guid, cid, delay)
	if vulnMobs[cid] then--Death Talon Wyrmguard / Death Talon Overseer
		self:PLAYER_TARGET_CHANGED()
		if self.Options.NPAuraOnVulnerable then
			DBM:FireEvent("BossMod_EnableHostileNameplates")
		end
--	elseif cid == 12468 then--Seether
--		timerFlameStrikeCD:Start(8.5-delay, guid)
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
