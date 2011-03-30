if GetLocale() ~= "koKR" then return end
local L

-------------------------
--  Hellfire Ramparts  --
-----------------------------
--  Watchkeeper Gargolmar  --
-----------------------------
L = DBM:GetModLocalization("Gargolmar")

L:SetGeneralLocalization({
	name = "감시자 가르골마르"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------
--  Omor the Unscarred  --
--------------------------
L = DBM:GetModLocalization("Omor")

L:SetGeneralLocalization({
	name = "무적의 오모르"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	SetIconOnBaneTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(37566)
})

------------------------
--  Nazan & Vazruden  --
------------------------
L = DBM:GetModLocalization("Vazruden")

L:SetGeneralLocalization({
	name = "나잔 & 바즈루덴"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  The Blood Furnace  --
-------------------------
--  The Maker  --
-----------------
L = DBM:GetModLocalization("Maker")

L:SetGeneralLocalization({
	name = "재앙의 창조자"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------
--  Broggok  --
---------------
L = DBM:GetModLocalization("Broggok")

L:SetGeneralLocalization({
	name = "브로고크"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------------------
--  Keli'dan the Breaker  --
----------------------------
L = DBM:GetModLocalization("Keli'dan")

L:SetGeneralLocalization({
	name = "파괴자 켈리단"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------------
--  The Shattered Halls  --
--------------------------------
--  Grand Warlock Nethekurse  --
--------------------------------
L = DBM:GetModLocalization("Nethekurse")

L:SetGeneralLocalization({
	name = "대흑마법사 네더쿠르스"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------
--  Blood Guard Porung  --
--------------------------
L = DBM:GetModLocalization("Porung")

L:SetGeneralLocalization({
	name = "혈투사 포룽"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------
--  Warbringer O'mrogg  --
--------------------------
L = DBM:GetModLocalization("O'mrogg")

L:SetGeneralLocalization({
	name = "돌격대장 오므로그"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------------------------
--  Warchief Kargath Bladefist  --
----------------------------------
L = DBM:GetModLocalization("Kargath")

L:SetGeneralLocalization({
	name = "대족장 카르가스 블레이드피스트"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------
--  Slave Pens  --
--------------------------
--  Mennu the Betrayer  --
--------------------------
L = DBM:GetModLocalization("Mennu")

L:SetGeneralLocalization({
	name = "배반자 멘누"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------------
--  Rokmar the Crackler  --
---------------------------
L = DBM:GetModLocalization("Rokmar")

L:SetGeneralLocalization({
	name = "딱딱이 로크마르"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------
--  Quagmirran  --
------------------
L = DBM:GetModLocalization("Quagmirran")

L:SetGeneralLocalization({
	name = "쿠아그미란"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------
--  Underbog  --
-----------------
--  Hungarfen  --
-----------------
L = DBM:GetModLocalization("Hungarfen")

L:SetGeneralLocalization({
	name = "헝가르펜"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------
--  Ghaz'an  --
---------------
L = DBM:GetModLocalization("Ghazan")

L:SetGeneralLocalization({
	name = "가즈안"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  Swamplord Muselek  --
-------------------------
L = DBM:GetModLocalization("Muselek")

L:SetGeneralLocalization({
	name = "늪군주 뮤즐레크"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  The Black Stalker  --
-------------------------
L = DBM:GetModLocalization("Stalker")

L:SetGeneralLocalization({
	name = "검은 추적자"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------------
--  The Steamvault  --
---------------------------
--  Hydromancer Thespia  --
---------------------------
L = DBM:GetModLocalization("Thespia")

L:SetGeneralLocalization({
	name = "풍수사 세스피아"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------------------
--  Mekgineer Steamrigger  --
-----------------------------
L = DBM:GetModLocalization("Steamrigger")

L:SetGeneralLocalization({
	name = "기계공학자 스팀리거"
})

L:SetWarningLocalization({
	WarnSummon	= "잠시 후 스팀리거 정비사 소환!"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	WarnSummon	= "스팀리거 정비사 소환 경고 보기"
})

L:SetMiscLocalization({
	Mechs	= "얘들아, 쟤네들을 부드럽게 만져줘라!"
})

--------------------------
--  Warlord Kalithresh  --
--------------------------
L = DBM:GetModLocalization("Kalithresh")

L:SetGeneralLocalization({
	name = "장군 칼리스레쉬"
})

L:SetWarningLocalization({
	WarnChannel	= "장군의 분노!"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	WarnChannel	= "장군의 분노 시전 경고 보기"
})

-----------------------
--  Auchenai Crypts  --
--------------------------------
--  Shirrak the Dead Watcher  --
--------------------------------
L = DBM:GetModLocalization("Shirrak")

L:SetGeneralLocalization({
	name = "죽음의 감시인 쉴라크"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------------
--  Exarch Maladaar  --
-----------------------
L = DBM:GetModLocalization("Maladaar")

L:SetGeneralLocalization({
	name = "총독 말라다르"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------
--  Mana-Tombs  --
-------------------
--  Pandemonius  --
-------------------
L = DBM:GetModLocalization("Pandemonius")

L:SetGeneralLocalization({
	name = "팬더모니우스"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------
--  Tavarok  --
---------------
L = DBM:GetModLocalization("Tavarok")

L:SetGeneralLocalization({
	name = "타바로크"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

----------------------------
--  Nexus-Prince Shaffar  --
----------------------------
L = DBM:GetModLocalization("Shaffar")

L:SetGeneralLocalization({
	name = "연합왕자 샤파르"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------
--  Yor  --
-----------
L = DBM:GetModLocalization("Yor")

L:SetGeneralLocalization({
	name = "요르"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------
--  Sethekk Halls  --
-----------------------
--  Darkweaver Syth  --
-----------------------
L = DBM:GetModLocalization("Syth")

L:SetGeneralLocalization({
	name = "흑마술사 시스"
})

L:SetWarningLocalization({
	SummonElementals	= "정령 소환!"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	SummonElementals	= "정령 소환 경고 보기"
})

------------
--  Anzu  --
------------
L = DBM:GetModLocalization("Anzu")

L:SetGeneralLocalization({
	name = "안주"
})

L:SetWarningLocalization({
	warnBirds	= "곧 안주의 혈족",
	warnStoned	= "%s returned to stone"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	warnBirds	= "안주의 혈족 사전 경고 보기",
	warnStoned	= "Show warning for spirits returning to stone"
})

L:SetMiscLocalization({
    BirdStone	= "%s returns to stone."
})

------------------------
--  Talon King Ikiss  --
------------------------
L = DBM:GetModLocalization("Ikiss")

L:SetGeneralLocalization({
	name = "갈퀴대왕 이키스"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------------
--  Shadow labyrinth  --
--------------------------
--  Ambassador Hellmaw  --
--------------------------
L = DBM:GetModLocalization("Hellmaw")

L:SetGeneralLocalization({
	name = "사자 지옥아귀"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------------------
--  Blackheart the Inciter  --
------------------------------
L = DBM:GetModLocalization("Inciter")

L:SetGeneralLocalization({
	name = "선동자 검은심장"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------
--  Grandmaster Vorpil  --
--------------------------
L = DBM:GetModLocalization("Vorpil")

L:SetGeneralLocalization({
	name = "단장 보르필"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------
--  Murmur  --
--------------
L = DBM:GetModLocalization("Murmur")

L:SetGeneralLocalization({
	name = "울림"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	SetIconOnTouchTarget	= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(33711)
})

-------------------------------
--  Old Hillsbrad Foothills  --
-------------------------------
--  Lieutenant Drake  --
------------------------
L = DBM:GetModLocalization("Drake")

L:SetGeneralLocalization({
	name = "부관 드레이크"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------------
--  Captain Skarloc  --
-----------------------
L = DBM:GetModLocalization("Skarloc")

L:SetGeneralLocalization({
	name = "경비대장 스칼록"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------
--  Epoch Hunter  --
--------------------
L = DBM:GetModLocalization("EpochHunter")

L:SetGeneralLocalization({
	name = "시대의 사냥꾼"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------------
--  The Black Morass  --
------------------------
--  Chrono Lord Deja  --
------------------------
L = DBM:GetModLocalization("Deja")

L:SetGeneralLocalization({
	name = "시간의 군주 데자"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})
----------------
--  Temporus  --
----------------
L = DBM:GetModLocalization("Temporus")

L:SetGeneralLocalization({
	name = "템퍼루스"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})
--------------
--  Aeonus  --
--------------
L = DBM:GetModLocalization("Aeonus")

L:SetGeneralLocalization({
	name = "아에누스"
})

L:SetWarningLocalization({
    warnFrenzy		= "광란!"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
    warnFrenzy		= "광란 경고 보기"
})

L:SetMiscLocalization({
    AeonusFrenzy	= "%s|1이;가; 광란의 상태에 빠집니다!"
})

---------------------
--  Portal Timers  --
---------------------
L = DBM:GetModLocalization("PT")

L:SetGeneralLocalization({
	name = "검은 늪 차원문"
})

L:SetWarningLocalization({
    WarnWavePortalSoon	= "다음 차원문",
    WarnWavePortal		= "차원문 %d",
    WarnBossPortal		= "보스 차원문"
})

L:SetTimerLocalization({
	TimerNextPortal		= "차원문 %d",
})

L:SetOptionLocalization({
    WarnWavePortalSoon	= "다음 차원문 사전 경고 보기",
    WarnWavePortal		= "차원문 열림 경고 보기",
    WarnBossPortal		= "보스 등장 경고 보기",
	TimerNextPortal		= "다음 차원문 타이머 보기 (보스 이후)",
	ShowAllPortalTimers	= "모든 차원문 타이머 보기 (부정확)"
})

L:SetMiscLocalization({
	PortalCheck			= "시간의 균열 열림: (%d+)/18",
	Shielddown			= "No! Damn this feeble, mortal coil!"
})

--------------------
--  The Mechanar  --
-----------------------------
--  Gatewatcher Gyro-Kill  --
-----------------------------
L = DBM:GetModLocalization("Gyrokill")

L:SetGeneralLocalization({
	name = "문지기 회전톱날"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------------------
--  Gatewatcher Iron-Hand  --
-----------------------------
L = DBM:GetModLocalization("Ironhand")

L:SetGeneralLocalization({
	name = "문지기 무쇠주먹"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	JackHammer				= "%s|1이;가; 자신의 망치를 위협적으로 치켜듭니다..."
})

------------------------------
--  Mechano-Lord Capacitus  --
------------------------------
L = DBM:GetModLocalization("Capacitus")

L:SetGeneralLocalization({
	name = "기계군주 캐퍼시투스"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------------------
--  Nethermancer Sepethrea  --
------------------------------
L = DBM:GetModLocalization("Sepethrea")

L:SetGeneralLocalization({
	name = "황천술사 세페스레아"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------------------
--  Pathaleon the Calculator  --
--------------------------------
L = DBM:GetModLocalization("Pathaleon")

L:SetGeneralLocalization({
	name = "철두철미한 파탈리온"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------
--  The Botanica  --
--------------------------
--  Commander Sarannis  --
--------------------------
L = DBM:GetModLocalization("Sarannis")

L:SetGeneralLocalization({
	name = "지휘관 새래니스"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

------------------------------
--  High Botanist Freywinn  --
------------------------------
L = DBM:GetModLocalization("Freywinn")

L:SetGeneralLocalization({
	name = "고위 식물학자 프레이윈"
})

L:SetWarningLocalization({
	WarnTranq		= "평온 - 쫄 처리!"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	WarnTranq		= "평온 경고 보기"
})

-----------------------------
--  Thorngrin the Tender  --
-----------------------------
L = DBM:GetModLocalization("Thorngrin")

L:SetGeneralLocalization({
	name = "감시인 쏜그린"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------
--  Laj  --
-----------
L = DBM:GetModLocalization("Laj")

L:SetGeneralLocalization({
	name = "라즈"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------
--  Warp Splinter  --
---------------------
L = DBM:GetModLocalization("WarpSplinter")

L:SetGeneralLocalization({
	name = "차원의 분리자"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

--------------------
--  The Arcatraz  --
----------------------------
--  Zereketh the Unbound  --
----------------------------
L = DBM:GetModLocalization("Zereketh")

L:SetGeneralLocalization({
	name = "속박이 풀린 제레케스"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-----------------------------
--  Dalliah the Doomsayer  --
-----------------------------
L = DBM:GetModLocalization("Dalliah")

L:SetGeneralLocalization({
	name = "파멸의 예언자 달리아"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

---------------------------------
--  Wrath-Scryer Soccothrates  --
---------------------------------
L = DBM:GetModLocalization("Soccothrates")

L:SetGeneralLocalization({
	name = "격노의 점술사 소코드라테스"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

-------------------------
--  Harbinger Skyriss  --
-------------------------
L = DBM:GetModLocalization("Skyriss")

L:SetGeneralLocalization({
	name = "선구자 스키리스"
})

L:SetWarningLocalization({
	warnSplit		= "분리!",
	warnSplitSoon	= "곧 분리!"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	warnSplit		= "분리 경고 보기",
	warnSplitSoon	= "분리 사전 경고 보기"
})

L:SetMiscLocalization({
	Split			= "밤하늘의 무한한 별처럼 온 우주를 덮으리라!"
})

--------------------------
--  Magisters' Terrace  --
--------------------------
--  Selin Fireheart  --
-----------------------
L = DBM:GetModLocalization("Selin")

L:SetGeneralLocalization({
	name = "셀린 파이어하트"
})

L:SetWarningLocalization({
	warnChanneling		= "분노의 마나!"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	warnChanneling		= "분노의 마나 경고 보기"
})

L:SetMiscLocalization({
	ChannelCrystal		= "%s|1이;가; 근처의 지옥 수정에서 힘을 끌어냅니다..."
})

----------------
--  Vexallus  --
----------------
L = DBM:GetModLocalization("Vexallus")

L:SetGeneralLocalization({
	name = "벡살루스"
})

L:SetWarningLocalization({
	WarnEnergy		= "순수한 마력덩어리 방출!"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	WarnEnergy		= "순수한 마력덩어리 방출 경고 보기"
})

L:SetMiscLocalization({
	Discharge		= "억제할 수... 없다."
})

--------------------------
--  Priestess Delrissa  --
--------------------------
L = DBM:GetModLocalization("Delrissa")

L:SetGeneralLocalization({
	name = "여사제 델리사"
})

L:SetWarningLocalization({
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	DelrissaPull	= "저들을 밟아줘라.",
	DelrissaEnd		= "뭔가... 잘못됐어."
})

------------------------------------
--  Kael'thas Sunstrider (Party)  --
------------------------------------
L = DBM:GetModLocalization("Kael")

L:SetGeneralLocalization({
	name = "캘타스 선스트라이더 (5인)"
})

L:SetWarningLocalization({
	specwarnPyroblast	= "불덩이 작렬 - 차단"
})

L:SetTimerLocalization({
})

L:SetOptionLocalization({
	specwarnPyroblast	= "불덩이 작렬 시전에 대한 특수 경고 보기"
})

L:SetMiscLocalization({
	KaelP2				= "세상을... 거꾸로... 뒤집어주마."
})



