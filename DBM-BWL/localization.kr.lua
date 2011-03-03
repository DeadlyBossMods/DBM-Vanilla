if GetLocale() ~= "koKR" then return end
local L

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "폭군 서슬송곳니"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "추가 몹 소환"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "첫번째 추가 몹 소환 타이머 보기"
}
L:SetMiscLocalization{
	Phase2Emote	= "Orb of Domination loses power and shuts off!",
	YellPull 	= "Intruders have breached the hatchery! Sound the alarm! Protect the eggs at all costs!\r\n"--Yes this yell actually has a return and new line in it. as grabbed by transcriptor
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name = "타락한 밸라스트라즈"
}

L:SetTimerLocalization{
	TimerCombatStart	= "전투 시작"
}

L:SetOptionLocalization{
	TimerCombatStart	= "전투 시작 타이머 보기"
}

L:SetMiscLocalization{
	Event				= "Too late, friends! Nefarius' corruption has taken hold...I cannot...control myself."
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name = "용기대장 래쉬레이어"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "화염아귀"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "에본로크"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "플레임고르"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "크로마구스"
}
L:SetWarningLocalization{
	WarnBreathSoon	= "곧 브레스",
	WarnBreath		= "%s",
	WarnPhase2Soon	= "곧 2 단계"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s 쿨다운"
}
L:SetOptionLocalization{
	WarnBreathSoon	= "브레스의 사전 경고 보기",
	WarnBreath		= "브레스를 시전할 때 알림",
	TimerBreathCD	= "브레스 쿨다운 타이머 보기",
	WarnPhase2Soon	= "2 단계 사전 경고 보기"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian")

L:SetGeneralLocalization{
	name = "네파리안(오리지널)"
}
L:SetWarningLocalization{
	WarnClassCallSoon	= "곧 직업 지목",
	WarnClassCall		= "%s 직업 지목",
	WarnPhaseSoon		= "곧 %s 단계",
	WarnPhase			= "%s 단계"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s 직업 지목"
}
L:SetOptionLocalization{
	TimerClassCall		= "직업 지목 타이머 보기",
	WarnClassCallSoon	= "직업 지목 사전 경고 보기",
	WarnClassCall		= "직업 지목 경고 보기",
	WarnPhaseSoon		= "단계 전환 사전 경고 보기",
	WarnPhase			= "단계 전환 경고 보기"
}
L:SetMiscLocalization{
	YellPull	= "흐흐흐흐... 게임을 시작하자!",
	YellP2		= "잘했다! 적들의 사기가 떨어지고 있다! 검은바위 첨탑의 군주에게 도전한 대가를 치르게 해주자!",
	YellP3		= "말도 안 돼! 일어나라! 다시 한 번 너희 주인을 섬겨라!",
	YellShaman	= "주술사",
	YellPaladin	= "성기사",
	YellDruid	= "드루이드",
	YellPriest	= "사제",
	YellWarrior	= "전사",
	YellRogue	= "도적",
	YellWarlock	= "흑마법사",
	YellHunter	= "사냥꾼",
	YellMage	= "마법사",
	YellDeathKnight	= "죽음의 기사여... 당장 이리 와라!"
}