local Quagmirran = DBM:NewBossMod("Quagmirran", DBM_QUAGMIRRAN_NAME, DBM_QUAGMIRRAN_DESCRIPTION, DBM_SLAVE_PENS, DBM_COILFANG_TAB, 3)

Quagmirran.Version	= "0.1"
Quagmirran.Author	= "Arta"

Quagmirran:SetCreatureID(17942)
Quagmirran:RegisterCombat("combat")

Quagmirran:RegisterEvents(
)

function Quagmirran:OnEvent(event, args)
end

