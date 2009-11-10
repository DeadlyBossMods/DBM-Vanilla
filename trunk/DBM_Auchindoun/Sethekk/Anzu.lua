local Anzu = DBM:NewBossMod("Anzu", DBM_ANZU_NAME, DBM_ANZU_DESCRIPTION, DBM_SETHEKK, DBM_AUCH_TAB, 9)

Anzu.Version	= "0.1"
Anzu.Author	= "Arta"

Anzu:SetCreatureID(23035)
Anzu:RegisterCombat("combat")

Anzu:RegisterEvents(
)

function Anzu:OnEvent(event, args)
end

