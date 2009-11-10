local Sarannis = DBM:NewBossMod("Sarannis", DBM_SARANNIS_NAME, DBM_SARANNIS_DESCRIPTION, DBM_BOTANICA, DBM_TK_TAB, 4)

Sarannis.Version	= "0.1"
Sarannis.Author		= "Arta"

Sarannis:SetCreatureID(17976)
Sarannis:RegisterCombat("combat")

Sarannis:RegisterEvents(
)

function Sarannis:OnEvent(event, args)
end