local mod = DBM:NewMod(549, "DBM-Party-BC", 15, 254)
local L = mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))

mod:SetCreatureID(20885)
mod:RegisterCombat("combat")

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 39013 36144 36175 36142",
	"SPELL_AURA_APPLIED 39009 36173",
	"SPELL_AURA_REMOVED 39009 36173"
)

local warnGift			= mod:NewTargetAnnounce(39009, 3)

local specwarnWhirlwind	= mod:NewSpecialWarningRun(36175, "Melee", nil, nil, 4)
local specwarnHeal		= mod:NewSpecialWarningInterrupt(39013, "-Healer")

local timerGift			= mod:NewTargetTimer("OptionVersion2", 10, 39009, nil, false)

function mod:SPELL_CAST_START(args)
	if args:IsSpellID(39013, 36144) then
		specwarnHeal:Show()
	elseif args:IsSpellID(36175, 36142) then
		specwarnWhirlwind:Show()
	end
end

function mod:SPELL_AURA_APPLIED(args)
	if args:IsSpellID(39009, 36173) then
		warnGift:Show(args.destName)
		timerGift:Start(args.destName)
	end
end

function mod:SPELL_AURA_REMOVED(args)
	if args:IsSpellID(39009, 36173) then
		timerGift:Cancel(args.destName)
	end
end