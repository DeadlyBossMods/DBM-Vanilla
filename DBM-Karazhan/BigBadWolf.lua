local mod	= DBM:NewMod("BigBadWolf", "DBM-Karazhan")
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision$"):sub(12, -3))
mod:SetCreatureID(17521)
mod:SetModelID(17053)
mod:RegisterCombat("yell", L.DBM_BBW_YELL_1)

mod:RegisterEvents(
	"SPELL_AURA_APPLIED"
)

local warningFearSoon	= mod:NewSoonAnnounce(30752, 2)
local warningFear		= mod:NewSpellAnnounce(30752, 3)
local warningRRHSoon	= mod:NewSoonAnnounce(30753, 3)
local warningRRH		= mod:NewTargetAnnounce(30753, 4)

local specWarnRRH		= mod:NewSpecialWarningYou(30753)

local timerRRH			= mod:NewTargetTimer(20, 30753)
local timerRRHCD		= mod:NewNextTimer(30, 30753)
local timerFearCD		= mod:NewNextTimer(24, 30752)

mod:AddBoolOption("RRHIcon")

function mod:SPELL_AURA_APPLIED(args)
	if args.spellId == 30753 then
		warningRRH:Show(args.destName)
		timerRRH:Start(args.destName)
		timerRRHCD:Start()
		warningRRHSoon:Cancel()
		warningRRHSoon:Schedule(25)
		if args:IsPlayer() then
			specWarnRRH:Show()
		end
		if self.Options.RRHIcon then
			self:SetIcon(args.destName, 8, 20)
		end
	elseif args.spellId == 30752 and self:AntiSpam() then
		warningFear:Show()
		warningFearSoon:Cancel()
		warningFearSoon:Schedule(19)
		timerFearCD:Start()
	end
end
