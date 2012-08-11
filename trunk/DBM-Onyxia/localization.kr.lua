if GetLocale() ~= "koKR" then return end

local L

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("Onyxia")

L:SetGeneralLocalization{
	name = "오닉시아"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "곧 새끼용 등장",
	WarnPhase2Soon		= "곧 2 단계",	
	WarnPhase3Soon		= "곧 3 단계"	
}

L:SetTimerLocalization{
	TimerWhelps 		= "새끼용"
}

L:SetOptionLocalization{
	TimerWhelps				= "새끼용 등장 바 표시",
	WarnWhelpsSoon			= "새끼용 등장 사전 알림 보기",
	SoundWTF				= "독특한 레이드를 즐기기 위한 웃긴 소리 재생 (가급적 비활성화 추천)",
	WarnPhase2Soon			= "2 단계 사전 알림 표시 (~70%)",	
	WarnPhase3Soon			= "3 단계 사전 알림 표시 (~45%)"	
}

L:SetMiscLocalization{ 
	YellP2 		= "쓸데없이 힘을 쓰는 것도 지루하군. 네 녀석들 머리 위에서 모조리 불살라 주마!",
	YellP3 		= "혼이 더 나야 정신을 차리겠구나!"
}
