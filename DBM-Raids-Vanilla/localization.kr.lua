if GetLocale() ~= "koKR" then return end
local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "예언자 스케람"
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
--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "비시두스"
}
L:SetWarningLocalization{
	WarnFreeze	= "빙결 : %d/3",
	WarnShatter	= "분해 : %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "빙결 알림 보기",
	WarnShatter	= "분해 알림 보기"
}
L:SetMiscLocalization{
	Slow	= "느려지기 시작했습니다!",
	Freezing= "얼어붙고 있습니다!",
	Frozen	= "단단하게 얼었습니다!",
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
	WarnEyeTentacle			= "눈 달린 촉수",
	WarnClawTentacle2		= "갈고리 촉수",
	TimerGiantEyeTentacle		= "눈 달린 거대한 촉수",
	TimerGiantClawTentacle		= "거대한 발톱 촉수",
	SpecWarnWeakened		= "쑨 약화됨!"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "눈 달린 촉수",
	TimerClawTentacle		= "갈고리 촉수",
	TimerGiantEyeTentacle		= "눈 달린 거대한 촉수",
	TimerGiantClawTentacle		= "거대한 발톱 촉수",
	TimerWeakened			= "쑨 약화 종료"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "눈 달린 촉수 경고 보기",
	WarnClawTentacle2		= "갈고리 촉수 경고 보기",
	WarnGiantEyeTentacle		= "눈 달린 거대한 촉수 경고 보기",
	WarnGiantClawTentacle		= "거대한 발톱 촉수 경고 보기",
	SpecWarnWeakened		= "보스 약화시 특수 경고 보기",
	TimerEyeTentacle		= "다음 눈 달린 촉수 타이머 바 보기",
	TimerClawTentacle		= "다음 갈고리 촉수 타이머 바 보기",
	TimerGiantEyeTentacle		= "다음 눈 달린 거대한 촉수 타이머 바 보기",
	TimerGiantClawTentacle		= "다음 거대한 발톱 촉수 타이머 바 보기",
	TimerWeakened			= "보스 약화 지속시간 타이머 바 보기",
	RangeFrame				= "거리 창 보기 (10m)"
}
L:SetMiscLocalization{
	Stomach		= "뱃속",
	Eye			= "쑨의 눈",
	FleshTent	= "식인 촉수",--Localized so it shows on frame in users language, not senders
	Weakened 	= "약해집니다!",
	NotValid	= "안퀴40 레이드를 일부만 클리어 했습니다. 부차적인 네임드가 %s마리 남아있습니다."
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
}
L:SetTimerLocalization{
	TimerSubmerge		= "다음 잠수",
	TimerEmerge			= "다음 등장"
}
L:SetOptionLocalization{
	WarnSubmerge		= "잠수 알림 보기",
	TimerSubmerge		= "다음 잠수 바 보기",
	WarnEmerge			= "등장 알림 보기",
	TimerEmerge			= "다음 등장 바 보기"
}

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "쿠린낙스"
}
------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "장군 라작스"
}
L:SetWarningLocalization{
	WarnWave	= "공격 #%s"
}
L:SetOptionLocalization{
	WarnWave	= "다음 공격 알림"
}
L:SetMiscLocalization{
	Wave12		= "그들이 오고 있다. 자신의 몸을 지키도록 하라!",
	Wave3		= "응보의 날이 다가왔다! 암흑이 적들의 마음을 지배하리라!",
	Wave4		= "더는 돌벽과 성문 뒤에서 기다릴 수 없다! 복수의 기회를 놓칠 수 없다. 우리가 분노를 터뜨리는 날 용족은 두려움에 떨리라.",
	Wave5		= "적에게 공포와 죽음의 향연을!",
	Wave6		= "스태그헬름은 흐느끼며 목숨을 구걸하리라. 그 아들놈이 그랬던 것처럼! 천 년의 한을 풀리라! 오늘에서야!",
	Wave7		= "판드랄! 때가 왔다! 에메랄드의 꿈속에 숨어서 기도나 올려라!",
	Wave8		= "건방진... 내 친히 너희를 처치해주마!"
}

----------
-- Moam --
----------
L = DBM:GetModLocalization("Moam")

L:SetGeneralLocalization{
	name 		= "모암"
}

----------
-- Buru --
----------
L = DBM:GetModLocalization("Buru")

L:SetGeneralLocalization{
	name 		= "먹보 부루"
}
L:SetWarningLocalization{
	WarnPursue		= "추적 : >%s<",
	SpecWarnPursue	= "당신을 추적!",
	WarnDismember	= "%s : >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "추적 대상 알림 보기",
	SpecWarnPursue	= "추적 대상이 된 경우 특수 경고 보기"
}
L:SetMiscLocalization{
	PursueEmote 	= "노려봅니다!"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "사냥꾼 아야미스"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "무적의 오시리안"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "약화 알림 보기",
	TimerVulnerable	= "약화 바 보기"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "안퀴20 일반몹"
}

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "폭군 서슬송곳니"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "추가 병력 등장"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "첫번째 추가 병력 등장 바 보기"
}
L:SetMiscLocalization{
	Phase2Emote	= "지배의 수정구가 힘을 잃고 작동을 멈춥니다!",
	YellPull 	= "침입자들이 들어왔다! 어떤 희생이 있더라도 알을 반드시 수호하라!"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name = "타락한 밸라스트라즈"
}

L:SetMiscLocalization{
	Event	= "너무 늦었어! 네파리우스의 타락이 뿌리를 내려... 난... 나 자신을 통제할 수가 없어."
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name = "용기대장 래쉬레이어"
}

L:SetMiscLocalization{
	Pull	= "너희 같은 놈들이 올 곳은 아닌데... 죽음을 자초했구나!"
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
	WarnBreath		= "%s",
}
L:SetTimerLocalization{
	TimerBreathCD	= "다음 %s"
}
L:SetOptionLocalization{
	WarnBreath		= "숨결 알림 보기",
	TimerBreathCD	= "다음 숨결 바 보기"
}
L:SetMiscLocalization{
	Breath1	= "숨결 (1)",
	Breath2	= "숨결 (2)"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "네파리안"
}
L:SetWarningLocalization{
	WarnClassCall		= "직업 지목: %s",
	WarnPhase			= "%s 단계"
}
L:SetTimerLocalization{
	TimerClassCall		= "직업 지목: %s"
}
L:SetOptionLocalization{
	TimerClassCall		= "직업 지목 바 보기",
	WarnClassCall		= "직업 지목 알림 보기",
	WarnPhase			= "단계 전환 알림 보기"
}
L:SetMiscLocalization{
	YellP2			= "잘했다! 적들의 사기가 떨어지고 있다! 검은바위 첨탑의 군주에게 도전한 대가를 치르게 해주자!",
	YellP3			= "말도 안 돼! 일어나라! 다시 한 번 너희 주인을 섬겨라!",
	YellShaman		= "주술사",
	YellPaladin		= "성기사",
	YellDruid		= "드루이드",
	YellPriest		= "사제",
	YellWarrior		= "전사",
	YellRogue		= "도적",
	YellWarlock		= "흑마법사",
	YellHunter		= "사냥꾼",
	YellMage		= "마법사",
	YellDeathKnight	= "죽음의 기사",
	YellMonk		= "수도사"
}

----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization{
	name = "루시프론"
}

----------------
--  Magmadar  --
----------------
L = DBM:GetModLocalization("Magmadar")

L:SetGeneralLocalization{
	name = "마그마다르"
}

----------------
--  Gehennas  --
----------------
L = DBM:GetModLocalization("Gehennas")

L:SetGeneralLocalization{
	name = "게헨나스"
}

------------
--  Garr  --
------------
L = DBM:GetModLocalization("Garr-Classic")

L:SetGeneralLocalization{
	name = "가르"
}

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization{
	name = "남작 게돈"
}

----------------
--  Shazzrah  --
----------------
L = DBM:GetModLocalization("Shazzrah")

L:SetGeneralLocalization{
	name = "샤즈라"
}

----------------
--  Sulfuron  --
----------------
L = DBM:GetModLocalization("Sulfuron")

L:SetGeneralLocalization{
	name = "설퍼론 사자"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "초열의 골레마그"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "청지기 이그젝큐투스"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "라그나로스"
}
L:SetWarningLocalization{
	WarnSubmerge		= "잠수",
	WarnEmerge			= "등장"
}
L:SetTimerLocalization{
	TimerSubmerge		= "다음 잠수",
	TimerEmerge			= "다음 등장"
}
L:SetOptionLocalization{
	WarnSubmerge		= "잠수 알림 보기",
	TimerSubmerge		= "다음 잠수 바 보기",
	WarnEmerge			= "등장 알림 보기",
	TimerEmerge			= "다음 등장 바 보기"
}
L:SetMiscLocalization{
	Submerge	= "나의 종들아! 어서 나와 주인을 돕거라!",
	Pull		= "건방진 젖먹이! 죽고 싶어 안달이구나! 자, 보아라. 주인님께서 일어나신다!"
}
