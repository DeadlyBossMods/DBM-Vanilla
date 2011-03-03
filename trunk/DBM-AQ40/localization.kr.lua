if GetLocale() ~= "koKR" then return end
local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "예언자 스케람"
}

L:SetOptionLocalization{
	SetIconOnMC		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(785)
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "벌레 무리"
}
L:SetMiscLocalization{
	Yauj	= "공주 야우즈",
	Vem		= "벰",
	Kri		= "군주 크리"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "전투감시병 살투라"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "불굴의 판크리스"
}
L:SetWarningLocalization{
	WarnWound	= "%s : >%s< (%s)"
}
L:SetOptionLocalization{
	WarnWound = DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(25646, GetSpellInfo(25646) or "unknown")
}
--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "비시디우스"
}
L:SetWarningLocalization{
	WarnFreeze	= "빙결 : %d/3",
	WarnShatter	= "분해 : %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "빙결 상태 알림",
	WarnShatter	= "분해 상태 알림",
}
L:SetMiscLocalization{
	Phase4 	= "분해되기 시작합니다!",
	Phase5 	= "부서질 것 같습니다!",
	Phase6 	= "폭발"
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "공주 후후란"
}
L:SetWarningLocalization{
	WarnAcid	= "%s : >%s< (%s)"
}
L:SetOptionLocalization{
	WarnAcid	= DBM_CORE_AUTO_ANNOUNCE_OPTIONS.spell:format(26180, GetSpellInfo(26180) or "unknown")
	}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "쌍둥이 제왕"
}
L:SetMiscLocalization{
	Veklor = "제왕 베클로어",
	Veknil = "제왕 베크닐라쉬"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "크툰"
}
L:SetWarningLocalization{
	WarnEyeTentacle			= "눈달린 촉수",
	WarnClawTentacle		= "발톱 촉수",
	WarnGiantEyeTentacle	=  "거대한 눈달린 촉수",
	WarnGiantClawTentacle	= "거대한 발톱 촉수",
	WarnWeakened			= "45초간 약화!"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "눈달린 촉수",
	TimerGiantEyeTentacle	= "거대한 눈달린 촉수",
	TimerClawTentacle		= "발톱 촉수",
	TimerGiantClawTentacle	= "거대한 발톱 촉수",
	TimerWeakened			= "약화"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "눈달린 촉수 알림",
	WarnClawTentacle		= "발톱 촉수 알림",
	WarnGiantEyeTentacle	=  "거대한 눈달린 촉수 알림",
	WarnGiantClawTentacle	= "거대한 발톱 촉수 알림",
	WarnWeakened			= "약화 알림",
	TimerEyeTentacle		= "눈달린 촉수 타이머 보기",
	TimerGiantEyeTentacle	= "거대한 눈달린 촉수 타이머 보기",
	TimerClawTentacle		= "발톱 촉수 타이머 보기",
	TimerGiantClawTentacle = "거대한 발톱 촉수 타이머 보기",
	TimerWeakened			= "약화 타이머 보기",
	RangeFrame				= "거리 프레임 표시"
}
L:SetMiscLocalization{
	Weakened 	= "약해집니다!",
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "아우로"
}
L:SetWarningLocalization{
	WarnSubmerge		= "잠수",
	WarnEmerge			= "등장",
	WarnSubmergeSoon	= "곧 잠수",
	WarnEmergeSoon		= "등장"
}
L:SetTimerLocalization{
	TimerSubmerge		= "잠수",
	TimerEmerge			= "등장"
}
L:SetOptionLocalization{
	WarnSubmerge		= "잠수 경고 보기",
	WarnSubmergeSoon	= "잠수 사전 경고 보기",
	TimerSubmerge		= "잠수 타이머 보기",
	WarnEmerge			= "등장 경고 보기",
	WarnEmergeSoon		= "등장 사전 경고 보기",
	TimerEmerge			= "등장 타이머 보기"
}