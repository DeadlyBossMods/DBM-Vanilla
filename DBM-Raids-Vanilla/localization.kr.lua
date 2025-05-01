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
	WarnFreeze	= "빙결 상태 알림",
	WarnShatter	= "분해 상태 알림"
}
L:SetMiscLocalization{
	Slow	= "느려지기 시작했습니다!",
	Freezing= "얼어붙고 있습니다!",
	Frozen	= "단단하게 얼었습니다!",
	Phase4 	= "분해되기 시작합니다!",
	Phase5 	= "부서질 것 같습니다!",
	Phase6 	= "폭발",

	FrostHitsPerSecond = "초당 냉기 공격 횟수",
	MeleeHitsPerSecond = "초당 물리 공격 횟수",
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
	name = "쑨"
}
L:SetWarningLocalization{
	WarnEyeTentacle			= "눈 달린 촉수",
	WarnClawTentacle2		= "갈고리 촉수",
	WarnGiantEyeTentacle		= "눈 달린 거대한 촉수",
	WarnGiantClawTentacle		= "거대한 발톱 촉수",
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
	WarnEyeTentacle			= "눈 달린 촉수 알림 보기",
	WarnClawTentacle2		= "갈고리 촉수 알림 보기",
	WarnGiantEyeTentacle		= "눈 달린 거대한 촉수 알림 보기",
	WarnGiantClawTentacle		= "거대한 발톱 촉수 알림 보기",
	SpecWarnWeakened		= "보스 약화시 특수 알림 보기",
	TimerEyeTentacle		= "다음 눈 달린 촉수 타이머 바 보기",
	TimerClawTentacle		= "다음 갈고리 촉수 타이머 바 보기",
	TimerGiantEyeTentacle		= "다음 눈 달린 거대한 촉수 타이머 바 보기",
	TimerGiantClawTentacle		= "다음 거대한 발톱 촉수 타이머 바 보기",
	TimerWeakened			= "보스 약화 지속 시간 타이머 바 보기",
	RangeFrame				= "거리 창 보기 (10m)"
}
L:SetMiscLocalization{
	Stomach		= "뱃속",
	Eye			= "쑨의 눈",
	FleshTent	= "식인 촉수",--Localized so it shows on frame in users language, not senders
	Weakened 	= "약해집니다!",
	NotValid	= "안퀴40 레이드를 일부만 클리어 했습니다. 더 잡을 수 있는 보스가 %s마리 남아있습니다."
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
	SpecWarnEye			= "고개 돌리세요",
}
L:SetTimerLocalization{
	TimerSubmerge		= "잠수",
	TimerEmerge			= "등장"
}
L:SetOptionLocalization{
	WarnSubmerge		= "잠수 알림 보기",
	TimerSubmerge		= "잠수 타이머 바 보기",
	WarnEmerge			= "등장 알림 보기",
	TimerEmerge			= "등장 타이머 바 보기",
	SpecWarnEye			= "대형 눈알 경고 보기"
}

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "안퀴40 일반몹"
}

L:SetTimerLocalization{
	TimerExplosion = "폭발하는 유령"
}

L:SetWarningLocalization{
	WarnExplosion = "폭발하는 유령 한마리 등장 - 피하세요",
	SpecWarnExplosion = "폭발하는 유령 - 피하세요",
}
L:SetOptionLocalization{
	WarnExplosion = "폭발하는 유령 알림 보기 ($spell:1214871)",
	SpecWarnExplosion = "폭발하는 유령이 여러마리 등장시 특수 경고 보기 ($spell:1214871)",
	TimerExplosion = "폭발하는 유령이 여러마리 등장시 타이머 바 보기 ($spell:1214871)"
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
	WarnPursue		= "추적: >%s<",
	SpecWarnPursue	= "당신을 추적중",
	WarnDismember	= "%s: >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "추적 대상 알림",
	SpecWarnPursue	= "추적 대상이 됐을 때 특수 알림 보기"
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
L:SetOptionLocalization{
	WarnVulnerable	= "약화 알림",
	TimerVulnerable	= "약화 타이머 바 보기"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "안퀴20 일반몹"
}

L:SetTimerLocalization{
	TimerExplosion = "폭발하는 유령"
}

L:SetWarningLocalization{
	WarnExplosion = "폭발하는 유령 한마리 등장 - 피하세요",
	SpecWarnExplosion = "폭발하는 유령 - 피하세요",
}
L:SetOptionLocalization{
	WarnExplosion = "폭발하는 유령 알림 보기 ($spell:1214871)",
	SpecWarnExplosion = "폭발하는 유령이 여러마리 등장시 특수 경고 보기 ($spell:1214871)",
	TimerExplosion = "폭발하는 유령이 여러마리 등장시 타이머 바 보기 ($spell:1214871)"
}
-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "폭군 서슬송곳니"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "쫄 등장"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "첫번째 쫄 등장 타이머 바 보기"
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

----------------
--  Ebonroc and Flamegor  --
----------------
L = DBM:GetModLocalization("EbonrocandFlamegor")

L:SetGeneralLocalization{
	name = "에본로크와 플레임고르"
}

L:SetTimerLocalization{
	TimerBrandCD	= "낙인"
}
L:SetOptionLocalization{
	TimerBrandCD	= "낙인 쿨타임 타이머 바 보기"
}

L:SetMiscLocalization{
	Ebonroc		= "에본로크",
	Flamegor	= "플레임고르"
}

-----------------------
--  BWL Trash  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("BWLTrash")

L:SetGeneralLocalization{
	name = "검은날개 둥지 일반몹"
}
L:SetWarningLocalization{
	WarnVulnerable		= "%s 약화"
}
L:SetOptionLocalization{
	WarnVulnerable		= "주문 속성 약화 알림 보기"
}
L:SetMiscLocalization{
	Fire		= "화염",
	Nature		= "자연",
	Frost		= "냉기",
	Shadow		= "암흑",
	Arcane		= "비전",
	Holy		= "신성"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "크로마구스"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s 약화"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s 쿨타임",
	TimerBreath		= "%s 시전",
	TimerVulnCD		= "약화 쿨타임",
	TimerAllBreaths	= "연발 숨결"
}
L:SetOptionLocalization{
	WarnBreath		= "크로마구스가 숨결 시전 시 알림 보기",
	WarnVulnerableNew	= "주문 속성 약화 알림 보기",
	TimerBreathCD	= "숨결 쿨타임 타이머 바 보기",
	TimerBreath		= "숨결 시전 타이머 바 보기",
	TimerVulnCD		= "약화 쿨타임 보기",
	TimerAllBreaths = "연발 숨결 타이머 바 보기"
}
L:SetMiscLocalization{
	Breath1	= "1번 숨결",
	Breath2	= "2번 숨결",
	VulnEmote	= "%s 주춤하면서 물러나면서 가죽이 빛납니다.",
	Vuln		= "약화 속성",
	Fire		= "화염",
	Nature		= "자연",
	Frost		= "냉기",
	Shadow		= "암흑",
	Arcane		= "비전",
	Holy		= "신성"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "네파리안"
}
L:SetWarningLocalization{
	WarnAddsLeft		= "%d킬 남음",
	WarnClassCall		= "%s 지목",
	specwarnClassCall	= "당신이 직업 지목 대상입니다!"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s 지목 종료"
}
L:SetOptionLocalization{
	TimerClassCall		= "직업 지목 지속 시간 타이머 바 보기",
	WarnAddsLeft		= "2페이즈 전환까지 남은 쫄 킬 수 알림",
	WarnClassCall		= "직업 지목 알림 보기",
	specwarnClassCall	= "직업 지목 대상일 때 특수 알림 보기"
}
L:SetMiscLocalization{
	YellP1		= "게임을 시작하자!",
	YellP2		= "잘했다! 적들의 사기가 떨어지고 있다! 검은바위 첨탑의 군주에게 도전한 대가를 치르게 해주자!",
	YellP3		= "말도 안 돼! 일어나라! 다시 한 번 너희 주인을 섬겨라!",
	YellShaman	= "주술사, 네놈의 토템이 얼마나 쓸모 있는지 한번 보자!",
	YellPaladin	= "성기사여, 네 목숨은 여러개라고 하던데 어디 한번 보여다오.",
	YellDruid	= "드루이드 녀석, 그 바보 같은 변신을 했다고 내가 모를 줄 알았더냐? 받아라!",
	YellPriest	= "성직자야, 그렇게 치유를 계속할 테냐? 그럼 어디 좀 더 재미있게 만들어 줄까?",
	YellWarrior	= "전사들이로군, 네가 그보다 더 강하게 내려칠 수 있다는 걸 알고 있다! 어디 한 번 제대로 쳐 보란 말이다!",
	YellRogue	= "도적들인가? 숨어 다니지만 말고 나와서 나와 맞서라!",
	YellWarlock	= "흑마법사여, 네가 이해하지도 못하는 마법을 가지고 장난을 쳐서야 쓰나... 바로 이런 꼴이 되어버렸지 않느냐!",
	YellHunter	= "사냥꾼 놈에다 그 장난감 같은 총이라니! 정말 거슬리는구나!",
	YellMage	= "네가 마법사냐? 마법을 가지고 장난칠 상대를 고를 때는 좀 더 신중했어야지...",
	YellDK		= "죽음의 기사여... 당장 이리 와라!",
	YellMonk	= "수도사, 그렇게 굴러 다니면 어지럽지 않나?",
	YellDH		= "악마사냥꾼이라고? 눈을 가리고 있다니 참으로 어리석구나. 네놈 주변 세상을 보는 것이 어렵지 않느냐?"
}

----------------------
--  SoD BWL Trials  --
----------------------
L = DBM:GetModLocalization("SoDBWLTrials")

L:SetGeneralLocalization{
	name = "디스커버리 시즌 시련"
}
L:SetWarningLocalization{
	SpecWarnBothBombs		= ">%s<에게 파란색과 녹색",
	SpecWarnBothBombsYou	= "나에게 파란색과 녹색",
}
L:SetOptionLocalization{
	SpecWarnBothBombs		= "파란색 녹색 폭탄에 같이 걸린 사람이 있을 때 특수 알림을 보여줍니다.",
	SpecWarnBothBombsYou	= "내가 파란색 녹색 폭탄에 같이 걸렸을 때 특수 알림을 보여줍니다.",
	TimerBombs				= "파란색 녹색 시련 폭탄 타이머 바 보기"
}

L:SetMiscLocalization{
	-- Does not need translation if "BLUE BOMB" is okay, the "Blue"/"Green" strings are just fallbacks if Core is outdated
	-- Only translate that if you need something like "BOMB BLUE"
	BlueBomb = (DBM_COMMON_L.BLUE or "파란색") .. " " .. DBM_COMMON_L.BOMB,
	GreenBomb = (DBM_COMMON_L.GREEN or "녹색") .. " " .. DBM_COMMON_L.BOMB,

	-- Used in options
	BlueTrial = "파란색 시련",
	GreenTrial = "녹색 시련",
	GreenAndBlue = "녹색 파란색이 다 걸린 사람",
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
L:SetTimerLocalization{
	timerShieldCD		= "다음 보호막"
}
L:SetOptionLocalization{
	timerShieldCD		= "다음 피해 흡수/반사 보호막 타이머 바 보기"
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
	TimerSubmerge		= "잠수",
	TimerEmerge			= "등장"
}
L:SetOptionLocalization{
	WarnSubmerge		= "잠수 알림 보기",
	TimerSubmerge		= "잠수 타이머 바 보기",
	WarnEmerge			= "등장 알림 보기",
	TimerEmerge			= "등장 타이머 바 보기"
}
L:SetMiscLocalization{
	Submerge	= "나의 종들아! 어서 나와 주인을 돕거라!",
	Pull		= "건방진 젖먹이! 죽고 싶어 안달이구나! 자, 보아라. 주인님께서 일어나신다!"
}

----------------------
--  The Molten Core --
----------------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "화산 심장부"
}

L:SetOptionLocalization{
	YellHeartCleared	= "재/불씨의 심장이 사라질 때 말풍선으로 알립니다.",
	WarnBossPower		= "보스 기력 50%, 75%, 90%, 100%에 알림 보기"
}

L:SetWarningLocalization{
	WarnBossPower		= "보스 기력 %d%%"
}

-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "화산 심장부 일반몹"
}

-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "대사제 베녹시스"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "대여사제 제클릭"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "대여사제 말리"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "대사제 데칼"
}

L:SetWarningLocalization({
	WarnSimulKill	= "첫 쫄 잡음 - 부활 ~15초 전"
})

L:SetTimerLocalization({
	TimerSimulKill	= "부활"
})

L:SetOptionLocalization({
	WarnSimulKill	= "첫 쫄이 잡히면 부활 알림",
	TimerSimulKill	= "사제 부활 타이머 바 보기"
})

L:SetMiscLocalization({
	PriestDied	= "%s 죽었습니다.",
	YellPhase2	= "시르밸라시여, 분노를 채워 주소서!",
	YellKill	= "학카르의 구속이 끝났다! 이젠 평안히 잠들리라!",
	Thekal		= "대사제 데칼",
	Zath		= "광신도 자스",
	LorKhan		= "광신도 로르칸"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "대여사제 알로크"
}

-------------------
--  Hakkar  --
-------------------
L = DBM:GetModLocalization("Hakkar")

L:SetGeneralLocalization{
	name = "영혼약탈자 학카르"
}

-------------------
--  Bloodlord  --
-------------------
L = DBM:GetModLocalization("Bloodlord")

L:SetGeneralLocalization{
	name = "혈군주 만도키르"
}
L:SetMiscLocalization{
	Bloodlord 	= "혈군주 만도키르",
	Ohgan		= "오간",
	GazeYell	= "널 지켜보고 있겠다!"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "광란의 경계"
}
L:SetMiscLocalization{
	Hazzarah = "하자라",
	Renataki = "레나타키",
	Wushoolay = "우슐레이",
	Grilek = "그리렉"
}

-------------------
--  Gahz'ranka  --
-------------------
L = DBM:GetModLocalization("Gahzranka")

L:SetGeneralLocalization{
	name = "가즈란카"
}

-------------------
--  Jindo  --
-------------------
L = DBM:GetModLocalization("Jindo")

L:SetGeneralLocalization{
	name = "주술사 진도"
}

L:SetMiscLocalization{
	Ghosts = "망령"
}

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("OnyxiaVanilla")

L:SetGeneralLocalization{
	name = "오닉시아"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "곧 오닉시아 새끼용"
}

L:SetTimerLocalization{
	TimerWhelps 		= "오닉시아 새끼용"
}

L:SetOptionLocalization{
	TimerWhelps				= "오닉시아 새끼용 타이머 바 보기",
	WarnWhelpsSoon			= "오닉시아 새끼용 사전 경고 보기",
	SoundWTF3				= "전설적인 오닉시아 레이드 영상에서 추출한 재미있는 효과음 재생"
}

L:SetMiscLocalization{
	Breath 		= "%s 숨을 깊게 들이쉽니다.",
	YellPull 	= "오늘은 운이 아주 좋군. 평소엔 먹이를 찾으려면 둥지에서 나가야 하는데 말이야.",
	YellP2 		= "쓸데없이 힘을 쓰는 것도 지루하군. 네 녀석들 머리 위에서 모조리 불살라 주마!",
	YellP3 		= "혼이 더 나야 정신을 차리겠구나!",
	SoDWarning	= "%s에 오신 것을 환영합니다. 이 전투동안 DBM은 옛 전설적인 레이드에서 가져온 재미있는 효과음을 재생할 것입니다. DBM UI에서 이 옵션을 끌 수 있습니다: /dbm 입력 후 공격대 -> 오리지널 메뉴에서 오닉시아 모듈을 찾아가세요.",
}

-------------------
--  Anub'Rekhan  --
-------------------
L = DBM:GetModLocalization("AnubRekhanVanilla")

L:SetGeneralLocalization({
	name = "아눕레칸"
})

L:SetOptionLocalization({
	ArachnophobiaTimer	= "거미의 공포 타이머 바 보기 (업적)"
})


L:SetMiscLocalization({
	ArachnophobiaTimer	= "거미의 공포",
	Pull1				= "그래, 도망쳐! 더 신선한 피가 솟구칠 테니!",
	Pull2				= "어디 맛 좀 볼까..."
})

----------------------------
--  Grand Widow Faerlina  --
----------------------------
L = DBM:GetModLocalization("FaerlinaVanilla")

L:SetGeneralLocalization({
	name = "귀부인 펠리나"
})

L:SetWarningLocalization({
	WarningEmbraceExpire	= "5초 후 귀부인의 은총 종료",
	WarningEmbraceExpired	= "귀부인의 은총 종료"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "귀부인의 은총 종료 사전 경고 보기",
	WarningEmbraceExpired	= "귀부인의 은총 종료 알림 보기"
})

L:SetMiscLocalization({
	Pull					= "내 앞에 무릎을 꿇어라, 벌레들아!"
})

---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("MaexxnaVanilla")

L:SetGeneralLocalization({
	name = "맥스나"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "5초 후 맥스나의 새끼 거미",
	WarningSpidersNow	= "맥스나의 새끼 거미 등장"
})

L:SetTimerLocalization({
	TimerSpider		= "다음 맥스나의 새끼 거미"
})

L:SetOptionLocalization({
	WarningSpidersSoon	= "맥스나의 새끼 거미 사전 경고 보기",
	WarningSpidersNow	= "맥스나의 새끼 거미 알림 보기",
	TimerSpider			= "다음 맥스나의 새끼 거미 타이머 바 보기"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "거미의 공포"
})

------------------------------
--  Noth the Plaguebringer  --
------------------------------
L = DBM:GetModLocalization("NothVanilla")

L:SetGeneralLocalization({
	name = "역병술사 노스"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "순간이동",
	WarningTeleportSoon	= "20초 후 순간이동"
})

L:SetTimerLocalization({
	TimerTeleport		= "순간이동",
	TimerTeleportBack	= "돌아옴"
})

L:SetOptionLocalization({
	WarningTeleportNow		= "순간이동 알림 보기",
	WarningTeleportSoon		= "순간이동 사전 경고 보기",
	TimerTeleport			= "순간이동 타이머 바 보기",
	TimerTeleportBack		= "돌아옴 타이머 바 보기"
})

L:SetMiscLocalization({
	Pull				= "죽어라, 침입자들아!",
	AddsYell			= "일어나라, 병사들이여! 다시 일어나 싸워라!",
--	Adds				= "summons forth Skeletal Warriors!",
--	AddsTwo				= "raises more skeletons!"
})

--------------------------
--  Heigan the Unclean  --
--------------------------
L = DBM:GetModLocalization("HeiganVanilla")

L:SetGeneralLocalization({
	name = "부정의 헤이건"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "순간이동",
	WarningTeleportSoon	= "%d초 후 순간이동"
})

L:SetTimerLocalization({
	TimerTeleport		= "순간이동"
})

L:SetOptionLocalization({
	WarningTeleportNow		= "순간이동 알림 보기",
	WarningTeleportSoon		= "순간이동 사전 경고 보기",
	TimerTeleport			= "순간이동 타이머 바 보기"
})

L:SetMiscLocalization({
	Pull				= "이제 넌 내 것이다."
})

---------------
--  Loatheb  --
---------------
L = DBM:GetModLocalization("LoathebVanilla")

L:SetGeneralLocalization({
	name = "로데브"
})

L:SetWarningLocalization({
	WarningHealSoon		= "3초 후 힐 가능",
	WarningHealNow		= "힐 하세요"
})

L:SetOptionLocalization({
	WarningHealSoon		= "3초 힐 가능 사전 경고 보기",
	WarningHealNow		= "3초 힐 가능 알림 보기"
})

-----------------
--  Patchwerk  --
-----------------
L = DBM:GetModLocalization("PatchwerkVanilla")

L:SetGeneralLocalization({
	name = "패치워크"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1			= "패치워크랑 놀아줘!",
	yell2			= "켈투자드님이 패치워크 싸움꾼으로 만들었다."
})

-----------------
--  Grobbulus  --
-----------------
L = DBM:GetModLocalization("GrobbulusVanilla")

L:SetGeneralLocalization({
	name = "그라불루스"
})

-------------
--  Gluth  --
-------------
L = DBM:GetModLocalization("GluthVanilla")

L:SetGeneralLocalization({
	name = "글루스"
})

----------------
--  Thaddius  --
----------------
L = DBM:GetModLocalization("ThaddiusVanilla")

L:SetGeneralLocalization({
	name = "타디우스"
})

L:SetMiscLocalization({
	Yell	= "스탈라그, 박살낸다!",
	Emote	= "%s 과부하 상태가 됩니다.",
	Emote2	= "테슬라 코일이 과부하 상태가 됩니다.",
	Boss1	= "퓨진",
	Boss2	= "스탈라그",
	Charge1	= "음전하",
	Charge2	= "양전하"
})

L:SetOptionLocalization({
	WarningChargeChanged	= "극성이 바뀔때 특수 알림 보기",
	WarningChargeNotChanged	= "극성이 바뀌지 않으면 특수 알림 보기",
	AirowsEnabled			= "$spell:28089 동안 화살표 보기",
	Never					= "사용 안함",
	TwoCamp					= "화살표 보기 (일반 \"2점\" 택틱)",
	ArrowsRightLeft			= "\"4점\" 택틱 왼쪽/오른쪽 화살표 보기 (극성이 바뀌면 왼쪽 화살표가 나오고 바뀌지 않으면 오른쪽이 나옴)",
	ArrowsInverse			= "역 \"4점\" 택틱 (극성이 바뀌면 오른쪽 화살표가 나오고 바뀌지 않으면 왼쪽이 나옴)"
})

L:SetWarningLocalization({
	WarningChargeChanged	= "극성 변경: %s",
	WarningChargeNotChanged	= "극성 변경 안됨"
})

----------------------------
--  Instructor Razuvious  --
----------------------------
L = DBM:GetModLocalization("RazuviousVanilla")

L:SetGeneralLocalization({
	name = "훈련교관 라주비어스"
})

L:SetMiscLocalization({
	Yell1 = "절대 봐주지 마라!",
	Yell2 = "훈련은 끝났다! 배운 걸 보여줘라!",
	Yell3 = "훈련받은 대로 해!",
	Yell4 = "다리를 후려 차라! 무슨 문제 있나?"
})

L:SetOptionLocalization({
	WarningShieldWallSoon	= "뼈 보호막 종료 사전 경고 보기"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "5초 후 뼈 보호막 종료"
})

----------------------------
--  Gothik the Harvester  --
----------------------------
L = DBM:GetModLocalization("GothikVanilla")

L:SetGeneralLocalization({
	name = "영혼 착취자 고딕"
})

L:SetOptionLocalization({
	TimerWave			= "다음 병력 타이머 바 보기",
	TimerPhase2			= "2단계 타이머 바 보기",
	WarningWaveSoon		= "병력 사전 경고 보기",
	WarningWaveSpawned	= "병력 등장시 알림 보기",
	WarningRiderDown	= "무자비한 죽음의 기병을 잡으면 알림 보기",
	WarningKnightDown	= "무자비한 죽음의 기사를 잡으면 알림 보기"
})

L:SetTimerLocalization({
	TimerWave	= "%d번 병력",
	TimerPhase2	= "2단계"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "%d번 병력: %s 3초 전",
	WarningWaveSpawned	= "%d번 병력: %s",
	WarningRiderDown	= "기병 잡음",
	WarningKnightDown	= "기사 잡음",
	WarningPhase2		= "2단계"
})

L:SetMiscLocalization({
	yell			= "어리석은 것들, 스스로 죽음을 자초하다니!",
	WarningWave2	= "%d %s, %d %s",
	WarningWave3	= "%d %s, %d %s, %d %s",
	Trainee			= "수련생",
	Knight			= "기사",
	Horse			= "말 망령",
	Rider			= "기병"
})

---------------------
--  Four Horsemen  --
---------------------
L = DBM:GetModLocalization("HorsemenVanilla")

L:SetGeneralLocalization({
	name = "4인의 기사단"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "징표 사전 경고 보기",
	SpecialWarningMarkOnPlayer	= "징표가 4개 이상 걸리면 특수 알림 보기",
	timerMark					= "다음 기사의 징표 타이머 바 보기 (횟수 포함)",
})

L:SetTimerLocalization({
	timerMark	= "%d번 징표",
})

L:SetWarningLocalization({
	WarningMarkSoon				= "3초 후 %d번 징표",
})

L:SetMiscLocalization({
	Korthazz	= "영주 코스아즈",
	Rivendare	= "남작 리븐데어",
	Blaumeux	= "여군주 블라미우스",
	Zeliek		= "젤리에크 경"
})

-----------------
--  Sapphiron  --
-----------------
L = DBM:GetModLocalization("SapphironVanilla")

L:SetGeneralLocalization({
	name = "사피론"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon		= "비행 단계 사전 경고 보기",
	WarningAirPhaseNow		= "비행 단계 알림 보기",
	WarningLanded			= "지상 단계 알림 보기",
	TimerAir				= "비행 단계 타이머 바 보기",
	TimerLanding			= "착지 중 타이머 바 보기",
	TimerIceBlast			= "냉기 숨결 타이머 바 보기",
	WarningDeepBreath		= "냉기 숨결 특수 알림 보기"
})

L:SetMiscLocalization({
	EmoteBreath				= "숨을 깊게 들이마십니다."
})

L:SetWarningLocalization({
	WarningAirPhaseSoon		= "비행 단계 10초 전",
	WarningAirPhaseNow		= "비행 단계",
	WarningLanded			= "사피론 내려옴",
	WarningDeepBreath		= "냉기 숨결"
})

L:SetTimerLocalization({
	TimerAir				= "비행 단계",
	TimerLanding			= "착지 중",
	TimerIceBlast			= "냉기 숨결"
})

------------------
--  Kel'Thuzad  --
------------------
L = DBM:GetModLocalization("KelThuzadVanilla")

L:SetGeneralLocalization({
	name = "켈투자드"
})

L:SetOptionLocalization({
	TimerPhase2			= "2단계 타이머 바 보기",
	specwarnP2Soon		= "켈투자드 전투 개시 10초 전에 특수 알림 보기",
	warnAddsSoon		= "얼음왕관의 수호자 사전 경고 보기"
})

L:SetMiscLocalization({
	Yell = "어둠의 문지기와 하수인, 그리고 병사들이여! 나 켈투자드가 부르니 명을 받들라!"
})

L:SetWarningLocalization({
	specwarnP2Soon		= "10초 후 켈투자드 전투 개시",
	warnAddsSoon		= "곧 얼음왕관의 수호자 등장"
})

L:SetTimerLocalization({
	TimerPhase2			= "2단계"
})

-----------------
--  Naxx Trash --
-----------------

L = DBM:GetModLocalization("NaxxTrash")

L:SetGeneralLocalization({
	name = "일반몹"
})

--------------------
--  SoD Hardmode  --
--------------------

L = DBM:GetModLocalization("SoD_NaxxHardmode")

L:SetGeneralLocalization({
	name = "디커 하드모드"
})

L:SetOptionLocalization({
	AutomateEmote		= "자동으로 진격 명령에 맞는 감정 표현 (Blizzard 핫픽스로 작동 중단)",
	AffixTimer			= "하드모드 어픽스 타이머 보기",
	WarnEggs			= "알 등장 알림 보기 (거미 지구 하드모드)",
	SpecWarnOrders		= "DBM이 진격 명령을 자동으로 대처하지 못했을 때 특수 경고 보기"
})

L.MarchingOrderTranslationComplete = false -- Set this to false until *all* of the Order* below are translated to the actual string used in the game
L:SetMiscLocalization({
	Affixes				= "어픽스",
	ConstructAffix		= "번개 폭탄",
	SpiderAffix			= "알 폭발",
	UnsupportedLocale	= [[강화된 군사 지구에 오신 것을 환영합니다!
이곳의 하드모드 패턴은 무작위 플레이어에게 특정 감정 표현을 요구하는 방식입니다.
당신의 클라이언트 언어 %s|1은;는; 아직 전부 지원하지 못해서 DBM이 빼먹는 감정 표현이 있을 것입니다.
당신이 도울 수 있습니다! 하드모드 패턴마다 정확한 텍스트를 공유해 주세요 (스크린샷, 동영상, Transcriptor 로그) discord.gg/deadlybossmods에 들어가서 보내주시면 됩니다.
]],
	AutomatedEmote		= "DBM이 진격 명령에 %s 감정 표현을 시도했습니다. (Blizzard가 자동 기능을 막아서 작동하지 않을 수 있습니다)",
	AutomatedEmoteGuess	= "DBM이 추측을 기반으로 진격 명령에 %s 감정 표현을 시도했습니다. 올바른 감정 표현이었나요? discord.gg/deadlybossmods에서 저희한테 알려주세요",
	-- List of emotes may not be complete, let me know if I missed one
	OrderDance			= "DANCE for me!",
	OrderRoar			= "Show me your best ROAR!",
	OrderSalute			= "SALUTE, maggot!",
	OrderBow			= "BOW before me, mortal!",
	OrderPray			= "Get on your knees and PRAY!",
	OrderKneel			= nil, -- I thought i saw this one, but maybe I mistook it for pray? Don't have it in logs
	-- Guessed regexes for emotes, by default the emote tokens are used (which actually works 100% in en locale)
	-- Optional and obsolete if all Order* strings above are complete
	GuessOrderDance		= nil,
	GuessOrderRoar		= nil,
	GueesOrderSalute	= nil,
	GuessOrderBow		= nil,
	GuessOrderPray		= nil,
	GuessOrderKneel		= nil,
})

L:SetWarningLocalization({
	WarnEggs		= "알 등장",
	SpecWarnOrders	= "진격 명령: %s"
})

L:SetTimerLocalization({
	AffixTimer	= "어픽스"
})


---------------------------
--  Season of Discovery  --
---------------------------

---------------------------
--  Blackfathom Deeps  --
---------------------------

------------------
--  Baron Aquanis  --
------------------
L = DBM:GetModLocalization("BaronAuanisSoD")

L:SetGeneralLocalization({
	name = "군주 아쿠아니스"
})

L:SetMiscLocalization({
	Water		= "물속으로"
})

------------------
--  Ghamoo-ra  --
------------------
L = DBM:GetModLocalization("GhamooraSoD")

L:SetGeneralLocalization({
	name = "가무라"
})

------------------
--  Lady Sarevess  --
------------------
L = DBM:GetModLocalization("LadySarevessSoD")

L:SetGeneralLocalization({
	name = "여왕 사레베스"
})

------------------
--  Gelihast  --
------------------
L = DBM:GetModLocalization("GelihastSoD")

L:SetGeneralLocalization({
	name = "겔리하스트"
})

L:SetTimerLocalization{
	TimerImmune = "무적 종료"
}

L:SetOptionLocalization({
	TimerImmune	= "페이즈 전환 동안 겔리하스트의 무적 시간 타이머 바를 표시합니다."
})

------------------
--  Lorgus Jett  --
------------------
L = DBM:GetModLocalization("LorgusJettSoD")

L:SetGeneralLocalization({
	name = "로구스 제트"
})

L:SetWarningLocalization({
	warnPriestRemaining		= "여사제 남은 수: %s"
})

L:SetOptionLocalization({
	warnPriestRemaining	= "검은심연의 바다여사제 남은 숫자 보기"
})

------------------
--  Twilight Lord Kelris  --
------------------
L = DBM:GetModLocalization("TwilightLordKelrisSoD")

L:SetGeneralLocalization({
	name = "황혼의 군주 켈리스"
})

------------------
--  Aku'mai  --
------------------
L = DBM:GetModLocalization("AkumaiSoD")

L:SetGeneralLocalization({
	name = "아쿠마이"
})

------------------
--  Gnomeregan  --
------------------

---------------------------
--  Crowd Pummeler 9-60  --
---------------------------
L = DBM:GetModLocalization("CrowdPummellerSoD")

L:SetGeneralLocalization({
	name = "고철 압축기 9-60"
})

---------------
--  Grubbis  --
---------------
L = DBM:GetModLocalization("GrubbisSoD")

L:SetGeneralLocalization({
	name = "그루비스"
})

L:SetMiscLocalization({
	FirstPull = "놈리건에는 아직도 방사능 물질을 뿜어내는 환풍구가 곳곳에 있어요.",
	Pull = "아, 이런! 이런 진동이 의미하는 건 딱 하나뿐인데..."
})
----------------------------
--  Electrocutioner 6000  --
----------------------------
L = DBM:GetModLocalization("ElectrocutionerSoD")

L:SetGeneralLocalization({
	name = "기계화 문지기 6000"
})

-----------------------
--  Viscous Fallout  --
-----------------------
L = DBM:GetModLocalization("ViscousFalloutSoD")

L:SetGeneralLocalization({
	name = "방사성 폐기물"
})

----------------------------
--  Mechanical Menagerie  --
----------------------------
L = DBM:GetModLocalization("MechanicalMenagerieSoD")

L:SetGeneralLocalization({
	name = "기계 동물원"
})

L:SetMiscLocalization{
	Sheep		= "양",
	Whelp		= "새끼용",
	Squirrel	= "다람쥐",
	Chicken		= "닭"
}

-----------------------------
--  Mekgineer Thermaplugg  --
-----------------------------
L = DBM:GetModLocalization("ThermapluggSoD")

L:SetGeneralLocalization({
	name = "기계박사 텔마플러그"
})

L:SetTimerLocalization{
	timerTankCD = "탱커 스킬"
}

L:SetOptionLocalization({
	timerTankCD	= "4단계에서 무작위 탱커 스킬 쿨타임 타이머 바 보기"
})

------------------
--  Sunken Temple  --
------------------

--------------
-- ST Trash --
--------------
L = DBM:GetModLocalization("STTrashSoD")

L:SetGeneralLocalization{
	name = "가라앉은 사원 일반몹"
}

---------------------------
--  Atal'alarion  --
---------------------------
L = DBM:GetModLocalization("AtalalarionSoD")

L:SetGeneralLocalization({
	name = "아탈알라리온"
})

---------------------------
--  Festering Rotslime  --
---------------------------
L = DBM:GetModLocalization("FesteringRotslimeSoD")

L:SetGeneralLocalization({
	name = "곪아가는 부식수액"
})

---------------------------
--  Atal'ai Defenders  --
---------------------------
L = DBM:GetModLocalization("AtalaiDefendersSoD")

L:SetGeneralLocalization({
	name = "아탈라이 파수병"
})

L:SetOptionLocalization({
	SetIconsOnGhosts = "유령 보스에 공격대 징표 설정"
})

---------------------------
--  Dreamscythe and Weaver  --
---------------------------
L = DBM:GetModLocalization("DreamscytheAndWeaverSoD")

L:SetGeneralLocalization({
	name = "드림사이드와 위버"
})
---------------------------
--  Avatar of Hakkar  --
---------------------------
L = DBM:GetModLocalization("AvatarofHakkarSoD")

L:SetGeneralLocalization({
	name = "학카르의 화신"
})
---------------------------
--  Jammal'an and Ogom  --
---------------------------
L = DBM:GetModLocalization("JammalanAndOgomSoD")

L:SetGeneralLocalization({
	name = "잠말란과 오그옴"
})
---------------------------
--  Morphaz and Hazzas  --
---------------------------
L = DBM:GetModLocalization("MorphazandHazzasSoD")

L:SetGeneralLocalization({
	name = "몰파즈와 하자스"
})
---------------------------
--  Shade of Eranikus  --
---------------------------
L = DBM:GetModLocalization("ShadeofEranikusSoD")

L:SetGeneralLocalization({
	name = "에라니쿠스의 사령"
})

---------------------------
--  Lord Roccor (3042) --
---------------------------
--L= DBM:GetModLocalization(2663)

---------------------------
--  Bael'Gar (3044) --
---------------------------
--L= DBM:GetModLocalization(2664)

---------------------------
--  Lord Incendius (3043) --
---------------------------
--L= DBM:GetModLocalization(2665)

---------------------------
--  Golem Lord Argelmach (3046) --
---------------------------
--L= DBM:GetModLocalization(2666)

---------------------------
--  The Seven (3048) --
---------------------------
--L= DBM:GetModLocalization(2667)

---------------------------
--  General Angerforge (3045) --
---------------------------
--L= DBM:GetModLocalization(2668)

---------------------------
--  Ambassador Flamelash (3047) --
---------------------------
--L= DBM:GetModLocalization(2669)

---------------------------
--  Emperor Dagran Thaurissan (3049) --
---------------------------
--L= DBM:GetModLocalization(2670)

-----------------------------
--  Scarlet Enclave (SoD)  --
-----------------------------
-- This mostly relies on the new auto-generated locales for boss names from encounter data.
-- Only add name localization if the name in locale.generated.lua is inconsistent with the commonly used name in the language.

L = DBM:GetModLocalization("Balnazzar")

L:SetMiscLocalization{
	OtherPlayer = "다른 사람", -- Use with AUTO_SPEC_WARN_TEXTS.moveto ("$spell - move to >%%s<")
	Tick = "틱"
}

L = DBM:GetModLocalization("Solistrasza")


L = DBM:GetModLocalization("Beatrix")

L:SetMiscLocalization{
	YellFroggers1 = "적진을 무너뜨려라",
	YellFroggers2 = "창을 준비하라",
	CannonMistress = "포반장 린드", -- TODO: can we automatically get the localized name?
	YellPhase2 = "하나 되어 맞서라! 우리의 힘 앞에 적은 전율하리라!",
	Footmen = "보병",
	Horses = "기병",
	YellMeteor = "신비술사, 적을 잿더미로 만들어라",
}


L = DBM:GetModLocalization("RebornCouncil")


L = DBM:GetModLocalization("Caldoran")


L = DBM:GetModLocalization("LillianVoss")


L = DBM:GetModLocalization("Beastmaster")

L:SetOptionLocalization({
	TimerMark = "다음 무기력/점화 징표 타이머 바 보기 (횟수 포함)",
	WarnMark = "무기력/점화 징표 경고 보기 (횟수 포함)"
})

L:SetTimerLocalization({
	TimerMark	= "징표 %d",
})

L:SetWarningLocalization({
	WarnMark = "징표 %d"
})


L = DBM:GetModLocalization("Mason")

L:SetMiscLocalization{
	Cannons1 = "공격!",
	Cannons2 = "공격 개시!",
}

L = DBM:GetModLocalization("SE_Trash")
L:SetGeneralLocalization{
	name = "붉은십자군 초소 일반몹"
}

L:SetOptionLocalization{
	FlightTimer = "그리핀 비행 타이머 바 보기",
}

L:SetMiscLocalization{
	CentralTower = "중앙 탑",
	Prison = "감옥",
	Cathedral = "대성당"
}
