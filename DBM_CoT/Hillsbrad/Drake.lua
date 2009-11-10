local Drake = DBM:NewBossMod("Drake", DBM_DRAKE_NAME, DBM_DRAKE_DESCRIPTION, DBM_HILLSBRAD, DBM_COT_TAB, 2)

Drake.Version	= "0.1"
Drake.Author	= "Arta"

Drake:SetCreatureID(17848)
Drake:RegisterCombat("combat")

Drake:RegisterEvents(
)

function Drake:OnEvent(event, args)
end

