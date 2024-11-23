-- TODO: This should be moved to core, but the dependency on core is a bit annoying while this is in a mostly experimental state

-- A bit hacky, but works since the dev build requirement for tests was removed.
---@class DBMCoreNamespace
local private = DBM.Test:GetPrivate()

---@class DBM
local DBM = private:GetPrototype("DBM")

---@class DBMMod
local bossMod = private:GetPrototype("DBMMod")

---@alias DBMBlockEventFilter fun(spellId: integer, spellName: string, srcGuid: string, dstGuid: string): boolean

---@class GtfoBlockConfig
---@field spell number|string: Main spell ID used for option and events
---@field spellAura number|string|false?: Override spell ID for SPELL_AURA_APPLIED
---@field spellDamage number|string|false?: Override spell ID for SPELL_DAMAGE/MISSED
---@field spellPeriodicDamage number|string|false?: Override spell ID for SPELL_PERIOD_DAMAGE/MISSED
---@field voice string|false?: Voice pack to play, default: "watchfeet"
---@field specWarn SpecAnnounce1str?: Special warning, defaults to a GTFO special warning
---@field antiSpam number?: AntiSpam delay, default: 2.5
---@field antiSpamId string|number?: ID to share AntiSpam across warnings, default: "gtfo"
---@field filter DBMBlockEventFilter?: Function that can return false to filter out a warning

---@param config GtfoBlockConfig
function bossMod:NewGtfo(config)
	local optionSpellId = type(config.spell) == "string" and tonumber(config.spell:match("(%d+)")) or config.spell
	local specWarn = config.specWarn or self.mergedGtfoWarning or self:NewSpecialWarningGTFO(optionSpellId, nil, nil, nil, 1, 8)
	self.mergedGtfoWarning = specWarn
	local function show(spellId, spellName, srcGuid, destGuid)
		if config.filter and not config.filter(spellName, spellId, srcGuid, destGuid) then
			return
		end
		if self:AntiSpam(config.antiSpam or 2.5, "gtfo") then
			specWarn:Show(spellName)
			if config.voice ~= false then
				specWarn:Play(config.voice or "watchfeet")
			end
		end
	end
	local playerGuid = UnitGUID("player")
	local function rawHandler(_, sourceGUID, _, _, _, destGUID, _, _, _, spellId, spellName)
		if destGUID == playerGuid then
			show(spellId, spellName, sourceGUID, destGUID)
		end
	end
	local function handler(_, args)
		if args:IsPlayer() then
			show(args.spellId, args.spellName, args.sourceGUID, args.destGUID)
		end
	end
	if config.spellAura ~= false then
		self:RegisterEvent("SPELL_AURA_APPLIED", config.spellAura or config.spell, handler)
	end
	if config.spellPeriodicDamage ~= false then
		self:RegisterRawEvent("SPELL_PERIODIC_DAMAGE", config.spellPeriodicDamage or config.spellDamage or config.spell, rawHandler)
		self:RegisterRawEvent("SPELL_PERIODIC_MISSED", config.spellPeriodicDamage or config.spellDamage or config.spell, rawHandler)
	end
	if config.spellDamage ~= false then
		self:RegisterRawEvent("SPELL_DAMAGE", config.spellDamage or config.spell, rawHandler)
		self:RegisterRawEvent("SPELL_MISSED", config.spellDamage or config.spell, rawHandler)
	end
end
