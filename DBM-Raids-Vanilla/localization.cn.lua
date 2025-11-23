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
	name = "安其拉三宝"
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
	Slow		= "的速度慢下来了！",
	Freezing	= "冻结了！",
	Frozen		= "变成了坚硬的固体！",
	Phase4 		= "开始出现裂缝！",
	Phase5 		= "看起来就要碎裂了！",
	Phase6 		= "爆炸。",

	FrostHitsPerSecond = "冰霜每秒命中次数",
	MeleeHitsPerSecond = "近战每秒命中次数"
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
	TimerEyeTentacle		= "眼球触须",
	TimerClawTentacle		= "利爪触须",
	TimerGiantEyeTentacle	= "巨眼触须",
	TimerGiantClawTentacle	= "巨钩触须",
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
----------------
-- AQ40 Trash --
----------------
L = DBM:GetModLocalization("AQ40Trash")

L:SetGeneralLocalization{
	name = "小怪"
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
	Wave12Alt 	= "拉贾克斯，还记得我说过要杀光其它虫子之后再干掉你么？",
	Wave3		= "我们复仇的时刻到了！让敌人的内心被黑暗吞噬吧！",
	Wave4		= "我们不用再呆在这座石墙里面了！我们很快就能报仇了！在我们的怒火面前，就连那些龙也会战栗！",
	Wave5		= "让敌人胆战心惊吧！让他们在恐惧中死去！",
	Wave6		= "鹿盔将会呜咽着哀求我饶他一命，就像他那懦弱的儿子一样！一千年来的屈辱会在今天洗清！",
	Wave7		= "范达尔！你的死期到了！藏到翡翠梦境里去吧，祈祷我们永远都找不到你！",
	Wave8		= "无礼的蠢货！我会亲自要了你们的命！"
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
	name 		= "吞咽者布鲁"
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
	PursueEmote 	= "凝视着"
}

-------------
-- Ayamiss --
-------------
L = DBM:GetModLocalization("Ayamiss")

L:SetGeneralLocalization{
	name 		= "狩猎者阿亚米斯"
}

--------------
-- Ossirian --
--------------
L = DBM:GetModLocalization("Ossirian")

L:SetGeneralLocalization{
	name 		= "无疤者奥斯里安"
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
	name = "小怪"
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
	Phase2Emote	= "在宝珠的控制力消失的瞬间，奈法利安的部队逃走了。",
	YellPull 	= "入侵者闯进了孵化间！我们要不惜一切代价保护龙蛋！"
}
-------------------
--  Vaelastrasz  --
-------------------
L = DBM:GetModLocalization("Vaelastrasz")

L:SetGeneralLocalization{
	name	= "堕落的瓦拉斯塔兹"
}

L:SetMiscLocalization{
	Event	= "太晚了，朋友们！奈法利安的堕落力量已经生效……我无法……控制自己。"
}

-----------------
--  Broodlord  --
-----------------
L = DBM:GetModLocalization("Broodlord")

L:SetGeneralLocalization{
	name	= "勒什雷尔"
}

L:SetMiscLocalization{
	Pull	= "你怎么进来的？你们这种生物不能进来！我要毁灭你们！"
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

-----------------------
--  Vulnerabilities  --
-----------------------
-- Chromaggus, Death Talon Overseer and Death Talon Wyrmguard
L = DBM:GetModLocalization("BWLTrash")

L:SetGeneralLocalization{
	name = "龙人护卫"
}
L:SetWarningLocalization{
	WarnVulnerable		= "%s易伤"
}
L:SetOptionLocalization{
	WarnVulnerable		= "为法术易伤显示提示"
}
L:SetMiscLocalization{
	Fire		= "火焰",
	Nature		= "自然",
	Frost		= "冰霜",
	Shadow		= "暗影",
	Arcane		= "奥术",
	Holy		= "神圣"
}

------------------
--  Chromaggus  --
------------------
L = DBM:GetModLocalization("Chromaggus")

L:SetGeneralLocalization{
	name = "克洛玛古斯"
}
L:SetWarningLocalization{
	WarnBreath		= "%s",
	WarnVulnerable	= "%s易伤"
}
L:SetTimerLocalization{
	TimerBreathCD	= "%s冷却",
	TimerBreath		= "%s施法",
	TimerVulnCD		= "易伤切换"
}
L:SetOptionLocalization{
	WarnBreath			= "为克洛玛古斯其中一个吐息显示警告",
	WarnVulnerableNew	= "为易伤显示警告",
	TimerBreathCD		= "显示吐息冷却",
	TimerBreath			= "显示吐息施法",
	TimerVulnCD			= "显示易伤周期"
}
L:SetMiscLocalization{
	Breath1		= "第一次吐息",
	Breath2		= "第二次吐息",
	VulnEmote	= "%s的皮肤闪着微光，它畏缩了。",
	Fire		= "火焰",
	Nature		= "自然",
	Frost		= "冰霜",
	Shadow		= "暗影",
	Arcane		= "奥术",
	Holy		= "神圣"
}

----------------
--  Nefarian  --
----------------
L = DBM:GetModLocalization("Nefarian-Classic")

L:SetGeneralLocalization{
	name = "奈法利安"
}
L:SetWarningLocalization{
	WarnAddsLeft		= "还剩%d个小怪",
	WarnClassCall		= "点名%s",
	specwarnClassCall	= "你的职业被点名！"
}
L:SetTimerLocalization{
	TimerClassCall		= "点名%s结束"
}
L:SetOptionLocalization{
	TimerClassCall		= "为点名持续时间显示计时器",
	WarnAddsLeft		= "通报杀死的龙兽数量，直到进入第二阶段",
	WarnClassCall		= "提示职业点名",
	specwarnClassCall	= "警报：当你的职业被点名时显示警报。",
	WarnPhase			= "提示阶段转换"
}
L:SetMiscLocalization{
	YellP1 		= "比赛开始！",
	YellP2		= "干得好，我的手下。凡人的勇气开始消退了！现在，让我们看看他们如何应对黑石塔的真正主人的力量！！！",
	YellP3		= "不可能！出现吧，我的仆人！再次为你们的主人效力！",
	YellShaman	= "萨满祭司，让我看看你们的图腾到底是干什么用的！",
	YellPaladin	= "圣骑士……听说你们有无数条命。让我看看到底是怎么样的吧。",
	YellDruid	= "德鲁伊和你们愚蠢的变形法术。让我们看看有什么事情会发生吧！",
	YellPriest	= "牧师们！如果你们要继续这么治疗的话，那我们就来玩点有趣的东西吧！",
	YellWarrior	= "战士们，我知道你们应该更凶猛一些！让我们来见识一下吧！",
	YellRogue	= "潜行者？不要躲躲藏藏了，勇敢地面对我吧！",
	YellWarlock	= "术士们，不要随便去尝试那些你们根本不理解的法术。看到后果了吧？",
	YellHunter	= "猎人们，还有你们那些讨厌的玩具枪！",
	YellMage	= "你们也是法师？小心别玩火自焚……",
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
	Submerge	= "出现吧，我的奴仆！ 保卫你们的主人！",
	Pull		= "你这个莽撞的家伙！你简直是自寻死路！看吧，你惊动了主人！"
}

-----------------
--  The Molten Core (Placeholder?_  --
-----------------
L = DBM:GetModLocalization("MoltenCore")

L:SetGeneralLocalization{
	name = "熔火之心"
}

-----------------
--  MC: Trash  --
-----------------
L = DBM:GetModLocalization("MCTrash")

L:SetGeneralLocalization{
	name = "小怪"

}
-------------------
--  Venoxis  --
-------------------
L = DBM:GetModLocalization("Venoxis")

L:SetGeneralLocalization{
	name = "高阶祭司温诺希斯"
}
L:SetOptionLocalization{
	RangeFrame		= "显示范围框"
}

-------------------
--  Jeklik  --
-------------------
L = DBM:GetModLocalization("Jeklik")

L:SetGeneralLocalization{
	name = "高阶祭司耶克里克"
}

-------------------
--  Marli  --
-------------------
L = DBM:GetModLocalization("Marli")

L:SetGeneralLocalization{
	name = "高阶祭司玛尔里"
}

-------------------
--  Thekal  --
-------------------
L = DBM:GetModLocalization("Thekal")

L:SetGeneralLocalization{
	name = "高阶祭司塞卡尔"
}

L:SetWarningLocalization({
	WarnSimulKill	= "大约15秒内复活"
})

L:SetTimerLocalization({
	TimerSimulKill	= "复活术"
})

L:SetOptionLocalization({
	WarnSimulKill	= "通告第一个怪物倒下,马上将复活",
	TimerSimulKill	= "显示牧师复活计时器"
})

L:SetMiscLocalization({
	PriestDied	= "%s死了。",
	YellPhase2	= "西瓦尔拉，让我感受你的愤怒吧！",
	YellKill	= "哈卡再也不能束缚我了！我终于可以安息了！"
})

-------------------
--  Arlokk  --
-------------------
L = DBM:GetModLocalization("Arlokk")

L:SetGeneralLocalization{
	name = "高阶祭司娅尔罗"
}

-------------------
--  Hakkar  --
-------------------
L = DBM:GetModLocalization("Hakkar")

L:SetGeneralLocalization{
	name = "哈卡"
}

-------------------
--  Bloodlord  --
-------------------
L = DBM:GetModLocalization("Bloodlord")

L:SetGeneralLocalization{
	name = "血领主曼多基尔"
}
L:SetMiscLocalization{
	GazeYell	= "我正在看着你"
}

-------------------
--  Edge of Madness  --
-------------------
L = DBM:GetModLocalization("EdgeOfMadness")

L:SetGeneralLocalization{
	name = "疯狂之缘"
}

-------------------
--  Gahz'ranka  --
-------------------
L = DBM:GetModLocalization("Gahzranka")

L:SetGeneralLocalization{
	name = "加兹兰卡"
}

-------------------
--  Jindo  --
-------------------
L = DBM:GetModLocalization("Jindo")

L:SetGeneralLocalization{
	name = "妖术师金度"
}

--------------
--  Onyxia  --
--------------
L = DBM:GetModLocalization("OnyxiaVanilla")

L:SetGeneralLocalization{
	name 			= "奥妮克希亚"
}

L:SetWarningLocalization{
	WarnWhelpsSoon		= "奥妮克希亚雏龙 即将出现"
}

L:SetTimerLocalization{
	TimerWhelps 		= "奥妮克希亚雏龙"
}

L:SetOptionLocalization{
	TimerWhelps			= "为奥妮克希亚雏龙显示计时条",
	WarnWhelpsSoon		= "为奥妮克希亚雏龙显示预警",
	SoundWTF3			= "为经典传奇式奥妮克希亚副本播放一些有趣的音效"
}

L:SetMiscLocalization{
	Breath 			= "%s深深地吸了一口气",
	YellPull 		= "真是走运。通常我必须离开窝才能找到食物。",
	YellP2 			= "这毫无意义的行动让我很厌烦。我会从上空把你们都烧成灰！",
	YellP3 			= "看起来需要再给你一次教训，凡人！"
}

-------------------
--  Anub'Rekhan  --
-------------------
L = DBM:GetModLocalization("AnubRekhanVanilla")

L:SetGeneralLocalization({
	name 				= "阿努布雷坎"
})

L:SetMiscLocalization({
	Pull1					= "对，跑吧！那样伤口出血就更多了！",
	Pull2					= "一些小点心……",
	Pull3					= "你们逃不掉的。"
})

----------------------------
--  Grand Widow Faerlina  --
----------------------------
L = DBM:GetModLocalization("FaerlinaVanilla")

L:SetGeneralLocalization({
	name 				= "黑女巫法琳娜"
})

L:SetWarningLocalization({
	WarningEmbraceExpire		= "黑女巫的拥抱5秒后结束",
	WarningEmbraceExpired		= "黑女巫的拥抱结束"
})

L:SetOptionLocalization({
	WarningEmbraceExpire		= "为黑女巫的拥抱结束显示提前警报",
	WarningEmbraceExpired		= "为黑女巫的拥抱结束显示警报"
})

L:SetMiscLocalization({
	Pull1					= "跪下求饶吧，懦夫！",
	Pull2					= "休想从我面前逃掉！",
	Pull3					= "以主人之名，杀了他们！",
	Pull4					= "逃啊！有本事就逃啊！"
})
---------------
--  Maexxna  --
---------------
L = DBM:GetModLocalization("MaexxnaVanilla")

L:SetGeneralLocalization({
	name 					= "迈克斯纳"
})

L:SetWarningLocalization({
	WarningSpidersSoon		= "迈克斯纳之子 5秒后出现",
	WarningSpidersNow		= "迈克斯纳之子出现了"
})

L:SetTimerLocalization({
	TimerSpider				= "下一次迈克斯纳之子"
})

L:SetOptionLocalization({
	WarningSpidersSoon		= "为迈克斯纳之子显示提前警报",
	WarningSpidersNow		= "为迈克斯纳之子显示警报",
	TimerSpider				= "为下一次迈克斯纳之子显示计时条"
})

------------------------------
--  Noth the Plaguebringer  --
------------------------------
L = DBM:GetModLocalization("NothVanilla")

L:SetGeneralLocalization({
	name 					= "瘟疫使者诺斯"
})

L:SetWarningLocalization({
	WarningTeleportNow		= "传送",
	WarningTeleportSoon		= "20秒后传送"
})

L:SetTimerLocalization({
	TimerTeleport			= "传送",
	TimerTeleportBack		= "传送回来"
})

L:SetOptionLocalization({
	WarningTeleportNow		= "为传送显示警报",
	WarningTeleportSoon		= "为传送显示预警",
	TimerTeleport			= "为传送显示计时条",
	TimerTeleportBack		= "为传送回来显示计时条"
})

L:SetMiscLocalization({
	Pull1				= "死吧，入侵者！",
	Pull2				= "荣耀归于我主！",
	Pull3				= "我要没收你的生命！",
	AddsYell			= "起来吧，我的战士们！起来，再为主人尽忠一次！"
})
--------------------------
--  Heigan the Unclean  --
--------------------------
L = DBM:GetModLocalization("HeiganVanilla")

L:SetGeneralLocalization({
	name 				= "肮脏的希尔盖"
})

L:SetWarningLocalization({
	WarningTeleportNow		= "传送",
	WarningTeleportSoon		= "%d秒后 传送"
})

L:SetTimerLocalization({
	TimerTeleport			= "传送"
})

L:SetOptionLocalization({
	WarningTeleportNow		= "为传送显示警报",
	WarningTeleportSoon		= "为传送显示提前警报",
	TimerTeleport			= "为传送显示计时条"
})

L:SetMiscLocalization({
	Pull1				= "你是我的了。",
	Pull2				= "我看到你了……",
	Pull3				= "你……就是下一个。"
})

---------------
--  Loatheb  --
---------------
L = DBM:GetModLocalization("LoathebVanilla")

L:SetGeneralLocalization({
	name 				= "洛欧塞布"
})

L:SetWarningLocalization({
	WarningHealSoon			= "3秒后可以治疗",
	WarningHealNow			= "现在治疗"
})

L:SetOptionLocalization({
	WarningHealSoon			= "为3秒后可以治疗显示提前警报",
	WarningHealNow			= "为现在治疗显示警报"
})

-----------------
--  Patchwerk  --
-----------------
L = DBM:GetModLocalization("PatchwerkVanilla")

L:SetGeneralLocalization({
	name 				= "帕奇维克"
})

L:SetOptionLocalization({
})

L:SetMiscLocalization({
	yell1 				= "帕奇维克要跟你玩！",
	yell2 				= "帕奇维克是克尔苏加德的战神！"
})

-----------------
--  Grobbulus  --
-----------------
L = DBM:GetModLocalization("GrobbulusVanilla")

L:SetGeneralLocalization({
	name 				= "格罗布鲁斯"
})

-------------
--  Gluth  --
-------------
L = DBM:GetModLocalization("GluthVanilla")

L:SetGeneralLocalization({
	name 				= "格拉斯"
})

----------------
--  Thaddius  --
----------------
L = DBM:GetModLocalization("ThaddiusVanilla")

L:SetGeneralLocalization({
	name 				= "塔迪乌斯"
})

L:SetMiscLocalization({
	Yell				= "斯塔拉格要碾碎你！",
	Emote				= "%s超载了！",
	Emote2				= "电磁圈超载了！",
	Charge1 			= "负极",
	Charge2 			= "正极"
})

L:SetOptionLocalization({
	WarningChargeChanged		= "当你的极性改变时显示特别警报",
	WarningChargeNotChanged		= "当你的极性没有改变时显示特别警报",
	AirowsEnabled				= "显示箭头 $spell:28089",
	TwoCamp						= "显示箭头 (正常 \"两边\" 站位打法)",
	ArrowsRightLeft				= "显示左/右箭头 给 \"四角\" 站位打法 (如果极性改变显示左箭头, 没变显示右箭头)",
	ArrowsInverse				= "显示反转的 \"四角\" 站位打法 (如果极性改变显示右箭头, 没变显示左箭头)"
})

L:SetWarningLocalization({
	WarningChargeChanged		= "极性变为%s",
	WarningChargeNotChanged		= "极性没有改变"
})

----------------------------
--  Instructor Razuvious  --
----------------------------
L = DBM:GetModLocalization("RazuviousVanilla")

L:SetGeneralLocalization({
	name 				= "教官拉苏维奥斯"
})

L:SetMiscLocalization({
	Yell1 				= "仁慈无用！",
	Yell2 				= "练习时间到此为止！都拿出真本事来！",
	Yell3 				= "按我教导的去做！",
	Yell4 				= "绊腿……有什么问题么？"
})

L:SetOptionLocalization({
	WarningShieldWallSoon		= "为盾墙结束显示提前警报"
})

L:SetWarningLocalization({
	WarningShieldWallSoon		= "5秒后 盾墙结束"
})

----------------------------
--  Gothik the Harvester  --
----------------------------
L = DBM:GetModLocalization("GothikVanilla")

L:SetGeneralLocalization({
	name 				= "收割者戈提克"
})

L:SetOptionLocalization({
	TimerWave				= "为下一波小怪显示计时条",
	TimerPhase2				= "为第二阶段显示计时条",
	WarningWaveSoon			= "为小怪出现显示提前警报",
	WarningWaveSpawned		= "为小怪出现显示警报",
	WarningRiderDown		= "当冷酷的骑兵死亡时显示警报",
	WarningKnightDown		= "当冷酷的死亡骑士死亡时显示警报"
})

L:SetTimerLocalization({
	TimerWave				= "第 %d 波",
	TimerPhase2				= "第二阶段"
})

L:SetWarningLocalization({
	WarningWaveSoon			= "3秒后 第%d波: %s",
	WarningWaveSpawned		= "第%d波: %s 出现了",
	WarningRiderDown		= "骑兵已死亡",
	WarningKnightDown		= "死亡骑士已死亡",
	WarningPhase2			= "第二阶段"
})

L:SetMiscLocalization({
	WarningWave1			= "%d %s",
	WarningWave2			= "%d %s 和 %d %s",
	WarningWave3			= "%d %s, %d %s 和 %d %s",
	Trainee					= "学徒",
	Knight					= "死亡骑士",
	Horse					= "鬼灵战马",
	Rider					= "骑兵"
})

---------------------
--  Four Horsemen  --
---------------------
L = DBM:GetModLocalization("HorsemenVanilla")

L:SetGeneralLocalization({
	name 				= "天启四骑士"
})

L:SetOptionLocalization({
	WarningMarkSoon				= "为印记显示提前警报",
	SpecialWarningMarkOnPlayer	= "当你印记叠加多于四层时显示特别警报"
})

L:SetTimerLocalization({
	timerMark	= "印记%d"
})

L:SetWarningLocalization({
	WarningMarkSoon				= "3秒后印记%d",
	SpecialWarningMarkOnPlayer	= "%s: %s"
})

-----------------
--  Sapphiron  --
-----------------
L = DBM:GetModLocalization("SapphironVanilla")

L:SetGeneralLocalization({
	name 				= "萨菲隆"
})

L:SetOptionLocalization({
	WarningAirPhaseSoon		= "为空中阶段显示提前警报",
	WarningAirPhaseNow		= "提示空中阶段",
	WarningLanded			= "提示地上阶段",
	TimerAir				= "为空中阶段显示计时条",
	TimerLanding			= "为降落显示计时条",
	TimerIceBlast			= "为冰霜吐息显示计时条",
	WarningDeepBreath		= "为冰霜吐息显示特别警报",
	WarningIceblock			= "当你中了冰箱时大喊"
})

L:SetWarningLocalization({
	WarningAirPhaseSoon		= "10秒后 空中阶段",
	WarningAirPhaseNow		= "空中阶段",
	WarningLanded			= "萨菲隆降落了",
	WarningDeepBreath		= "冰霜吐息"
})

L:SetTimerLocalization({
	TimerAir				= "空中阶段",
	TimerLanding			= "降落",
	TimerIceBlast			= "冰霜吐息"
})

------------------
--  Kel'Thuzad  --
------------------

L = DBM:GetModLocalization("KelThuzadVanilla")

L:SetGeneralLocalization({
	name 				= "克尔苏加德"
})

L:SetOptionLocalization({
	TimerPhase2			= "为第二阶段显示计时条",
	specwarnP2Soon		= "为克尔苏加德攻击前10秒显示特别警报",
	warnAddsSoon		= "为寒冰皇冠卫士显示提前警报"
})

L:SetMiscLocalization({
	Yell 				= "仆从们，侍卫们，隶属于黑暗与寒冷的战士们！听从克尔苏加德的召唤！"
})

L:SetWarningLocalization({
	specwarnP2Soon			= "10秒后克尔苏加德开始攻击",
	warnAddsSoon			= "寒冰皇冠卫士即将出现"
})

L:SetTimerLocalization({
	TimerPhase2			= "第二阶段"
})
-----------------
--  Naxx Trash --
-----------------

L = DBM:GetModLocalization("NaxxTrash")

L:SetGeneralLocalization({
	name = "小怪"
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
	name = "阿奎尼斯男爵"
})

L:SetMiscLocalization({
	Water		= "水"
})

------------------
--  Ghamoo-ra  --
------------------
L = DBM:GetModLocalization("GhamooraSoD")

L:SetGeneralLocalization({
	name = "加摩拉"
})

------------------
--  Lady Sarevess  --
------------------
L = DBM:GetModLocalization("LadySarevessSoD")

L:SetGeneralLocalization({
	name = "萨利维丝"
})

------------------
--  Gelihast  --
------------------
L = DBM:GetModLocalization("GelihastSoD")

L:SetGeneralLocalization({
	name = "格里哈斯特"
})

L:SetTimerLocalization{
	TimerImmune = "Immunity ends"
}

L:SetOptionLocalization({
	TimerImmune	= "Show timer for the duration of Gelihast's immunity during phase transitions."
})

------------------
--  Lorgus Jett  --
------------------
L = DBM:GetModLocalization("LorgusJettSoD")

L:SetGeneralLocalization({
	name = "洛古斯·杰特"
})

L:SetWarningLocalization({
	warnPriestRemaining		= "%s Priestesses remaining"
})

L:SetOptionLocalization({
	warnPriestRemaining	= "Show warning for how maining Blackfathom Tide Priestesses are remaining"
})

------------------
--  Twilight Lord Kelris  --
------------------
L = DBM:GetModLocalization("TwilightLordKelrisSoD")

L:SetGeneralLocalization({
	name = "梦游者克尔里斯"
})

------------------
--  Aku'mai  --
------------------
L = DBM:GetModLocalization("AkumaiSoD")

L:SetGeneralLocalization({
	name = "阿库麦尔"
})

------------------
--  Gnomeregan  --
------------------

---------------------------
--  Crowd Pummeler 9-60  --
---------------------------
L = DBM:GetModLocalization("CrowdPummellerSoD")

L:SetGeneralLocalization({
	name = "群体打击者9-60"
})

---------------
--  Grubbis  --
---------------
L = DBM:GetModLocalization("GrubbisSoD")

L:SetGeneralLocalization({
	name = "格鲁比斯"
})

L:SetMiscLocalization({
	FirstPull = "在诺莫瑞根各地，还有一些会喷出辐射性物质的通风井。",
	Pull = "糟了！这样的震颤只能代表一件事……"
})
----------------------------
--  Electrocutioner 6000  --
----------------------------
L = DBM:GetModLocalization("ElectrocutionerSoD")

L:SetGeneralLocalization({
	name = "电刑器6000型"
})

-----------------------
--  Viscous Fallout  --
-----------------------
L = DBM:GetModLocalization("ViscousFalloutSoD")

L:SetGeneralLocalization({
	name = "粘性辐射尘"
})

----------------------------
--  Mechanical Menagerie  --
----------------------------
L = DBM:GetModLocalization("MechanicalMenagerieSoD")

L:SetGeneralLocalization({
	name = "机械博览馆"
})

L:SetMiscLocalization{
	Sheep		= "羊",
	Whelp		= "雏龙",
	Squirrel	= "松鼠",
	Chicken		= "鸡"
}

-----------------------------
--  Mekgineer Thermaplugg  --
-----------------------------
L = DBM:GetModLocalization("ThermapluggSoD")

L:SetGeneralLocalization({
	name = "机械师瑟玛普拉格"
})

L:SetTimerLocalization{
	timerTankCD = "Tank Ability"
}

L:SetOptionLocalization({
	timerTankCD	= "Show timer for random tank ability cooldown in stage 4"
})

------------------
--  Sunken Temple  --
------------------

---------------------------
--  Atal'alarion  --
---------------------------
L = DBM:GetModLocalization("AtalalarionSoD")

L:SetGeneralLocalization({
	name = "阿塔拉利恩"
})

---------------------------
--  Festering Rotslime  --
---------------------------
L = DBM:GetModLocalization("FesteringRotslimeSoD")

L:SetGeneralLocalization({
	name = "腐溃烂泥"
})

---------------------------
--  Atal'ai Defenders  --
---------------------------
L = DBM:GetModLocalization("AtalaiDefendersSoD")

L:SetGeneralLocalization({
	name = "阿塔莱防御者"
})
---------------------------
--  Dreamscythe and Weaver  --
---------------------------
L = DBM:GetModLocalization("DreamscytheAndWeaverSoD")

L:SetGeneralLocalization({
	name = "德姆塞卡尔与德拉维沃尔"
})
---------------------------
--  Avatar of Hakkar  --
---------------------------
L = DBM:GetModLocalization("AvatarofHakkarSoD")

L:SetGeneralLocalization({
	name = "哈卡的化身"
})
---------------------------
--  Jammal'an and Ogom  --
---------------------------
L = DBM:GetModLocalization("JammalanAndOgomSoD")

L:SetGeneralLocalization({
	name = "迦玛兰和奥戈姆"
})
---------------------------
--  Morphaz and Hazzas  --
---------------------------
L = DBM:GetModLocalization("MorphazandHazzasSoD")

L:SetGeneralLocalization({
	name = "摩弗拉斯和哈扎斯"
})
---------------------------
--  Shade of Eranikus  --
---------------------------
L = DBM:GetModLocalization("ShadeofEranikusSoD")

L:SetGeneralLocalization({
	name = "伊兰尼库斯的阴影"
})




