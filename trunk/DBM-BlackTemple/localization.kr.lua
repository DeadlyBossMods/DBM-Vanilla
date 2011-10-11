if GetLocale() ~= "koKR" then return end
local L

-----------------
--  Najentus  --
-----------------
L = DBM:GetModLocalization("Najentus")

L:SetGeneralLocalization{
	name = "대장군 나젠투스"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	SpineIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(39837),
	RangeFrame	= "거리 프레임 보기(10 m)",
	InfoFrame	= "체력 정보 프레임 보기(8800 미만)"
}

L:SetMiscLocalization{
}

----------------
-- Supremus --
----------------
L = DBM:GetModLocalization("Supremus")

L:SetGeneralLocalization{
	name = "궁극의 심연"
}

L:SetWarningLocalization{
	WarnPhase		= "%s 단계",
	WarnPhaseSoon	= "10초 후 %s 단계",
	WarnKite		= "추적 : >%s<"
}

L:SetTimerLocalization{
	TimerPhase		= "다음 %s 단계"
}

L:SetOptionLocalization{
	WarnPhase		= "단계 전환 경고 보기",
	WarnPhaseSoon	= "단계 전환 사전 경고 보기(prewarn)",
	WarnKite		= "추적 대상 알리기",
	TimerPhase		= "단계 전환 타이머 보기",
	KiteIcon		= "추적 대상에게 전술 목표 아이콘 설정",
	KiteWhisper		= "추적 대상에게 귓속말 보내기"
}

L:SetMiscLocalization{
	PhaseKite		= "땅이 갈라져서 열리기 시작합니다!",
	PhaseTank		= "분노하여 땅을 내리찍습니다!",
	ChangeTarget	= "새로운 대상이 필요합니다!",
	KiteWhisper		= "당신에게 추적! 도망가세요!",
	Kite			= "추적",
	Tank			= "탱킹",
}

-------------------------
--  Shape of Akama  --
-------------------------
L = DBM:GetModLocalization("Akama")

L:SetGeneralLocalization{
	name = "아카마의 망령"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
}

L:SetMiscLocalization{
}

-------------------------
--  Teron Gorefiend  --
-------------------------
L = DBM:GetModLocalization("TeronGorefiend")

L:SetGeneralLocalization{
	name = "테론 고어핀드"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
	TimerVengefulSpirit		= "유령 : %s"
}

L:SetOptionLocalization{
	TimerVengefulSpirit		= "복수심에 불타는 영혼 유지 타이머 보기",
	CrushIcon				= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(40243),
}

L:SetMiscLocalization{
}

----------------------------
--  Gurtogg Bloodboil  --
----------------------------
L = DBM:GetModLocalization("Bloodboil")

L:SetGeneralLocalization{
	name = "구르토그 블러드보일"
}

L:SetWarningLocalization{
	WarnRageEnd		= "마의 분노 종료",
}

L:SetTimerLocalization{
	TimerRageEnd	= "마의 분노 종료"
}

L:SetOptionLocalization{
	WarnRageEnd		= "$spell:40604 종료 경고 보기",
	TimerRageEnd	= "$spell:40604 종료 타이머 보기"
}

L:SetMiscLocalization{
}

--------------------------
--  Essence Of Souls  --
--------------------------
L = DBM:GetModLocalization("Souls")

L:SetGeneralLocalization{
	name = "영혼의 성물함"
}

L:SetWarningLocalization{
	WarnEnrage		= "격노",
	WarnEnrageSoon	= "5초 후 격노",
	WarnEnrageEnd	= "격노 종료 - 다음 격노는 32초 후",
	WarnMana		= "30초 후 마나 0",
}

L:SetTimerLocalization{
	TimerEnrage		= "격노",
	TimerNextEnrage	= "다음 격노",
	TimerMana		= "마나 0",
}

L:SetOptionLocalization{
	WarnEnrage		= "격노 경고 보기",
	WarnEnrageSoon	= "격노 사전 경고 보기(soon)",
	WarnEnrageEnd	= "격노 종료 경고 보기",
	WarnMana		= "2 단계 에서 마나 0 이 되기 30초 전에 경고 보기",
	TimerEnrage		= "격노 유지 타이머 보기",
	TimerNextEnrage	= "다음 격노 타이머 보기",
	TimerMana		= "마나 0이 되기 전까지 남은 타이머 보기",
	SpiteWhisper	= "$spell:41376 대상에게 귓속말 보내기",
	DrainIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41303),
	SpiteIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41376),
}

L:SetMiscLocalization{
	Pull			= "너희를 기다리는 건 고통과 슬픔뿐이야!",
	Enrage			= "%s|1이;가; 분노에 휩싸입니다!",
	Phase2			= "선택은 자유지만... 대가는 치러야 하는 법.",
	Phase2d			= "[악마어] Kanrethad Zennshinagas Zilthuras Teamanare Revola Asj",
	Phase3			= "각오해라. 내가 살아났다!",
	SpiteWhisper	= "당신에게 원한!",
	Suffering		= "고뇌의 정수",
	Desire			= "욕망의 정수",
	Anger			= "격노의 정수"
}

-----------------------
--  Mother Shahraz --
-----------------------
L = DBM:GetModLocalization("Shahraz")

L:SetGeneralLocalization{
	name = "대모 샤라즈"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	FAIcons		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41001),
	FAWhisper	= "$spell:41001 대상에게 귓속말 보내기"
}

L:SetMiscLocalization{
	FAWhisper	= "당신에게 치명적인 매력!"
}

----------------------
--  Illidari Council  --
----------------------
L = DBM:GetModLocalization("Council")

L:SetGeneralLocalization{
	name = "일리다리 의회"
}

L:SetWarningLocalization{
	WarnFadeSoon	= "5초 후 베라스 등장",
	WarnFaded		= "소멸 종료 - 베라스 등장",
	WarnDevAura		= "30초간 기원의 오라",
	WarnResAura		= "30초간 마력 저항의 오라",
	Immune			= "말란데 - 15초간 %s 면역!"
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	WarnFadeSoon	= "$spell:41476이 사라지기 전 사전 경고 보기(prewarn)",
	WarnFaded		= "$spell:41476이 사라질 때 경고 보기",
	WarnDevAura		= "$spell:41452 경고 보기",
	WarnResAura		= "$spell:41453 경고 보기",
	Immune			= "말란데가 물리 또는 주문 면역 효과를 얻었을 때 특수 경고 보기",
	PoisonIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41485),
	PoisonWhisper	= "$spell:41485 대상에게 귓속말 보내기",
}

L:SetMiscLocalization{
	Gathios			= "파괴자 가디오스",
	Malande			= "여군주 말란데",
	Zerevor			= "고위 황천술사 제레보르",
	Veras			= "베라스 다크섀도",
	Melee			= "물리",
	Spell			= "주문",
	PoisonWhisper	= "당신에게 맹독!"
}

-------------------------
--  Illidan Stormrage --
-------------------------
L = DBM:GetModLocalization("Illidan")

L:SetGeneralLocalization{
	name = "일리단 스톰레이지"
}

L:SetWarningLocalization{
	WarnPhase2Soon	= "곧 2 단계",
	WarnPhase4Soon	= "곧 4 단계",
	WarnHuman		= "인간 형상",
	WarnHumanSoon	= "곧 인간 형상",
	WarnDemon		= "악마 형상",
	WarnDemonSoon	= "곧 악마 형상",
}

L:SetTimerLocalization{
	TimerCombatStart	= "전투 시작",
	TimerNextHuman		= "다음 인간 형상",
	TimerNextDemon		= "다음 악마 형상",
	TimerPhase4			= "단계 전환",
}

L:SetOptionLocalization{
	WarnPhase2Soon	= "2 단계 사전 경고 보기(75% 이하)",
	WarnPhase4Soon	= "4 단계 사전 경고 보기(35% 이하)",
	WarnHuman		= "인간 형상 경고 보기",
	WarnHumanSoon	= "인간 형상 사전 경고 보기(prewarn)",
	WarnDemon		= "악마 형상 경고 보기",
	WarnDemonSoon	= "악마 형상 사전 경고 보기(prewarn)",
	TimerCombatStart= "전투 시작 타이머 보기",
	TimerNextHuman	= "다음 인간 형상 타이머 보기",
	TimerNextDemon	= "다음 악마 형상 타이머 보기",
	TimerPhase4		= "4 단계에서 전환 타이머 보기",
	ParasiteIcon	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(41917),
	ParasiteWhisper	= "$spell:41917 대상에게 귓속말 보내기",
	RangeFrame		= "거리 프레임이 필요하게 될 때 거리 프레임 보기"
}

L:SetMiscLocalization{
	Pull			= "아카마, 너의 불충은 그리 놀랍지도 않구나. 너희 흉측한 형제들을 벌써 오래전에 없애버렸어야 했는데...",
	Eyebeam			= "배신자의 눈을 똑바로 쳐다봐라!",
	Demon			= "내 안에 깃든... 악마의 힘을 보여주마!",
	Phase4			= "필멸의 종족들이여, 나에 대한 증오가 고작 이 정도냐?",
	ParasiteWhisper	= "당신에게 마귀!",
}
