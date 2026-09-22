local isClassic = DBM:IsVanilla()
local isBCC = DBM:IsTBC()
local isWrath = DBM:IsWrath()
local catID
if isWrath then
	catID = 5
elseif isBCC or isClassic then
	catID = 6
else--retail or cataclysm classic and later
	catID = 4
end
local mod	= DBM:NewMod("Geddon", "DBM-Raids-Vanilla", catID)
local L		= mod:GetLocalizedStrings()

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(DBM:IsSeasonal("SeasonOfDiscovery") and 228433 or 12056)
mod:SetEncounterID(668)
mod:SetModelID(12129)
mod:SetHotfixNoticeRev(20240730000000)
mod:SetZone(409)

mod:RegisterCombat("combat")
if DBM:IsRestricted() then
	mod:AddAuraSoundOption(20475, true, 20475, 1, 1, "bombyou", 12, 0)--TODO, add SoD spellids?
	mod:AddAuraSoundOption(19659, "ManaUser", 19659, 1, 1, "debuffyou", 17, 0)
else
	if DBM:IsSeasonal("SeasonOfDiscovery") then
		mod:SetUsedIcons(8, 7, 6)
	else
		mod:SetUsedIcons(8)
	end
	mod:RegisterEventsInCombat(
		"SPELL_AURA_APPLIED 20475 19659 461090 461105 462402 465725",
		"SPELL_AURA_REMOVED 20475 19659 461090 461105 462402 465725",
		"SPELL_CAST_SUCCESS 19695 19659 20478 20475 461090 461105 462402 461110 461121 465725 461087"
	)

	-- 461090 461105 462402 seem to be bombs on SoD (only confirmed first one at heat level 1)

	--[[
	(ability.id = 19695 or ability.id = 19659 or ability.id = 20478 or ability.id = 461090 or ability.id = 461105 or ability.id = 462402 or ability.id = 461110 or ability.id = 461121) and type = "cast"
	--]]
	local warnIgnite		= mod:NewSpellAnnounce(19659, 3, nil, "ManaUser")
	local warnInferno		= mod:NewSpellAnnounce(19695, 3)
	local warnBomb			= mod:NewTargetNoFilterAnnounce(20475, 4)

	local specWarnArma		= mod:NewSpecialWarningSpell(20478)
	local specWarnIgnite	= mod:NewSpecialWarningDispel(19659, "RemoveMagic", nil, nil, 1, 2, nil, nil, "dispelnow")
	local specWarnInferno	= mod:NewSpecialWarningRun(19695, "Melee", nil, nil, 4, 2, nil, nil, "aesoon")
	local specWarnBomb		= mod:NewSpecialWarningYou(20475, nil, nil, nil, 3, 2, nil, nil, "bombyou")
	local yellBomb			= mod:NewYell(20475)
	local yellBombFades		= mod:NewShortFadesYell(20475)

	local timerIgniteManaCD  = mod:NewVarTimer("v25.9-44", 19659, nil, "RemoveMagic", nil, 2)
	local timerInfernoCD     = mod:NewVarTimer("v21-37.2", 19695, nil, "Melee", nil, 2)
	local timerInferno       = mod:NewBuffActiveTimer(8, 19695, nil, "Melee|Healer", nil, 5, nil, DBM_COMMON_L.HEALER_ICON)
	local timerBombCD        = mod:NewVarTimer("v11.3-30.1", 20475, nil, nil, nil, 3)
	local timerBomb          = mod:NewTargetTimer(8, 20475, nil, nil, nil, 5, nil, DBM_COMMON_L.HEALER_ICON)
	local timerArmageddon    = mod:NewCastTimer(8, 20478, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON, nil, nil, nil, nil, nil, nil, nil, true)

	mod:AddInfoFrameOption(19659, "RemoveMagic")

	local igniteTargets = {}
	local updateIgniteFrame
	do
		local twipe = table.wipe
		local lines, sortedLines = {}, {}
		updateIgniteFrame = function()
			twipe(lines)
			twipe(sortedLines)
			for name in pairs(igniteTargets) do
				sortedLines[#sortedLines + 1] = name
				lines[name] = ""
			end
			return lines, sortedLines
		end
	end

	mod:AddSetIconOption("SetIconOnBombTarget", 20475, false, 0, {8, 7, 6}) -- up to 3 bombs on heat level 3 (TODO: confirm)

	local function shouldShowInfernoGtfo()
		if mod:IsTank() then
			return false
		end
		return mod:IsEvent() or not mod:IsTrivial()
	end

	-- Inferno
	mod:NewGtfo{
		spell = "19698 461088",
		spellAura = "364838 461111",
		spellPeriodicDamage = false,
		filter = shouldShowInfernoGtfo
	}

	-- Bomb residue in SoD
	if DBM:IsSeasonal("SeasonOfDiscovery") then
		mod:NewGtfo{
			spell = 461103,
			spellDamage = false,
		}
	end

	function mod:OnCombatStart()
		table.wipe(igniteTargets)
		timerIgniteManaCD:Start("v6.3-27.5")
		timerInfernoCD:Start("v11.3-33.4")
		timerBombCD:Start("v11.3-30.7")
	end

	function mod:OnCombatEnd()
		table.wipe(igniteTargets)
		if DBM:UnitDebuff("player", 20475) then
			specWarnBomb:Show()
			specWarnBomb:Play("bombyou")
			yellBomb:Yell()
		end
	end

	local function UpdateIgniteFrame()
		if not mod.Options.InfoFrame then return end
		if next(igniteTargets) then
			if not DBM.InfoFrame:IsShown() then
				DBM.InfoFrame:SetHeader(DBM:GetSpellInfo(19659))
				DBM.InfoFrame:Show(20, "function", updateIgniteFrame)
			else
				DBM.InfoFrame:UpdateTable(updateIgniteFrame)
			end
		else
			DBM.InfoFrame:Hide()
		end
	end

	local bombIcon = 8

	function mod:SPELL_AURA_APPLIED(args)
		if args:IsSpell(20475, 461090, 461105, 462402, 465725) then
			timerBomb:Start(args.destName)
			if self.Options.SetIconOnBombTarget then
				self:SetIcon(args.destName, bombIcon)
				bombIcon = bombIcon - 1
			end
			if args:IsPlayer() then
				specWarnBomb:Show()
				specWarnBomb:Play("bombyou")
				if self:IsEvent() or not self:IsTrivial() then
					yellBomb:Yell()
					yellBombFades:Countdown(8)
				end
			end
			warnBomb:CombinedShow(0.1, args.destName)
		elseif args:IsSpell(19659) and args:IsDestTypePlayer() then
			igniteTargets[args.destName] = true
			UpdateIgniteFrame()
			if self.Options.SpecWarn19659dispel and args:IsDestTypePlayer() then
				specWarnIgnite:CombinedShow(0.5, args.destName)
				specWarnIgnite:ScheduleVoice(0.5, "dispelnow")
			end
		end
	end

	function mod:SPELL_AURA_REMOVED(args)
		if args:IsSpell(20475, 461090, 461105, 462402, 465725) then
			timerBomb:Stop(args.destName)
			if self.Options.SetIconOnBombTarget then
				self:SetIcon(args.destName, 0)
			end
			if args:IsPlayer() then
				yellBombFades:Cancel()
			end
		elseif args:IsSpell(19659) and args:IsDestTypePlayer() then
			igniteTargets[args.destName] = nil
			UpdateIgniteFrame()
		end
	end

	function mod:SPELL_CAST_SUCCESS(args)
		if args:IsSpell(19695, 461110, 461087) then
			if self:IsEvent() or not self:IsTrivial() then
				specWarnInferno:Show()
				specWarnInferno:Play("aesoon")
			else
				warnInferno:Show()
			end
			timerInferno:Start()
			timerInfernoCD:Start()
		elseif args:IsSpell(19659) then
			if not self.Options.SpecWarn19659dispel then
				warnIgnite:Show()
			end
			timerIgniteManaCD:Start()
		elseif args:IsSpell(20478, 461121) then
			specWarnArma:Show()
			timerArmageddon:Start(nil, args.sourceGUID)
		elseif args:IsSpell(20475, 461090, 461105, 462402, 465725) then
			bombIcon = 8
			timerBombCD:Start()
		end
	end
end
