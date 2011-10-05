if GetLocale() ~= "deDE" then return end
local L

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("Onyxia")

L:SetGeneralLocalization{
   name = "Onyxia"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "Welpen erscheinen bald",
	WarnPhase2Soon		= "Phase 2 bald",
	WarnPhase3Soon		= "Phase 3 bald"
}

L:SetTimerLocalization{
	TimerWhelps	= "Welpen erscheinen"
}

L:SetOptionLocalization{
	TimerWhelps				= "Zeige Zeit bis Welpen erscheinen",
	WarnWhelpsSoon			= "Zeige Vorwarnung für Erscheinen der Welpen",
	SoundWTF				= "Spiele witzige Sounds eines legendären Classic-Onyxia-Schlachtzuges",
	WarnPhase2Soon			= "Zeige Vorwarnung für Phase 2 (bei ~70%)",
	WarnPhase3Soon			= "Zeige Vorwarnung für Phase 3 (bei ~45%)"
}

L:SetMiscLocalization{
	YellP2 = "Diese sinnlose Anstrengung langweilt mich. Ich werde Euch alle von oben verbrennen!",
	YellP3 = "Mir scheint, dass Ihr noch eine Lektion braucht, sterbliche Wesen!"
}

