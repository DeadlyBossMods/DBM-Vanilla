local Shirrak = DBM:NewBossMod("Shirrak", DBM_SHIRRAK_NAME, DBM_SHIRRAK_DESCRIPTION, DBM_TOMBS, DBM_AUCH_TAB, 5)

Shirrak.Version	= "0.1"
Shirrak.Author	= "Arta"

Shirrak:SetCreatureID(18371)
Shirrak:RegisterCombat("combat")

Shirrak:RegisterEvents(
);

function Shirrak:OnEvent(event, args)
end