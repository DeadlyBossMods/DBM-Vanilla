local Mennu = DBM:NewBossMod("Mennu", DBM_MENNU_NAME, DBM_MENNU_DESCRIPTION, DBM_SLAVE_PENS, DBM_COILFANG_TAB, 1)

Mennu.Version	= "0.1"
Mennu.Author	= "Arta"

Mennu:SetCreatureID(17941)
Mennu:RegisterCombat("combat")

Mennu:RegisterEvents(
)

function Mennu:OnEvent(event, args)
end



