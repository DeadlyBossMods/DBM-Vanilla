local Deja = DBM:NewBossMod("Deja", DBM_DEJA_NAME, DBM_DEJA_DESCRIPTION, DBM_BLACK_MORASS, DBM_COT_TAB, 4)

Deja.Version	= "0.1"
Deja.Author	= "Arta"

Deja:SetCreatureID(17879)
Deja:RegisterCombat("combat")

Deja:RegisterEvents(
)

function Deja:OnEvent(event, args)
end

