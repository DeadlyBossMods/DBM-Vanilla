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

	FrostHitsPerSecond = "Попадания в заморозке в секунду",
	MeleeHitsPerSecond = "Попадания в ближнем бою в секунду"
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
	TimerEyeTentacle		= "Показывать таймер до следующих Глазных отростков",
	TimerClawTentacle		= "Показывать таймер до следующего Когтещупальца",
	TimerGiantEyeTentacle	= "Показывать таймер до следующих Гигантских Глазных отростков",
	TimerGiantClawTentacle	= "Показывать таймер до следующего Гигантского Когтещупальца",
	TimerWeakened			= "Показывать таймер продолжительности ослабления босса",
	RangeFrame				= "Показывать окно дистанции (10 м.)"
}
L:SetMiscLocalization{
	Stomach		= "Желудок",
	Eye			= "Око К'Туна",
	FleshTent	= "Мясистое щупальце",
	Weakened 	= "weaken",
	NotValid	= "AQ40 частично очищен. Осталось %s дополнительных боссов."
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
	WarnEmerge			= "Появление",
	SpecWarnEye			= "Отвернитесь",
}
L:SetTimerLocalization{
	TimerSubmerge		= "Закапывание",
	TimerEmerge			= "Появление"
}
L:SetOptionLocalization{
	WarnSubmerge		= "Показывать предупреждение о закапывании",
	TimerSubmerge		= "Показывать таймер до закапывания",
	WarnEmerge			= "Показывать предупреждение о появлении",
	TimerEmerge			= "Показывать таймер до появления",
	SpecWarnEye			= "Показывать предупреждение о Гигантском глазе"
}

----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "Трэш мобы Ан'Кираж 40"
}

L:SetTimerLocalization{
	TimerExplosion = "Взрывающиеся Призраки"
}

L:SetWarningLocalization{
	WarnExplosion = "Появился одиночный взрывающийся Призрак - уклоняйтесь",
	SpecWarnExplosion = "Взрывающиеся Призраки - уклоняйтесь",
}
L:SetOptionLocalization{
	WarnExplosion = "Показывать предупреждение взрывающихся Призраков ($spell:1214871)",
	SpecWarnExplosion = "Показывать спецпредупреждение при появлении нескольких взрывающихся Призраков ($spell:1214871)",
	TimerExplosion = "Показывать таймер, когда появляется несколько взрывающихся Призраков ($spell:1214871)"
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
	WarnPursue		= "Показывать предупреждение о преследуемых целях",
	SpecWarnPursue	= "Показывать спецпредупреждение, когда преследование на Вас",
	WarnDismember	= DBM_CORE_L.AUTO_ANNOUNCE_OPTIONS.spell:format(96)
}
L:SetMiscLocalization{
	PursueEmote 	= " смотрит на "
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
	WarnVulnerable	= "Показывать предупреждение о слабости",
	TimerVulnerable	= "Показывать таймер до слабости"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "Трэш мобы Ан'Кираж 20"
}

L:SetTimerLocalization{
	TimerExplosion = "Взрывающиеся Призраки"
}

L:SetWarningLocalization{
	WarnExplosion = "Появился одиночный взрывающийся Призрак - уклоняйтесь",
	SpecWarnExplosion = "Взрывающиеся Призраки - уклоняйтесь",
}
L:SetOptionLocalization{
	WarnExplosion = "Показывать предупреждение взрывающихся Призраков ($spell:1214871)",
	SpecWarnExplosion = "Показывать спецпредупреждение при появлении нескольких взрывающихся Призраков ($spell:1214871)",
	TimerExplosion = "Показывать таймер, когда появляется несколько взрывающихся Призраков ($spell:1214871)"
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
	Phase2Emote	= "убегает, как только сила сферы пошла на спад.",
	YellPull 	= "Враги в инкубаторе! Бейте тревогу! Защищайте яйца любой ценой!\r\n"
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
	Pull	= "Таких, как вы, здесь быть не должно! Смерть грозит лишь вам!"
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

----------------
--  Ebonroc and Flamegor  --
----------------
L = DBM:GetModLocalization("EbonrocandFlamegor")

L:SetGeneralLocalization{
	name = "Черноскал и Пламегор"
}

L:SetTimerLocalization{
	TimerBrandCD	= "Клеймо"
}
L:SetOptionLocalization{
	TimerBrandCD	= "Показать таймер для восстановления Клейма"
}

L:SetMiscLocalization{
	Ebonroc		= "Черноскал",
	Flamegor	= "Пламегор"
}

-----------------------
--  BWL Trash  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("BWLTrash")

L:SetGeneralLocalization{
	name = "Трэш мобы Логово Крыла Тьмы"
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
	TimerVulnCD		= "Восстановление уязвимости",
	TimerAllBreaths = "Дыхательный град"
}
L:SetOptionLocalization{
	WarnBreath		= "Показывать предупреждение о дыханиях Хромаггуса",
	WarnVulnerableNew	= "Показывать предупреждение об уязвимости к заклинаниям",
	TimerBreathCD	= "Показывать время восстановления дыханий",
	TimerBreath		= "Показывать применение Дыхания",
	TimerVulnCD		= "Показывать восстановление уязвимости",
	TimerAllBreaths = "Показывать таймер для Дыхательного града"
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
	YellP1		= "Ну что ж, поиграем!",
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

----------------------
--  SoD BWL Trials  --
----------------------
L = DBM:GetModLocalization("SoDBWLTrials")

L:SetGeneralLocalization{
	name = "Сезон открытий Испытания"
}
L:SetWarningLocalization{
	SpecWarnBothBombs		= "Синий и зеленый на >%s<",
	SpecWarnBothBombsYou	= "Синий и зеленый на ТЕБЕ",
}
L:SetTimerLocalization{
	TimerBombs				= DBM_COMMON_L.BOMBS
}
L:SetOptionLocalization{
	SpecWarnBothBombs		= "Показывать спецпредупреждение, если на одном и том же игроке находятся и синяя, и зеленая бомбы.",
	SpecWarnBothBombsYou	= "Показывать спецпредупреждение, если на Вас как синяя, так и зеленая бомбы.",
	TimerBombs				= "Показывать таймер для синих и зеленых бомб (Испытание драконов)"
}

L:SetMiscLocalization{
	-- Does not need translation if "BLUE BOMB" is okay, the "Blue"/"Green" strings are just fallbacks if Core is outdated
	-- Only translate that if you need something like "BOMB BLUE"
	BlueBomb = (DBM_COMMON_L.BLUE or "Blue") .. " " .. DBM_COMMON_L.BOMB,
	GreenBomb = (DBM_COMMON_L.GREEN or "Green") .. " " .. DBM_COMMON_L.BOMB,

	-- Used in options
	BlueTrial = "Испытание синих драконов",
	GreenTrial = "Испытание зеленых драконов",
	GreenAndBlue = "Зеленый и синий на одном игроке",
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
	timerCombatStart	= DBM_CORE_L.AUTO_TIMER_TEXTS.combat
}
L:SetOptionLocalization{
	WarnSubmerge		= "Показывать предупреждение о погружении",
	TimerSubmerge		= "Показывать время до погружения",
	WarnEmerge			= "Показывать предупреждение о появлении",
	TimerEmerge			= "Показывать время до появления",
	timerCombatStart	= DBM_CORE_L.AUTO_TIMER_OPTIONS.combat
}
L:SetMiscLocalization{
	Submerge	= "ПРИДИТЕ, МОИ СЛУГИ! ЗАЩИТИТЕ СВОЕГО ХОЗЯИНА!",
	Pull		= "Нахальные щенки! Вы сами обрекли себя на смерть! Узрите же Повелителя в гневе!"
}

----------------------
--  The Molten Core --
----------------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "Огненные Недра"
}

L:SetOptionLocalization{
	YellHeartCleared	= "Кричать, когда Сердце Пепла/Пепел будет удалено.",
	WarnBossPower		= "Показывать предупреждения, когда энергия босса достигает 50%, 75%, 90% и 100%"
}

L:SetWarningLocalization{
	WarnBossPower		= "Энергия босса на %d%%"
}

-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "Трэш мобы Огненные Недра"
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
	WarnSimulKill	= "Первый адд мертв - воскрешение через ~15 сек."
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

L:SetMiscLocalization{
	Ghosts = "Призраки"
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
	TimerWhelps	= "Дракончики Ониксии"
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
	YellP3 = "Похоже, вам требуется преподать еще один урок, смертные!",
	SoDWarning = "Добро пожаловать в %s. DBM воспроизведет несколько забавных звуков из легендарного классического рейда во время боя. Вы можете отключить это в пользовательском интерфейсе DBM: введите /dbm и перейдите к моду Ониксия в разделе Рейды -> Классический."
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
	WarningEmbraceExpire	= "Объятие Вдовы через 5 сек.",
	WarningEmbraceExpired	= "Объятие Вдовы исчезает"
})

L:SetOptionLocalization({
	WarningEmbraceExpire	= "Предупреждение, когда Объятие Вдовы исчезает",
	WarningEmbraceExpired	= "Предупреждение, когда Объятие Вдовы закончится"
})

L:SetMiscLocalization({
	Pull					= "Склонитесь передо мной, черви!"
})

---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("MaexxnaVanilla")

L:SetGeneralLocalization({
	name = "Мексна"
})

L:SetWarningLocalization({
	WarningSpidersSoon	= "Паученыши Мексны через 5 сек.",
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
	WarningTeleportSoon	= "Телепортация через 20 сек."
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
	Pull				= "Смерть чужакам!",
	AddsYell			= "Восстаньте, мои воины! Восстаньте и сразитесь вновь!",
	Adds				= "призывает скелетов-воинов!",
	AddsTwo				= "поднимает новых скелетов!"
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
	WarningHealSoon	= "Можно исцелять через 3 сек.",
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
	AirowsEnabled			= "Показывать стрелки во время $spell:28089",
	Never					= "Никогда",
	TwoCamp					= "Показывать стрелки (обычная \"2-сторонняя\" стратегия)",
	ArrowsRightLeft			= "Показывать стрелки влево/вправо для \"4-сторонней\" стратегии (показывать стрелку влево, если полярность изменилась; стрелку вправо - если нет)",
	ArrowsInverse			= "Обратная \"4-сторонняя\" стратегия (показывать стрелку вправо, если полярность изменилась; стрелку влево - если нет)"
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
	WarningShieldWallSoon	= "Предупреждать о скором окончании Глухой обороны"
})

L:SetWarningLocalization({
	WarningShieldWallSoon	= "Глухая оборона закончится через 5 сек."
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
	TimerPhase2	= "2-я фаза"
})

L:SetWarningLocalization({
	WarningWaveSoon		= "Волна %d: %s через 3 сек.",
	WarningWaveSpawned	= "Волна %d: %s призван",
	WarningRiderDown	= "Всадник мертв",
	WarningKnightDown	= "Рыцарь мертв",
	WarningPhase2		= "2-я фаза"
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
	timerMark	= "Метка %d",
})

L:SetWarningLocalization({
	WarningMarkSoon				= "Метка %d через 3 сек.",
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
	WarningAirPhaseSoon	= "Воздушная фаза через 10 сек.",
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
	specwarnP2Soon		= "Спецпредупреждение за 10 сек. до вступления Кел'Тузада в бой",
	warnAddsSoon		= "Предупреждать заранее о Стражах Ледяной Короны"
})

L:SetMiscLocalization({
	Yell = "Соратники, слуги, солдаты холодной тьмы! Повинуйтесь зову Кел'Тузада!"
})

L:SetWarningLocalization({
	specwarnP2Soon	= "Кел'Тузад вступает в бой через 10 сек.",
	warnAddsSoon	= "Скоро прибытие Стражей Ледяной Короны"
})

L:SetTimerLocalization({
	TimerPhase2	= "2-я фаза"
})


-----------------
--  Naxx Trash --
-----------------

L = DBM:GetModLocalization("NaxxTrash")

L:SetGeneralLocalization({
	name = "Трэш мобы"
})

--------------------
--  SoD Hardmode  --
--------------------

L = DBM:GetModLocalization("SoD_NaxxHardmode")

L:SetGeneralLocalization({
	name = "Сезон открытий Хардмод"
})

L:SetOptionLocalization({
	AutomateEmote		= "Пытаться автоматически активировать правильную эмоцию для выполнения приказов (возможно, проблема не устранена из-за исправления Blizzard)",
	AffixTimer			= "Показывать таймеры для аффиксов сложного режима",
	WarnEggs			= "Показывать предупреждение для появления яиц (сложный режим «Паучий квартал»)",
	SpecWarnOrders		= "Показывать спецпредупреждение, когда DBM не может автоматизировать выполнение приказов"
})

L.MarchingOrderTranslationComplete = false -- Set this to false until *all* of the Order* below are translated to the actual string used in the game
L:SetMiscLocalization({
	Affixes				= "Аффиксы",
	ConstructAffix		= "Молниевая бомба",
	SpiderAffix			= "Взрывающееся яйцо",
	UnsupportedLocale	= [[Добро пожаловать в усиленный Военный квартал!
Механика сложного режима выбирает случайных игроков и требует от них проявить определенную эмоцию.
Наша поддержка локализации Вашего клиента %s еще не завершена, DBM может пропустить эмоции.
Вы можете помочь! Поделитесь с нами в discord.gg/deadlybossmods точным текстом (скриншотами, видео, логами транскриптора), используемым в механике сложного режима.
]],
	AutomatedEmote		= "DBM попытался автоматизировать эмоцию %s для приказов (это может не сработать из-за блокировки автоматизации Blizzard).",
	AutomatedEmoteGuess	= "DBM попытался автоматизировать эмоцию %s для приказов на основе догадки. Это была правильная эмоция? Дайте нам знать в discord.gg/deadlybossmods",
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
	WarnEggs		= "Появление яиц",
	SpecWarnOrders	= "Выполнение приказа: %s"
})

L:SetTimerLocalization({
	AffixTimer	= "Аффикс"
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
	timerTankCD	= "Показывать таймер перезарядки случайных способностей танка на 4-й фазе"
})

------------------
--  Sunken Temple  --
------------------

--------------
-- ST Trash --
--------------
L = DBM:GetModLocalization("STTrashSoD")

L:SetGeneralLocalization{
	name = "Трэш мобы Затонувший храм"
}

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

L:SetOptionLocalization({
	SetIconsOnGhosts = "Установить иконки на боссов-призраков"
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
	OtherPlayer = "другой игрок", -- Use with AUTO_SPEC_WARN_TEXTS.moveto ("$spell - move to >%%s<")
	Tick = "Tick"
}

L = DBM:GetModLocalization("Solistrasza")

L = DBM:GetModLocalization("Beatrix")

L:SetMiscLocalization{
	YellFroggers1 = "break their ranks",
	YellFroggers2 = "Ready your lances",
	CannonMistress = "Cannon Mistress Lind", -- TODO: can we automatically get the localized name?
	YellPhase2 = "We stand united! Let our enemies tremble before our might!",
	Footmen = "Footmen",
	Horses = "Horses"
}

L = DBM:GetModLocalization("RebornCouncil")

L = DBM:GetModLocalization("Caldoran")

L = DBM:GetModLocalization("LillianVoss")

L = DBM:GetModLocalization("Beastmaster")

L:SetOptionLocalization({
	TimerMark = "Показывать таймер для следующих меток Озарение/Воспламенение (со счётчиком)",
	WarnMark = "Показывать предупреждение для меток Озарение/Воспламенение (с количеством)"
})

L:SetTimerLocalization({
	TimerMark	= "Метка %d",
})

L:SetWarningLocalization({
	WarnMark = "Метка %d"
})

L = DBM:GetModLocalization("Mason")

L:SetMiscLocalization{
	Cannons1 = "Fire!",
	Cannons2 = "Fire at will!"
}

L = DBM:GetModLocalization("SE_Trash")
L:SetGeneralLocalization{
	name = "Трэш мобы Анклав Алого Ордена"
}

L:SetOptionLocalization{
	FlightTimer = "Показывать таймеры для полетов Грифонов",
}

L:SetMiscLocalization{
	CentralTower = "Центральная башня",
	Prison = "Тюрьма",
	Cathedral = "Собор"
}
