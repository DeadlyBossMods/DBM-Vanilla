if GetLocale() ~= "ruRU" then return end

local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "Пророк Скерам"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "Семейство жуков"
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
--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "Нечистотон"
}
L:SetWarningLocalization{
	WarnFreeze	= "Заморозка: %d/3",
	WarnShatter	= "Разрушение: %d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "Объявлять о состоянии заморозки",
	WarnShatter	= "Объявлять о состоянии разрушения"
}
L:SetMiscLocalization{
	Slow	= "начинает замедляться",
	Freezing= "замерзает",
	Frozen	= "заморожен",
	Phase4 	= "начинает трескаться",
	Phase5 	= "выглядит готовым разлететься вдребезги",
	Phase6 	= "Взрывается.",

	HitsRemain	= "Оставшиеся попадания",
	Frost		= "Мороз",
	Physical	= "Физический"
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "Принцесса Хухуран"
}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "Императоры-близнецы"
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
L:SetWarningLocalization{
	WarnEyeTentacle 	= "Появляются Глазные отростки!",
	WarnClawTentacle2	= "Появляется Когтещупальце!",
	WarnGiantEyeTentacle	= "Появляется гигантский Глазной отросток!",
	WarnGiantClawTentacle	= "Появляется гигантское Когтещупальце!",
	WarnWeakened 		= "К'Тун ослаблен! Бейте его!"
}
L:SetTimerLocalization{
	TimerEyeTentacle	= "Глазные отростки",
	TimerGiantEyeTentacle	= "Гигантский Глазной отросток",
	TimerClawTentacle	= "Когтещупальце",
	TimerGiantClawTentacle	= "Гигантское Когтещупальце",
	TimerWeakened		= "К'Тун ослаблен"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "Показывать предупреждение для Глазных отростков",
	WarnClawTentacle2		= "Показывать предупреждение для Когтещупальца",
	WarnGiantEyeTentacle	= "Показывать предупреждение для Гигантского глазного отростка",
	WarnGiantClawTentacle	= "Показывать предупреждение для Гигантского Когтещупальца",
	SpecWarnWeakened		= "Показывать спецпредупреждение, когда босс ослабевает",
	TimerEyeTentacle		= "Показывать таймер для следующих Глазных отростков",
	TimerClawTentacle		= "Показывать таймер для следующего Когтещупальца",
	TimerGiantEyeTentacle	= "Показывать таймер для следующих Гигантских Глазных отростков",
	TimerGiantClawTentacle	= "Показывать таймер для следующего Гигантского Когтещупальца",
	TimerWeakened			= "Показывать таймер продолжительности ослабления босса",
	RangeFrame				= "Показывать окно дистанции (10)"
}
L:SetMiscLocalization{
	Stomach		= "Stomach",
	Eye			= "Eye of C'Thun",
	FleshTent	= "Flesh Tentacle",--Localized so it shows on frame in users language, not senders
	Weakened 	= "weaken",
	NotValid	= "AQ40 partially cleared. %s optional bosses remain."
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "Оуро"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Закапывание",
	WarnEmerge			= "Появление"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Закапывание",
	TimerEmerge			= "Появление"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Показывать предупреждение о закапывании",
	TimerSubmerge		= "Показывать таймер до закапывания",
	WarnEmerge			= "Показывать предупреждение о появлении",
	TimerEmerge			= "Показывать таймер до появления"
}

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "AQ40: Трэш мобы"
}

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "Куриннакс"
}

------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "Генерал Раджакс"
}
L:SetWarningLocalization{
	WarnWave	= "Волна %s"
}
L:SetOptionLocalization{
	WarnWave	= "Показывать предупреждение о следующей волне"
}
L:SetMiscLocalization{
	Wave1		= "Они пришли. Постарайся не дать себя убить, ",
	Wave3		= "Час возмездия близок! Да охватит мрак сердца наших врагов!",
	Wave4		= "Мы не будем больше ждать за запертыми дверьми и каменными стенами! Мы не будем больше отказываться от возмездия! Даже драконы содрогнутся перед нашим гневом!",
	Wave5		= "Пусть наши враги трепещут! Смерть им!",
	Wave6		= "Олений Шлем будет скулить и молить о пощаде, в точности как его сопливый сынок! Тысячелетняя несправедливость сегодня закончится!",
	Wave7		= "Фэндрал! Твой час пробил! Иди же, прячься в Изумрудном Сне и молись, чтобы мы до тебя не добрались!",
	Wave8		= "Настырная тварь! Я сам тебя убью!"
}

----------
-- Moam --
----------
L = DBM:GetModLocalization("Moam")

L:SetGeneralLocalization{
	name 		= "Моам"
}

----------
-- Buru --
----------
L = DBM:GetModLocalization("Buru")

L:SetGeneralLocalization{
	name 		= "Буру Ненасытный"
}
L:SetWarningLocalization{
	WarnPursue		= "Преследует >%s<",
	SpecWarnPursue	= "Преследует вас!",
	WarnDismember	= "%s на >%s< (%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "Называть преследуемые цели",
	SpecWarnPursue	= "Показывать спецпредупреждение, когда преследование на Вас",
	WarnDismember	= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.spell:format(96)
}
L:SetMiscLocalization{
	PursueEmote 	= "%s sets eyes on %s!"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "Аямисса Охотница"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "Оссириан Неуязвимый"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "Объявлять слабость",
	TimerVulnerable	= "Показывать таймер до слабости"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "AQ20: Трэш мобы"
}

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "Бритвосмерт Неукротимый"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "Появление аддов"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "Показывать таймер до первого появления аддов"
}
L:SetMiscLocalization{
	Phase2Emote	= "flee as the controlling power of the orb is drained.",
	YellPull 	= "Intruders have breached the hatchery! Sound the alarm! Protect the eggs at all costs!\r\n"--Yes this yell actually has a return and new line in it. as grabbed by transcriptor
}

-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name = "Валестраз Порочный"
}
L:SetMiscLocalization{
	Event	= "Слишком поздно, друзья!"
}

-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name = "Предводитель драконов Разящий Бич"
}

L:SetMiscLocalization{
	Pull	= "None of your kind should be here!  You've doomed only yourselves!"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "Огнечрев"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "Черноскал"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "Пламегор"
}

-----------------------
--  Vulnerabilities  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("TalonGuards")

L:SetGeneralLocalization{
	name = "Стражи Когтя Смерти"
}
L:SetWarningLocalization{
	WarnVulnerable		= "Уязвимость к %s"
}
L:SetOptionLocalization{
	WarnVulnerable		= "Показывать предупреждение об уязвимости к заклинаниям"
}
L:SetMiscLocalization{
	Fire		= "Огню",
	Nature		= "силам Природы",
	Frost		= "магии Льда",
	Shadow		= "Темной магии",
	Arcane		= "Тайной магии",
	Holy		= "Светлой магии"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "Хромаггус"
}
L:SetWarningLocalization{
	WarnBreath		= "%s",
	WarnVulnerable	= "Уязвимость к %s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s восстановление",
	TimerBreath		= "Применение %s",
	TimerVulnCD		= "Восстановление уязвимости"
}
L:SetOptionLocalization{
	WarnBreath		= "Показывать предупреждение о дыханиях Хромаггуса",
	WarnVulnerableNew	= "Показывать предупреждение об уязвимости к заклинаниям",
	TimerBreathCD	= "Показывать время восстановления дыханий",
	TimerBreath		= "Показывать применение Дыхания",
	TimerVulnCD		= "Показывать восстановление уязвимости"
}
L:SetMiscLocalization{
	Breath1		= "Первое Дыхание",
	Breath2		= "Второе Дыхание",
	VulnEmote	= "%s уходит, мерцая.",
	Vuln		= "Уязвимость",
	Fire		= "Огню",
	Nature		= "силам Природы",
	Frost		= "магии Льда",
	Shadow		= "Темной магии",
	Arcane		= "Тайной магии",
	Holy		= "Светлой магии"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "Нефариан"
}
L:SetWarningLocalization{
	WarnAddsLeft		= "Осталось %d убийств",
	WarnClassCall		= "Дебафф на %s",
	specwarnClassCall	= "Классовый зов на тебе!"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s зов заканчивается"
}
L:SetOptionLocalization{
	TimerClassCall		= "Показывать таймер классовых вызовов",
	WarnAddsLeft		= "Объявлять количество убийств, оставшихся до начала 2-го этапа",
	WarnClassCall		= "Объявлять классовый вызов",
	specwarnClassCall	= "Показывать спецпредупреждение, когда Вы подвержены классовому зову"
}
L:SetMiscLocalization{
	YellP1		= "Let the games begin!",
	YellP2		= "Браво, слуги мои! Смертные утрачивают мужество! Поглядим же, как они справятся с истинным Повелителем Черной горы!!!",
	YellP3		= "Не может быть! Восстаньте, мои прислужники! Послужите господину еще раз!",
	YellShaman	= "Шаманы, покажите, на что способны ваши тотемы!",
	YellPaladin	= "Паладины… Я слышал, у вас несколько жизней. Докажите.",
	YellDruid	= "Друиды и их дурацкие превращения… Ну что ж, поглядим!",
	YellPriest	= "Жрецы! Если вы собираетесь продолжать так лечить, то давайте хоть немного разнообразим процесс!",
	YellWarrior	= "Воины! Я знаю, вы можете бить сильнее! Ну-ка, покажите!",
	YellRogue	= "Rogues? Stop hiding and face me!",
	YellWarlock	= "Чернокнижники, ну не беритесь вы за волшебство, которого сами не понимаете! Видите, что получилось?",
	YellHunter	= "Охотники со своими жалкими пугачами!",
	YellMage	= "И маги тоже? Осторожнее надо быть, когда играешь с магией…",
	YellDK		= "Death Knights... get over here!",
	YellMonk	= "Monk",
	YellDH		= "Demon hunters? How odd, covering your eyes like that. Doesn't it make it hard to see the world around you?"
}

----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization{
	name = "Люцифрон"
}

----------------
--  Magmadar  --
----------------
L = DBM:GetModLocalization("Magmadar")

L:SetGeneralLocalization{
	name = "Магмадар"
}

----------------
--  Gehennas  --
----------------
L = DBM:GetModLocalization("Gehennas")

L:SetGeneralLocalization{
	name = "Гееннас"
}

------------
--  Garr  --
------------
L = DBM:GetModLocalization("Garr-Classic")

L:SetGeneralLocalization{
	name = "Гарр (Classic)"
}

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization{
	name = "Барон Геддон"
}

----------------
--  Shazzrah  --
----------------
L = DBM:GetModLocalization("Shazzrah")

L:SetGeneralLocalization{
	name = "Шаззрах"
}

----------------
--  Sulfuron  --
----------------
L = DBM:GetModLocalization("Sulfuron")

L:SetGeneralLocalization{
	name = "Предвестник Сульфурон"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "Големагг Испепелитель"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "Мажордом Экзекутус"
}
L:SetTimerLocalization{
	timerShieldCD		= "Следующий щит"
}
L:SetOptionLocalization{
	timerShieldCD		= "Показывать таймер для следующего урона/отражения щита"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "Рагнарос (Classic)"
}
L:SetWarningLocalization{
	WarnSubmerge		= "Погружение",
	WarnEmerge			= "Появление"
}
L:SetTimerLocalization{
	TimerSubmerge		= "Погружение",
	TimerEmerge			= "Появление",
}
L:SetOptionLocalization{
	WarnSubmerge		= "Показывать предупреждение о погружении",
	TimerSubmerge		= "Показывать время до погружения",
	WarnEmerge			= "Показывать предупреждение о появлении",
	TimerEmerge			= "Показывать время до появления",
}
L:SetMiscLocalization{
	Submerge	= "ПРИДИТЕ, МОИ СЛУГИ! ЗАЩИТИТЕ СВОЕГО ХОЗЯИНА!",
	Pull		= "Нахальные щенки! Вы сами обрекли себя на смерть! Узрите же Повелителя в гневе!"
}

-----------------
--  The Molten Core (Placeholder?_  --
-----------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "Огненные Недра"
}

-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "MC: Трэш мобы"
}

-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "Верховный жрец Веноксис"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "Верховная жрица Джеклик"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "Верховная жрица Мар'ли"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "Верховный жрец Текал"
}

L:SetWarningLocalization({
	WarnSimulKill	= "Первый адд пал - воскрешение через ~15 сек."
})

L:SetTimerLocalization({
	TimerSimulKill	= "Воскрешение"
})

L:SetOptionLocalization({
	WarnSimulKill	= "Объявлять о смерти первого адда",
	TimerSimulKill	= "Показывать время до воскрешения жреца"
})

L:SetMiscLocalization({
	PriestDied	= "%s умирает.",
	YellPhase2	= "Ширвалла, наполни меня своим ГНЕВОМ!",
	YellKill	= "Хаккар больше не властен надо мной! Наконец-то я обрел покой!",
	Thekal		= "Верховный жрец Текал",
	Zath		= "Ревнитель Зат",
	LorKhan		= "Ревнитель Лор'Кхан"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "Верховная жрица Арлокк"
}

-------------------
--  Hakkar  --
-------------------
L = DBM:GetModLocalization("Hakkar")

L:SetGeneralLocalization{
	name = "Хаккар"
}

-------------------
--  Bloodlord  --
-------------------
L = DBM:GetModLocalization("Bloodlord")

L:SetGeneralLocalization{
	name = "Мандокир Повелитель Крови"
}
L:SetMiscLocalization{
	Bloodlord 	= "Мандокир Повелитель Крови",
	Ohgan		= "Охган",
	GazeYell	= "Я за тобой слежу"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "Грань Безумия"
}
L:SetMiscLocalization{
	Hazzarah = "Хазза'рах",
	Renataki = "Ренатаки",
	Wushoolay = "Вушулай",
	Grilek = "Гри'лек"
}

-------------------
--  Gahz'ranka  --
-------------------
L = DBM:GetModLocalization("Gahzranka")

L:SetGeneralLocalization{
	name = "Газ'ранка"
}

-------------------
--  Jindo  --
-------------------
L = DBM:GetModLocalization("Jindo")

L:SetGeneralLocalization{
	name = "Мастер проклятий Джин'до"
}

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("OnyxiaVanilla")

L:SetGeneralLocalization{
	name = "Ониксия"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "Скоро дракончики Ониксии"
}

L:SetTimerLocalization{
	TimerWhelps	= "Вызов дракончиков Ониксии"
}

L:SetOptionLocalization{
	TimerWhelps				= "Отсчет времени до дракончиков Ониксии",
	WarnWhelpsSoon			= "Предупреждать заранее о дракончиках Ониксии",
	SoundWTF3				= "Воспроизвести забавные звуки из легендарного классического рейда Ониксии"
}

L:SetMiscLocalization{
	Breath = "%s под воздействием Глубокого вдоха...",
	YellPull = "Вот это сюрприз. Обычно, чтобы найти обед, мне приходится покидать логово.",
	YellP2 = "Эта бессмысленная возня вгоняет меня в тоску. Я сожгу вас всех!",
	YellP3 = "Похоже, вам требуется преподать еще один урок, смертные!"
}

-------------------
--  Anub'Rekhan  --
-------------------
L = DBM:GetModLocalization("AnubRekhanVanilla")

L:SetGeneralLocalization({
	name = "Ануб'Рекан"
})

L:SetOptionLocalization({
	ArachnophobiaTimer	= "Отсчет времени для Арахнофобия (достижение)"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Арахнофобия",
	Pull1				= "Бегите, бегите! Я люблю горячую кровь!",
	Pull2				= "Посмотрим, какие вы на вкус!"
})

----------------------------
--  Grand Widow Faerlina  --
----------------------------
L = DBM:GetModLocalization("FaerlinaVanilla")

L:SetGeneralLocalization({
	name = "Великая вдова Фарлина"
})

L:SetWarningLocalization({
	WarningEmbraceExpire	= "Объятие Вдовы через 5 секунд",
	WarningEmbraceExpired	= "Объятие Вдовы исчезает"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "Предупреждение, когда Объятие Вдовы исчезает",
	WarningEmbraceExpired	= "Предупреждение, когда Объятие Вдовы закончится"
})

L:SetMiscLocalization({
	Pull					= "Склонитесь передо мной, черви!"--Not actually pull trigger, but often said on pull
})

---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("MaexxnaVanilla")

L:SetGeneralLocalization({
	name = "Мексна"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "Паученыши Мексны через 5 секунд",
	WarningSpidersNow	= "В паутине появляются паучата"
})

L:SetTimerLocalization({
	TimerSpider	= "Паученыши Мексны"
})

L:SetOptionLocalization({
	WarningSpidersSoon	= "Предупреждать перед следующим призывом Паученышей Мексны",
	WarningSpidersNow	= "Предупреждение для призыва Паученышей Мексны",
	TimerSpider			= "Отсчет времени до Паученышей Мексны"
})

L:SetMiscLocalization({
	ArachnophobiaTimer	= "Арахнофобия"
})

------------------------------
--  Noth the Plaguebringer  --
------------------------------
L = DBM:GetModLocalization("NothVanilla")

L:SetGeneralLocalization({
	name = "Нот Чумной"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Телепортация",
	WarningTeleportSoon	= "Телепортация через 20 секунд"
})

L:SetTimerLocalization({
	TimerTeleport		= "Телепортация",
	TimerTeleportBack	= "Телепортация обратно"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Предупреждение о телепортации",
	WarningTeleportSoon	= "Предупреждать перед следующей телепортацией",
	TimerTeleport		= "Отсчет времени до телепортации",
	TimerTeleportBack	= "Отсчет времени до обратной телепортации"
})

L:SetMiscLocalization({
	Pull				= "Смерть чужакам!"
})

--------------------------
--  Heigan the Unclean  --
--------------------------
L = DBM:GetModLocalization("HeiganVanilla")

L:SetGeneralLocalization({
	name = "Хейган Нечестивый"
})

L:SetWarningLocalization({
	WarningTeleportNow	= "Телепортация",
	WarningTeleportSoon	= "Телепортация через %d сек."
})

L:SetTimerLocalization({
	TimerTeleport	= "Телепортация"
})

L:SetOptionLocalization({
	WarningTeleportNow	= "Предупреждение о телепортации",
	WarningTeleportSoon	= "Предупреждать перед следующей телепортацией",
	TimerTeleport		= "Отсчет времени до телепортации"
})

L:SetMiscLocalization({
	Pull				= "Теперь вы принадлежите мне!"
})

---------------
--  Loatheb  --
---------------
L = DBM:GetModLocalization("LoathebVanilla")

L:SetGeneralLocalization({
	name = "Лотхиб"
})

L:SetWarningLocalization({
	WarningHealSoon	= "Можно исцелять через 3 секунды",
	WarningHealNow	= "Исцеляйте сейчас"
})

L:SetOptionLocalization({
	WarningHealSoon		= "Предупреждать заранее перед 3-х секундным окном исцеления",
	WarningHealNow		= "Предупреждение для 3-х секундного окна исцеления"
})

-----------------
--  Patchwerk  --
-----------------
L = DBM:GetModLocalization("PatchwerkVanilla")

L:SetGeneralLocalization({
	name = "Лоскутик"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1			= "Лоскутик хочет поиграть!",
	yell2			= "Кел'Тузад объявил Лоскутика воплощением войны!"
})

-----------------
--  Grobbulus  --
-----------------
L = DBM:GetModLocalization("GrobbulusVanilla")

L:SetGeneralLocalization({
	name = "Гроббулус"
})

-------------
--  Gluth  --
-------------
L = DBM:GetModLocalization("GluthVanilla")

L:SetGeneralLocalization({
	name = "Глут"
})

----------------
--  Thaddius  --
----------------
L = DBM:GetModLocalization("ThaddiusVanilla")

L:SetGeneralLocalization({
	name = "Таддиус"
})

L:SetMiscLocalization({
	Yell	= "Сталагг сокрушит вас!",
	Emote	= "Катушка Теслы перезагружается!",
	Emote2	= "Катушка Теслы теряет связь!",
	Boss1	= "Фойген",
	Boss2	= "Сталагг",
	Charge1 = "отрицательную",
	Charge2 = "положительную"
})

L:SetOptionLocalization({
	WarningChargeChanged	= "Спецпредупреждение, когда Ваша полярность изменена",
	WarningChargeNotChanged	= "Спецпредупреждение, когда Ваша полярность не изменена",
	AirowsEnabled			= "Показывать стрелки во время $spell:28089 (обычная \"2-сторонняя\" стратегия)",
	TwoCamp					= "Показывать стрелки (обычная \"2-сторонняя\" стратегия)",
	ArrowsRightLeft			= "Показывать стрелки влево/вправо для \"4-сторонней\" стратегии (показывать стрелку влево, если полярность изменилась, стрелку вправо, если нет)",
	ArrowsInverse			= "Обратная \"4-сторонняя\" стратегия (показывать стрелку вправо, если полярность изменилась, влево, если нет)"
})

L:SetWarningLocalization({
	WarningChargeChanged	= "Полярность изменена на %s",
	WarningChargeNotChanged	= "Полярность не изменена"
})

----------------------------
--  Instructor Razuvious  --
----------------------------
L = DBM:GetModLocalization("RazuviousVanilla")

L:SetGeneralLocalization({
	name = "Инструктор Разувий"
})

L:SetMiscLocalization({
	Yell1 = "Покажите мне, на что способны!",
	Yell2 = "Обучение окончено! Покажите мне, что вы усвоили!",
	Yell3 = "Вспомните, чему я вас учил!",
	Yell4 = "Выше ногу! Или у тебя с этим проблемы?"
})

L:SetOptionLocalization({
	WarningShieldWallSoon	= "Предупреждать о скором исчезновении Стены костей"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "Стена костей закончится через 5 секунд"
})

----------------------------
--  Gothik the Harvester  --
----------------------------
L = DBM:GetModLocalization("GothikVanilla")

L:SetGeneralLocalization({
	name = "Готик Жнец"
})

L:SetOptionLocalization({
	TimerWave			= "Отсчет времени до следующей волны",
	TimerPhase2			= "Отсчет времени до 2-й фазы",
	WarningWaveSoon		= "Предупреждать перед следующей волной",
	WarningWaveSpawned	= "Предупреждение для волны призыва",
	WarningRiderDown	= "Предупреждение, когда Всадник мертв",
	WarningKnightDown	= "Предупреждение, когда Рыцарь мертв"
})

L:SetTimerLocalization({
	TimerWave	= "Волна %d",
	TimerPhase2	= "Фаза 2"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "Волна %d: %s через 3 секунды",
	WarningWaveSpawned	= "Волна %d: %s призван",
	WarningRiderDown	= "Всадник мертв",
	WarningKnightDown	= "Рыцарь мертв",
	WarningPhase2		= "Фаза 2"
})

L:SetMiscLocalization({
	yell			= "Глупо было искать свою смерть.",
	WarningWave1	= "%d %s",
	WarningWave2	= "%d %s и %d %s",
	WarningWave3	= "%d %s, %d %s и %d %s",
	Trainee			= "Ученика",
	Knight			= "Рыцаря",
	Rider			= "Всадника"
})

---------------------
--  Four Horsemen  --
---------------------
L = DBM:GetModLocalization("HorsemenVanilla")

L:SetGeneralLocalization({
	name = "Четыре Всадника"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "Предупреждать перед следующими знаком",
	SpecialWarningMarkOnPlayer	= "Спецпредупреждение, когда больше 4-х знаков на Вас",
	timerMark					= "Показывать таймер для следующего знака Всадника (со счетчиком)"
})

L:SetTimerLocalization({
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Знак %d через 3 секунды",
	SpecialWarningMarkOnPlayer	= "%s: %s"
})

L:SetMiscLocalization({
	Korthazz	= "Тан Кортазз",
	Rivendare	= "Барон Ривендер",
	Blaumeux	= "Леди Бломе",
	Zeliek		= "Сэр Зелиек"
})

-----------------
--  Sapphiron  --
-----------------
L = DBM:GetModLocalization("SapphironVanilla")

L:SetGeneralLocalization({
	name = "Сапфирон"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon	= "Предупреждать о приближении Воздушной фазы",
	WarningAirPhaseNow	= "Объявлять Воздушную фазу",
	WarningLanded		= "Объявлять Наземную фазу",
	TimerAir			= "Отсчет времени до Воздушной фазы",
	TimerLanding		= "Отсчет времени до приземления",
	TimerIceBlast		= "Отсчет времени до Ледяного дыхания",
	WarningDeepBreath	= "Специальное объявление Ледяного Дыхания"
})

L:SetMiscLocalization({
	EmoteBreath			= "%s делает глубокий вдох."
})

L:SetWarningLocalization({
	WarningAirPhaseSoon	= "Воздушная фаза через 10 секунд",
	WarningAirPhaseNow	= "Воздушная фаза",
	WarningLanded		= "Сапфирон приземляется",
	WarningDeepBreath	= "Ледяное дыхание"
})

L:SetTimerLocalization({
	TimerAir		= "Воздушная фаза",
	TimerLanding	= "Приземление",
	TimerIceBlast	= "Ледяное дыхание"
})

------------------
--  Kel'Thuzad  --
------------------

L = DBM:GetModLocalization("KelThuzadVanilla")

L:SetGeneralLocalization({
	name = "Кел'Тузад"
})

L:SetOptionLocalization({
	TimerPhase2			= "Отсчет времени до 2-й фазы",
	specwarnP2Soon		= "Спецпредупреждение за 10 секунд до вступления Кел'Тузада в бой",
	warnAddsSoon		= "Предупреждать заранее о Стражах Ледяной Короны"
})

L:SetMiscLocalization({
	Yell = "Соратники, слуги, солдаты холодной тьмы! Повинуйтесь зову Кел'Тузада!"
})

L:SetWarningLocalization({
	specwarnP2Soon	= "Кел'Тузад вступает в бой через 10 секунд",
	warnAddsSoon	= "Скоро прибытие Стражей Ледяной Короны"
})

L:SetTimerLocalization({
	TimerPhase2	= "Фаза 2"
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
	name = "Барон Акванис"
})

L:SetMiscLocalization({
	Water		= "Вода"
})

------------------
--  Ghamoo-ra  --
------------------
L = DBM:GetModLocalization("GhamooraSoD")

L:SetGeneralLocalization({
	name = "Гхаму-ра"
})

------------------
--  Lady Sarevess  --
------------------
L = DBM:GetModLocalization("LadySarevessSoD")

L:SetGeneralLocalization({
	name = "Леди Саревесс"
})

------------------
--  Gelihast  --
------------------
L = DBM:GetModLocalization("GelihastSoD")

L:SetGeneralLocalization({
	name = "Гелихаст"
})

L:SetTimerLocalization{
	TimerImmune = "Невосприимчивость заканчивается"
}

L:SetOptionLocalization({
	TimerImmune	= "Показывать таймер продолжительности невосприимчивости Гелихаста во время смены фаз"
})

------------------
--  Lorgus Jett  --
------------------
L = DBM:GetModLocalization("LorgusJettSoD")

L:SetGeneralLocalization({
	name = "Лоргус Джетт"
})

L:SetWarningLocalization({
	warnPriestRemaining		= "Осталось %s жриц"
})

L:SetOptionLocalization({
	warnPriestRemaining	= "Показывать предупреждение о том, сколько осталось Жриц прилива из Непроглядной Пучины" --Жрица прилива из Непроглядной Пучины
})

------------------
--  Twilight Lord Kelris  --
------------------
L = DBM:GetModLocalization("TwilightLordKelrisSoD")

L:SetGeneralLocalization({
	name = "Повелитель сумрака Келрис"
})

------------------
--  Aku'mai  --
------------------
L = DBM:GetModLocalization("AkumaiSoD")

L:SetGeneralLocalization({
	name = "Аку'май"
})

------------------
--  Gnomeregan  --
------------------

---------------------------
--  Crowd Pummeler 9-60  --
---------------------------
L = DBM:GetModLocalization("CrowdPummellerSoD")

L:SetGeneralLocalization({
	name = "\"Толпогон 9-60\""
})

---------------
--  Grubbis  --
---------------
L = DBM:GetModLocalization("GrubbisSoD")

L:SetGeneralLocalization({
	name = "Грязнюк"
})

L:SetMiscLocalization({
	FirstPull = "Некоторые вентиляционные шахты до сих пор разносят радиоактивные вещества по всему Гномрегану.",
	Pull = "О нет! Такие толчки могут означать только одно..."
})

----------------------------
--  Electrocutioner 6000  --
----------------------------
L = DBM:GetModLocalization("ElectrocutionerSoD")

L:SetGeneralLocalization({
	name = "Электрошокер 6000"
})

-----------------------
--  Viscous Fallout  --
-----------------------
L = DBM:GetModLocalization("ViscousFalloutSoD")

L:SetGeneralLocalization({
	name = "Липкая муть"
})

----------------------------
--  Mechanical Menagerie  --
----------------------------
L = DBM:GetModLocalization("MechanicalMenagerieSoD")

L:SetGeneralLocalization({
	name = "Механический зверинец"
})

L:SetMiscLocalization{
	Sheep		= "Овца",
	Whelp		= "Дракончик",
	Squirrel	= "Белка",
	Chicken		= "Курица"
}

-----------------------------
--  Mekgineer Thermaplugg  --
-----------------------------
L = DBM:GetModLocalization("ThermapluggSoD")

L:SetGeneralLocalization({
	name = "Анжинер Термоштепсель"
})

L:SetTimerLocalization{
	timerTankCD = "Способность танка"
}

L:SetOptionLocalization({
	timerTankCD	= "Показывать таймер перезарядки случайных способностей танка на 4 этапе"
})

------------------
--  Sunken Temple  --
------------------

---------------------------
--  Atal'alarion  --
---------------------------
L = DBM:GetModLocalization("AtalalarionSoD")

L:SetGeneralLocalization({
	name = "Атал'аларион"
})

---------------------------
--  Festering Rotslime  --
---------------------------
L = DBM:GetModLocalization("FesteringRotslimeSoD")

L:SetGeneralLocalization({
	name = "Гнойная гнилослизь"
})

---------------------------
--  Atal'ai Defenders  --
---------------------------
L = DBM:GetModLocalization("AtalaiDefendersSoD")

L:SetGeneralLocalization({
	name = "Защитники Атал'ай"
})
---------------------------
--  Dreamscythe and Weaver  --
---------------------------
L = DBM:GetModLocalization("DreamscytheAndWeaverSoD")

L:SetGeneralLocalization({
	name = "Жнец Снов и Ткачик"
})
---------------------------
--  Avatar of Hakkar  --
---------------------------
L = DBM:GetModLocalization("AvatarofHakkarSoD")

L:SetGeneralLocalization({
	name = "Аватара Хаккара"
})
---------------------------
--  Jammal'an and Ogom  --
---------------------------
L = DBM:GetModLocalization("JammalanAndOgomSoD")

L:SetGeneralLocalization({
	name = "Джаммал'ан и Огом"
})
---------------------------
--  Morphaz and Hazzas  --
---------------------------
L = DBM:GetModLocalization("MorphazandHazzasSoD")

L:SetGeneralLocalization({
	name = "Морфаз и Хаззас"
})
---------------------------
--  Shade of Eranikus  --
---------------------------
L = DBM:GetModLocalization("ShadeofEranikusSoD")

L:SetGeneralLocalization({
	name = "Тень Эраникуса"
})
