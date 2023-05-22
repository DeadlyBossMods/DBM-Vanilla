if GetLocale() ~= "zhCN" then return end
local L

------------
-- Skeram --
------------
L = DBM:GetModLocalization("Skeram")

L:SetGeneralLocalization{
	name = "预言者斯克拉姆"
}

----------------
-- Three Bugs --
----------------
L = DBM:GetModLocalization("ThreeBugs")

L:SetGeneralLocalization{
	name = "异种蝎皇族"
}
L:SetMiscLocalization{
	Yauj = "亚尔基公主",
	Vem = "维姆",
	Kri = "克里勋爵"
}

-------------
-- Sartura --
-------------
L = DBM:GetModLocalization("Sartura")

L:SetGeneralLocalization{
	name = "沙尔图拉"
}

--------------
-- Fankriss --
--------------
L = DBM:GetModLocalization("Fankriss")

L:SetGeneralLocalization{
	name = "顽强的范克瑞斯"
}

--------------
-- Viscidus --
--------------
L = DBM:GetModLocalization("Viscidus")

L:SetGeneralLocalization{
	name = "维希度斯"
}
L:SetWarningLocalization{
	WarnFreeze	= "冰冻:%d/3",
	WarnShatter	= "打碎:%d/3"
}
L:SetOptionLocalization{
	WarnFreeze	= "提示冰冻状态",
	WarnShatter	= "提示打碎状态"
}
L:SetMiscLocalization{
	Slow	= "开始减速!",
	Freezing= "冻住了",
	Frozen	= "变成冰冻的固体!",
	Phase4 	= "开始爆裂!",
	Phase5 	= "看來准备好毁灭了!",
	Phase6 	= "爆炸."
}
-------------
-- Huhuran --
-------------
L = DBM:GetModLocalization("Huhuran")

L:SetGeneralLocalization{
	name = "哈霍兰公主"
}
---------------
-- Twin Emps --
---------------
L = DBM:GetModLocalization("TwinEmpsAQ")

L:SetGeneralLocalization{
	name = "双子皇帝"
}
L:SetMiscLocalization{
	Veklor = "维克洛尔大帝",
	Veknil = "维克尼拉斯大帝"
}

------------
-- C'Thun --
------------
L = DBM:GetModLocalization("CThun")

L:SetGeneralLocalization{
	name = "克苏恩"
}
L:SetWarningLocalization{
	WarnEyeTentacle			= "眼球触须",
	WarnClawTentacle2		= "利爪触须",
	WarnGiantEyeTentacle	= "巨眼触须",
	WarnGiantClawTentacle	= "巨钩触须",
	SpecWarnWeakened		= "克苏恩的力量被削弱了！"
}
L:SetTimerLocalization{
	TimerEyeTentacle		= "下一次眼球触须",
	TimerClawTentacle		= "下一次利爪触须",
	TimerGiantEyeTentacle	= "下一次巨眼触须",
	TimerGiantClawTentacle	= "下一次巨钩触须",
	TimerWeakened			= "虚弱结束"
}
L:SetOptionLocalization{
	WarnEyeTentacle			= "为眼球触须显示警告",
	WarnClawTentacle2		= "为利爪触须显示警告",
	WarnGiantEyeTentacle	= "为巨眼触须显示警告",
	WarnGiantClawTentacle	= "为巨钩触须显示警告",
	WarnWeakened			= "当首领虚弱時显示警告",
	SpecWarnWeakened		= "当首领虚弱時显示特別警告",
	TimerEyeTentacle		= "为下一次眼球触须显示计时器",
	TimerClawTentacle		= "为下一次利爪触须显示计时器",
	TimerGiantEyeTentacle	= "为下一次巨眼触须显示计时器",
	TimerGiantClawTentacle	= "为下一次巨钩触须显示计时器",
	TimerWeakened			= "为首领虚弱時间显示计时器",
	RangeFrame				= "显示距离框架(10码)"
}
L:SetMiscLocalization{
	Stomach		= "克苏恩的胃",
	Eye			= "克苏恩之眼",
	FleshTent	= "血肉触须",--Localized so it shows on frame in users language, not senders
	Weakened 	= "削弱了",
    NotValid	= "AQ40 击杀信息： %s 首领未击杀。"
}
----------------
-- Ouro --
----------------
L = DBM:GetModLocalization("Ouro")

L:SetGeneralLocalization{
	name = "奥罗"
}
L:SetWarningLocalization{
	WarnSubmerge		= "钻地",
	WarnEmerge			= "现身"
}
L:SetTimerLocalization{
	TimerSubmerge		= "钻地",
	TimerEmerge			= "现身"
}
L:SetOptionLocalization{
	WarnSubmerge		= "为钻地显示警告",
	TimerSubmerge		= "为钻地显示计时器",
	WarnEmerge			= "为现身显示警告",
	TimerEmerge			= "为现身显示计时器"
}

---------------
-- Kurinnaxx --
---------------
L = DBM:GetModLocalization("Kurinnaxx")

L:SetGeneralLocalization{
	name 		= "库林纳克斯"
}

------------
-- Rajaxx --
------------
L = DBM:GetModLocalization("Rajaxx")

L:SetGeneralLocalization{
	name 		= "拉贾克斯将军"
}
L:SetWarningLocalization{
	WarnWave	= "进攻次数%s",
}
L:SetOptionLocalization{
	WarnWave	= "为下一次进攻显示提示"
}
L:SetMiscLocalization{
	Wave12		= "它们来了。尽量别被它们干掉，新兵。",
	Wave3		= "我们惩罚的时刻就在眼前!让黑暗支配敌人的内心吧!",
	Wave4		= "我们不需在被禁堵的门与石墙后等待了!我们的复仇将不再被否认!巨龙将在我们的愤怒之前颤抖!",
	Wave5		= "恐惧是给敌人的!恐惧与死亡!",
	Wave6		= "鹿盔将为了活命而啜泣、乞求，就像他的儿子一样!一千年的不公将在今日结束!",
	Wave7		= "范达尔!你的时候到了!躲进翡翠梦境祈祷我们永远不会找到你吧!",
	Wave8		= "厚颜无耻的笨蛋!我要亲手杀了你!"
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
	name 		= "『暴食者』布鲁"
}
L:SetWarningLocalization{
	WarnPursue		= ">%s<被追击了",
	SpecWarnPursue	= "你被追击了",
	WarnDismember	= ">%2$s<中了%1$s(%s)"
}
L:SetOptionLocalization{
	WarnPursue		= "提示被追击的目标",
	SpecWarnPursue	= "当你被追击的时候显示特別警告"
}
L:SetMiscLocalization{
	PursueEmote 	= "%s凝视着%s!"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "『狩猎者』阿亚米斯"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "『无疤者』奥斯里安"
}
L:SetWarningLocalization{
	WarnVulnerable	= "%s"
}
L:SetTimerLocalization{
	TimerVulnerable	= "%s"
}
L:SetOptionLocalization{
	WarnVulnerable	= "提示虛弱",
	TimerVulnerable	= "为虛弱显示计时器"
}

----------------
-- AQ20 Trash --
----------------
L = DBM:GetModLocalization("AQ20Trash")

L:SetGeneralLocalization{
	name = "AQ20：全程计时"
}

-----------------
--  Razorgore  --
-----------------
L = DBM:GetModLocalization("Razorgore")

L:SetGeneralLocalization{
	name = "狂野的拉佐格尔"
}
L:SetTimerLocalization{
	TimerAddsSpawn	= "小怪重生"
}
L:SetOptionLocalization{
	TimerAddsSpawn	= "为第一次小怪重生显示计时器"
}
L:SetMiscLocalization{
	Phase2Emote	= "失去能量，停止运作!",
	YellEgg1	= "你要为强迫我这么做而付出代价！",
	YellEgg2	= "蠢货！这些蛋比你认为的要珍贵的多！", -- needs localized resource
	YellEgg3	= "不！住手！我要你的头颅来弥补你的罪行！",
	YellPull 	= "入侵者闯入孵化室了!警报!不惜一切代价保护蛋!"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name	= "堕落的瓦拉斯塔茲"
}

L:SetMiscLocalization{
	Event	= "太迟了，朋友! 奈法利斯的腐化已经掌握了我...我已经无法...控制我自己了。"
}
-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "勒什雷尔"
}

L:SetMiscLocalization{
	Pull	= "你怎么进来的?你们这种生物不能进来!我要毁灭你们!"
}

---------------
--  Firemaw  --
---------------
L = DBM:GetModLocalization("Firemaw")

L:SetGeneralLocalization{
	name = "费尔默"
}

---------------
--  Ebonroc  --
---------------
L = DBM:GetModLocalization("Ebonroc")

L:SetGeneralLocalization{
	name = "埃博诺克"
}

----------------
--  Flamegor  --
----------------
L = DBM:GetModLocalization("Flamegor")

L:SetGeneralLocalization{
	name = "弗莱格尔"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "克洛玛古斯"
}
L:SetWarningLocalization{
	WarnBreath		= "%s"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s冷却"
}
L:SetOptionLocalization{
	WarnBreath		= "为克洛玛古斯其中一格吐息显示警告",
	TimerBreathCD	= "显示吐息冷却"
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
	WarnClassCall		= "%s呼喊",
	WarnPhase			= "第%s阶段"
}
L:SetTimerLocalization{
	TimerClassCall		= "%s呼喊"
}
L:SetOptionLocalization{
	TimerClassCall		= "为职业呼喊持续时间显示计时器",
	WarnClassCall		= "提示职业呼喊",
	WarnPhase			= "提示转换阶段"
}
L:SetMiscLocalization{
	YellP2		= "干得好，我的手下。凡人的勇气开始消退!现在，现在让我们看看他们如何应对黑石之王的力量!!!",
	YellP3		= "不可能!出现吧，我的仆人!再次为我的主人服务!",
	YellShaman	= "萨满，让我看看",
	YellPaladin	= "圣骑士...听说你有无数条命。让我看看到底是怎么样的吧。",
	YellDruid	= "德鲁伊和你们愚蠢的变身术。让我们看看什么会发生吧!",
	YellPriest	= "牧师!如果你要继续像那样治疗，我们还不如让它看起来更有趣!",
	YellWarrior	= "战士，我知道你的力量不只如此!让我们来见识一下吧!",
	YellRogue	= "潜行者?不要躲了，面对我吧!",
	YellWarlock	= "术士，不要随便去玩那些你不理解的法术。看看会发生什么吧?",
	YellHunter	= "猎人和你那讨厌的豌豆射击!",
	YellMage	= "还有法师?你应该小心使用你的魔法...",
	YellDK		= "死亡骑士士们...来这。",
	YellMonk	= "武僧???...又是什么???"
}

----------------
--  Lucifron  --
----------------
L = DBM:GetModLocalization("Lucifron")

L:SetGeneralLocalization{
	name = "鲁西弗隆"
}

----------------
--  Magmadar  --
----------------
L = DBM:GetModLocalization("Magmadar")

L:SetGeneralLocalization{
	name = "玛格曼达"
}

----------------
--  Gehennas  --
----------------
L = DBM:GetModLocalization("Gehennas")

L:SetGeneralLocalization{
	name = "基赫纳斯"
}

------------
--  Garr  --
------------
L = DBM:GetModLocalization("Garr-Classic")

L:SetGeneralLocalization{
	name = "加尔"
}

--------------
--  Geddon  --
--------------
L = DBM:GetModLocalization("Geddon")

L:SetGeneralLocalization{
	name = "迦顿男爵"
}

----------------
--  Shazzrah  --
----------------
L = DBM:GetModLocalization("Shazzrah")

L:SetGeneralLocalization{
	name = "沙斯拉尔"
}

----------------
--  Sulfuron  --
----------------
L = DBM:GetModLocalization("Sulfuron")

L:SetGeneralLocalization{
	name = "萨弗隆先驱者"
}

----------------
--  Golemagg  --
----------------
L = DBM:GetModLocalization("Golemagg")

L:SetGeneralLocalization{
	name = "焚化者古雷曼格"
}

-----------------
--  Majordomo  --
-----------------
L = DBM:GetModLocalization("Majordomo")

L:SetGeneralLocalization{
	name = "管理者埃克索图斯"
}

----------------
--  Ragnaros  --
----------------
L = DBM:GetModLocalization("Ragnaros-Classic")

L:SetGeneralLocalization{
	name = "拉格纳罗斯"
}
L:SetWarningLocalization{
	WarnSubmerge		= "隐没",
	WarnEmerge			= "现身"
}
L:SetTimerLocalization{
	TimerSubmerge		= "隐没",
	TimerEmerge			= "现身"
}
L:SetOptionLocalization{
	WarnSubmerge		= "为隐没显示警告",
	TimerSubmerge		= "为隐没显示计时器",
	WarnEmerge			= "为现身显示警告",
	TimerEmerge			= "为现身显示计时器"
}
L:SetMiscLocalization{
	Submerge	= "出现吧，我的奴仆! 保卫你们的主人!",
	Pull		= "你这个莽撞的家伙!你简直是自寻死路!看吧，你惊动了主人!"
}
