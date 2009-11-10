local Inciter = DBM:NewBossMod("Inciter", DBM_INCITER_NAME, DBM_INCITER_DESCRIPTION, DBM_LABYRINTH, DBM_AUCH_TAB, 10)

Inciter.Version	= "1.0"
Inciter.Author	= "Arta"

Inciter:SetCreatureID(18667)
Inciter:RegisterCombat("combat")

Inciter:RegisterEvents(
	"SPELL_CAST_START"
)

Inciter:AddOption("WarnChaos", true, DBM_INCITER_OPTION_CHAOS)
Inciter:AddBarOption("Chaos")

function Inciter:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 33676 then
			self:SendSync("Chaos")
		end
	end
end

function Inciter:OnSync(msg)
	if msg == "Chaos" then
		self:StartStatusBarTimer(15, "Chaos", 33676)
		if self.Options.WarnChaos then
			self:Announce(DBM_INCITER_WARN_CHAOS, 3)
		end
	end
end