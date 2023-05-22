if GetLocale() ~= "zhTW" then return end
local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "預言者斯克拉姆"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "異種蠍皇族"
}
L:SetMiscLocalization{
	Yauj = "亞爾基公主",
	Vem = "維姆",
	Kri = "克里領主"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "戰地衛士沙爾圖拉"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "不屈的范克里斯"
}

--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "維希度斯"
}
L:SetWarningLocalization{
	WarnFreeze	= "冰凍:%d/3",
	WarnShatter	= "打碎:%d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "提示冰凍狀態",
	WarnShatter	= "提示打碎狀態"
}
L:SetMiscLocalization{
	Slow	= "開始減速!",
	Freezing= "凍住了",
	Frozen	= "變成冰凍的固體!",
	Phase4 	= "開始爆裂!",
	Phase5 	= "看來準備好毀滅了!",
	Phase6 	= "Explodes."
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "哈霍蘭公主"
}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "雙子帝王"
}
L:SetMiscLocalization{
	Veklor = "維克洛爾大帝",
	Veknil = "維克尼拉斯大帝"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "克蘇恩"
}
L:SetWarningLocalization{
	WarnEyeTentacle			= "眼球觸鬚",
	WarnClawTentacle2		= "利爪觸鬚",
	WarnGiantEyeTentacle	= "巨型眼球觸鬚",
	WarnGiantClawTentacle	= "巨型利爪觸鬚",
	WarnWeakened			= "克蘇恩變得虛弱了"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "下一次眼球觸鬚",
	TimerClawTentacle		= "下一次利爪觸鬚",
	TimerGiantEyeTentacle	= "下一次巨型眼球觸鬚",
	TimerGiantClawTentacle	= "下一次巨型利爪觸鬚",
	TimerWeakened			= "虛弱結束"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "為眼球觸鬚顯示警告",
	WarnClawTentacle2		= "為利爪觸鬚顯示警告",
	WarnGiantEyeTentacle	= "為巨型眼球觸鬚顯示警告",
	WarnGiantClawTentacle	= "為巨型利爪觸鬚顯示警告",
	SpecWarnWeakened		= "當首領虛弱時顯示特別警告",
	TimerEyeTentacle		= "為下一次眼球觸鬚顯示計時器",
	TimerClawTentacle		= "為下一次利爪觸鬚顯示計時器",
	TimerGiantEyeTentacle	= "為下一次巨型眼球觸鬚顯示計時器",
	TimerGiantClawTentacle	= "為下一次巨型利爪觸鬚顯示計時器",
	TimerWeakened			= "為首領虛弱時間顯示計時器",
	RangeFrame				= "顯示距離框架(10碼)"
}
L:SetMiscLocalization{
	Stomach		= "克蘇恩的胃",
	Eye			= "克蘇恩之眼",
	FleshTent	= "血肉觸鬚",--Localized so it shows on frame in users language, not senders
	Weakened 	= "變弱了",
	NotValid	= "AQ40 擊殺信息： %s 首領未擊殺。"
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "奧羅"
}
L:SetWarningLocalization{
	WarnSubmerge		= "鑽地",
	WarnEmerge			= "現身"
}
L:SetTimerLocalization{
	TimerSubmerge		= "鑽地",
	TimerEmerge			= "現身"
}
L:SetOptionLocalization{
	WarnSubmerge		= "為鑽地顯示警告",
	TimerSubmerge		= "為鑽地顯示計時器",
	WarnEmerge			= "為現身顯示警告",
	TimerEmerge			= "為現身顯示計時器"
}

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "庫林納克斯"
}

------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "拉賈克斯將軍"
}
L:SetWarningLocalization{
	WarnWave	= "進攻波數%s",
}
L:SetOptionLocalization{
	WarnWave	= "為下一次波進攻顯示提示"
}
L:SetMiscLocalization{
	Wave12		= "它們來了。盡量別被它們幹掉，新兵。",
	Wave3		= "我們懲罰的時刻就在眼前!讓黑暗支配敵人的內心吧!",
	Wave4		= "我們不需在被禁堵的門與石牆後等待了!我們的復仇將不再被否認!巨龍將在我們的憤怒之前顫抖!",
	Wave5		= "恐懼是給敵人的!恐懼與死亡!",
	Wave6		= "鹿盔將為了活命而啜泣、乞求，就像他的兒子一樣!一千年的不公將在今日結束!",
	Wave7		= "范達爾!你的時候到了!躲進翡翠夢境祈禱我們永遠不會找到你吧!",
	Wave8		= "厚顏無恥的笨蛋!我要親手殺了你!"
}

----------
-- Moam --
----------
L = DBM:GetModLocalization("Moam")

L:SetGeneralLocalization{
	name 		= "莫阿姆"
}

----------
-- Buru --
----------
L = DBM:GetModLocalization("Buru")

L:SetGeneralLocalization{
	name 		= "『暴食者』布魯"
}
L:SetWarningLocalization{
	WarnPursue		= ">%s<被追擊了",
	SpecWarnPursue	= "你被追擊了",
	WarnDismember	= ">%2$s<中了%1$s(%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "提示被追擊的目標",
	SpecWarnPursue	= "當你被追擊的時候顯示特別警告"
}
L:SetMiscLocalization{
	PursueEmote 	= "%s凝視著%s!"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "『狩獵者』阿亞米斯"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "『無疤者』奧斯里安"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "提示虛弱",
	TimerVulnerable	= "為虛弱顯示計時器"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "AQ20：全程計時"
}

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "狂野的拉佐格爾"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "小怪重生"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "為第一次小怪重生顯示計時器"
}
L:SetMiscLocalization{
	Phase2Emote	= "在寶珠的控制力消失之前逃走。",
	YellPull 	= "入侵者闖入孵化室了!警報!不惜一切代價保護蛋!"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name	= "墮落的瓦拉斯塔茲"
}

L:SetMiscLocalization{
	Event	= "太遲了，朋友! 奈法利斯的腐化已經掌握了我...我已經無法...控制我自己了。"
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "幼龍領主勒西雷爾"
}

L:SetMiscLocalization{
	Pull	= "你怎麼進來的?你們這種生物不能進來!我要毀滅你們!"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "費爾默"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "埃博諾克"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "弗萊格爾"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "克洛瑪古斯"
}
L:SetWarningLocalization{
	WarnBreath		= "%s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s冷卻"
}
L:SetOptionLocalization{
	WarnBreath		= "為克洛瑪古斯其中一個吐息顯示警告",
	TimerBreathCD	= "顯示吐息冷卻"
}
L:SetMiscLocalization{
	Breath1	= "第一次吐息",
	Breath2	= "第二次吐息"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "奈法利安"
}
L:SetWarningLocalization{
	WarnClassCall		= "%s呼喊"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s呼喊結束"
}
L:SetOptionLocalization{
	TimerClassCall		= "為職業呼喊持續時間顯示計時器",
	WarnClassCall		= "提示職業呼喊"
}
L:SetMiscLocalization{
	YellP2		= "幹得好，我的手下。凡人的勇氣開始消退!現在，現在讓我們看看他們如何應對黑石之王的力量!!!",
	YellP3		= "不可能!出現吧，我的僕人!再次為我的主人服務!",
	YellShaman	= "薩滿，讓我看看",
	YellPaladin	= "聖騎士...聽說你有無數條命。讓我看看到底是怎麼樣的吧。",
	YellDruid	= "德魯伊和你們愚蠢的變身術。讓我們看看什麼會發生吧!",
	YellPriest	= "牧師!如果你要繼續這麼治療的話，那我們來玩點有趣的東西!",
	YellWarrior	= "戰士，我知道你的力量不只如此!讓我們來見識一下吧!",
	YellRogue	= "盜賊?不要躲了，面對我吧!",
	YellWarlock	= "術士，不要隨便去玩那些你不理解的法術。看看會發生什麼吧?",
	YellHunter	= "獵人和你那討厭的豌豆射擊!",
	YellMage	= "還有法師?你應該小心使用你的魔法...",
	YellDK		= "死亡騎士們...來這。",
	YellMonk	= "武僧"
}

----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization{
	name = "魯西弗隆"
}

----------------
--  Magmadar  --
----------------
L = DBM:GetModLocalization("Magmadar")

L:SetGeneralLocalization{
	name = "瑪格曼達"
}

----------------
--  Gehennas  --
----------------
L = DBM:GetModLocalization("Gehennas")

L:SetGeneralLocalization{
	name = "基赫納斯"
}

------------
--  Garr  --
------------
L = DBM:GetModLocalization("Garr-Classic")

L:SetGeneralLocalization{
	name = "加爾"
}

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization{
	name = "迦頓男爵"
}

----------------
--  Shazzrah  --
----------------
L = DBM:GetModLocalization("Shazzrah")

L:SetGeneralLocalization{
	name = "沙斯拉爾"
}

----------------
--  Sulfuron  --
----------------
L = DBM:GetModLocalization("Sulfuron")

L:SetGeneralLocalization{
	name = "薩弗隆先驅者"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "『焚化者』古雷曼格"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "管理者埃克索圖斯"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "拉格納羅斯"
}
L:SetWarningLocalization{
	WarnSubmerge		= "隱沒",
	WarnEmerge			= "現身"
}
L:SetTimerLocalization{
	TimerSubmerge		= "隱沒",
	TimerEmerge			= "現身"
}
L:SetOptionLocalization{
	WarnSubmerge		= "為隱沒顯示警告",
	TimerSubmerge		= "為隱沒顯示計時器",
	WarnEmerge			= "為現身顯示警告",
	TimerEmerge			= "為現身顯示計時器"
}
L:SetMiscLocalization{
	Submerge	= "出現吧，我的奴僕! 保衛你們的主人!",
	Pull		= "你這個莽撞的傢伙!你簡直是自尋死路!看吧，你驚動了主人!"
}
