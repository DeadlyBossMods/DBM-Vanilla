if GetLocale() ~= "frFR" then return end

local L

---------------
--  Malygos  --
---------------
L = DBM:GetModLocalization("Malygos")

L:SetGeneralLocalization({
	name = "Malygos"
})

L:SetWarningLocalization({
	WarningBreathSoon	= "Inspiration profonde Bientôt",
	WarningBreath		= "Inspiration profonde!",
	WarningSurgeYou		= "Vague de puissance sur VOUS!"
})

L:SetTimerLocalization({
	TimerBreath		= "Inspiration profonde"
})

L:SetOptionLocalization({
	WarningBreathSoon	= "Montre une Pré-Alerte pour l'Inspiration profonde",
	WarningBreath		= "Montre une alerte pour l'Inspiration profonde",
	TimerBreath			= "Montre le timer pour l'Inspiration profonde",
	WarningSurgeYou		= "Montre une alerte spéciale quand vous êtes affecté par la Vague de puissance"
})

L:SetMiscLocalization({
	YellPull		= "Ma patience a ses limites. Je vais me débarrasser de vous !",
	EmoteSpark		= "de puissance surgit",
	YellPhase2		= "Je pensais mettre rapidement fin à vos existences",
	EmoteBreath		= "inspire profondément",
	YellBreath		= "Vous n'arriverez à rien tant qu'il me restera un souffle !",
	YellPhase3		= "Vos bienfaiteurs font enfin leur entrée, mais ils arrivent trop tard !"
})

