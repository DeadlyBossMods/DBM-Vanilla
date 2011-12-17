if GetLocale() ~= "ruRU" then return end

local L

---------------
--  Malygos  --
---------------
L = DBM:GetModLocalization("Malygos")

L:SetGeneralLocalization({
	name = "Малигос"
})

L:SetWarningLocalization({
	WarningBreathSoon	= "Скоро Дыхание чар",
	WarningBreath		= "Дыхание чар"
})

L:SetTimerLocalization({
	TimerBreath	= "Дыхание чар"
})

L:SetOptionLocalization({
	WarningBreathSoon	= "Предупреждать заранее о Дыхании чар",
	WarningBreath		= "Предупреждение для Дыхания чар",
	TimerBreath			= "Отсчет времени до следующего Дыхания чар"
})

L:SetMiscLocalization({
	YellPull	= "Мое терпение лопнуло! Пора от вас избавиться!",
	EmoteSpark	= "Искра мощи появляется из ближайшей расселины!",
	YellPhase2	= "Я надеялся быстро с вами покончить",
	EmoteBreath	= "%s глубоко вдыхает.",
	YellBreath	= "Пока я дышу, вам не добиться своего!",
	YellPhase3	= "Вот и ваши благодетели появились"
})

