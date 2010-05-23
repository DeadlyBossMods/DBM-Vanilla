local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "Пророк Скерам"
}

L:SetOptionLocalization{
	SetIconOnMC		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(785)
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "Bug Trio"
}
L:SetMiscLocalization{
	Yauj = "Принцесса Яудж",
	Vem = "Вем",
	Kri = "Лорд Кри"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "Боевой страж Сартура"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "Фанкрисс Непреклонный"
}
L:SetWarningLocalization{
	WarnWound	= "%s on >%s< (%s)"
}
L:SetOptionLocalization{
	WarnWound = DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(25646, GetSpellInfo(25646) or "unknown")
}
--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "Нечистотон"
}
L:SetWarningLocalization{
	WarnFreeze	= "Freeze: %d/3",
	WarnShatter	= "Shatter: %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Announce Freeze status",
	WarnShatter	= "Announce Shatter status",
}
L:SetMiscLocalization{
	Phase4 	= "begins to crack",
	Phase5 	= "looks ready to shatter",
	Phase6 	= "Explodes."
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "Принцесса Хухуран"
}
L:SetWarningLocalization{
	WarnAcid	= "%s on >%s< (%s)"
}
L:SetOptionLocalization{
	WarnAcid	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(26180, GetSpellInfo(26180) or "unknown")
	}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "Twin Emperors"
}
L:SetMiscLocalization{
	Veklor = "Император Век'лор",
	Veknil = "Император Век'нилаш"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "К'Тун"
}
L:SetOptionLocalization{
	RangeFrame	= "Show range frame"
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "Оуро"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Submerge",
	WarnEmerge			= "Emerge",
	WarnSubmergeSoon	= "Submerge soon",
	WarnEmergeSoon		= "Emerge soon"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Submerge",
	TimerEmerge			= "Emerge"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Show warning for submerge",
	WarnSubmergeSoon	= "Show pre-warning for submerge",
	TimerSubmerge		= "Show timer for submerge",
	WarnEmerge			= "Show warning for emerge",
	WarnEmergeSoon		= "Show pre-warning for emerge",
	TimerEmerge			= "Show timer for emerge"
}