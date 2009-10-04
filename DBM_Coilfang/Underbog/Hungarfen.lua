local Hungarfen = DBM:NewBossMod("Hungarfen", DBM_HUNGARFEN_NAME, DBM_HUNGARFEN_DESCRIPTION, DBM_UNDERBOG, DBM_COILFANG_TAB, 4);

Hungarfen.Version	= "0.1";
Hungarfen.Author	= "Arta";

Hungarfen:RegisterCombat("COMBAT");

Hungarfen:RegisterEvents(
);

function Hungarfen:OnEvent(event, args)
end

