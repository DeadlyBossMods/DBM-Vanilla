local Skarloc = DBM:NewBossMod("Skarloc", DBM_SKARLOC_NAME, DBM_SKARLOC_DESCRIPTION, DBM_HILLSBRAD, DBM_COT_TAB, 1)

Skarloc.Version	= "0.1"
Skarloc.Author	= "Arta"

Skarloc:SetCreatureID(17862)
Skarloc:RegisterCombat("combat")

Skarloc:RegisterEvents(
)

function Skarloc:OnEvent(event, args)
end

