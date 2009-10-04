local Epoch = DBM:NewBossMod("Epoch", DBM_EPOCH_NAME, DBM_EPOCH_DESCRIPTION, DBM_HILLSBRAD, DBM_COT_TAB, 3);

Epoch.Version	= "0.1";
Epoch.Author	= "Arta";

Epoch:RegisterCombat("COMBAT");

Epoch:RegisterEvents(
);

function Epoch:OnEvent(event, args)
end

