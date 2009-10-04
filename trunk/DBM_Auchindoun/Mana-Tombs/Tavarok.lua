local Tavarok = DBM:NewBossMod("Tavarok", DBM_TAVAROK_NAME, DBM_TAVAROK_DESCRIPTION, DBM_TOMBS, DBM_AUCH_TAB, 2);

Tavarok.Version	= "0.1";
Tavarok.Author	= "Arta";

Tavarok:RegisterCombat("COMBAT");

Tavarok:RegisterEvents(
);

function Tavarok:OnEvent(event, args)
end
