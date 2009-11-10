local Muselek = DBM:NewBossMod("Muselek", DBM_MUSELEK_NAME, DBM_MUSELEK_DESCRIPTION, DBM_UNDERBOG, DBM_COILFANG_TAB, 6)

Muselek.Version	= "0.1"
Muselek.Author	= "Arta"

Muselek:SetCreatureID(17826)
Muselek:RegisterCombat("combat")

Muselek:RegisterEvents(
)

function Muselek:OnEvent(event, args)
end

