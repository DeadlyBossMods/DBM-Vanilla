local mod	= DBM:NewMod("Patchwerk", "DBM-Naxx", 2)
local L		= mod:GetLocalizedStrings()

mod:SetRevision(("$Revision: 4692 $"):sub(12, -3))
mod:SetCreatureID(16028)
mod:SetModelID(16174)
mod:RegisterCombat("yell", L.yell1, L.yell2)

mod:EnableModel()

mod:RegisterEvents(
)

local enrageTimer	= mod:NewBerserkTimer(360)
local timerAchieve	= mod:NewAchievementTimer(180, 1857, "TimerSpeedKill")

function mod:OnCombatStart(delay)
	enrageTimer:Start(-delay)
	timerAchieve:Start(-delay)
end
