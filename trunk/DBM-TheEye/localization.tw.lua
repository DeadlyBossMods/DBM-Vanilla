if GetLocale() ~= "zhTW" then return end

local L

-----------
--  Alar --
-----------
L = DBM:GetModLocalization("Alar")

L:SetGeneralLocalization{
	name = "歐爾"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
	NextPlatform	= "下一個平台"
}

L:SetOptionLocalization{
	NextPlatform	= "Show timer for when Al'ar changes platforms"
}

L:SetMiscLocalization{
}

------------------
--  Void Reaver --
------------------
L = DBM:GetModLocalization("VoidReaver")

L:SetGeneralLocalization{
	name = "虛無搶奪者"
}

L:SetWarningLocalization{
}

L:SetTimerLocalization{
}

L:SetOptionLocalization{
	YellOnOrb	= "當秘法寶珠在你身上時大叫"
}

L:SetMiscLocalization{
	YellOrb	= "秘法寶珠向著我來了!不想死的快閃開!"
}

--------------------------------
--  High Astromancer Solarian --
--------------------------------
L = DBM:GetModLocalization("Solarian")

L:SetGeneralLocalization{
	name = "高階星術師索拉瑞恩"
}

L:SetWarningLocalization{
	WarnSplit		= "*** 分裂! 5秒後 密探 ***",
	WarnSplitSoon	= "*** 5秒後 分裂 ***",
	WarnAgent		= "*** 密探 出現了 ***",
	WarnPriest		= "*** 牧師和索拉瑞恩 出現了 ***"

}

L:SetTimerLocalization{
	TimerSplit		= "分裂",
	TimerAgent		= "密探",
	TimerPriest		= "牧師和索拉瑞恩"
}

L:SetOptionLocalization{--Translate
	WarnSplit		= "Show warning for Split",
	WarnSplitSoon	= "Show pre-warning for Split",
	WarnAgent		= "Show warning for Agents spawn",
	WarnPriest		= "Show warning for Priests and Solarian spawn",
	TimerSplit		= "Show timer for Split",
	TimerAgent		= "Show timer for Agents spawn",
	TimerPriest		= "Show timer for Priests and Solarian spawn",
	WrathIcon		= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(42783),
	WrathWhisper	= "發送密語給中了星術師之怒的人"
}

L:SetMiscLocalization{
	WrathWhisper	= "你中了星術師之怒!快跑離人群!!",
	YellSplit1		= "I will crush your delusions of grandeur!",--Translate
	YellSplit2		= "You are hopelessly outmatched!",--Translate
	YellPhase2		= "I become"--Translate
}

---------------------------
--  Kael'thas Sunstrider --
---------------------------
L = DBM:GetModLocalization("KaelThas")

L:SetGeneralLocalization{
	name = "凱爾薩斯·逐日者"
}

L:SetWarningLocalization{
	WarnGaze		= "*** 薩拉瑞德正凝視著 >%s< ***",
	WarnMobDead		= "%s down",--Translate
	WarnEgg			= "*** 鳳凰倒下 - 卵出現 ***",
	SpecWarnGaze	= "快跑！",
	SpecWarnEgg		= "*** 鳳凰倒下 - 卵出現 ***"
}

L:SetTimerLocalization{
	TimerPhase		= "Next Phase",--Translate
	TimerPhase1mob	= "%s",
	TimerNextGaze	= "凝視冷卻",
	TimerRebirth	= "復生"
}

L:SetOptionLocalization{--Translate
	WarnGaze		= "Show warning for Thaladred's Gaze target",
	WarnMobDead		= "Show warning for Phase 2 mob down",
	WarnEgg			= "Show warning when Phoenix Egg spawn",
	SpecWarnGaze	= "Show special warning when Gaze on you",
	SpecWarnEgg		= "Show special warning when Phoenix Egg spawn",
	TimerPhase		= "Show time for next phase",
	TimerPhase1mob	= "Show time for Phase 1 mob active",
	TimerNextGaze	= "Show timer for Thaladred's Gaze target changes",
	TimerRebirth	= "Show timer for Phoenix Egg rebirth remaining",
	RangeFrame		= "顯示距離框",
	GazeWhisper		= "發送密語給薩拉瑞德的目標",
	MCIcon			= DBM_CORE_AUTO_ICONS_OPTION_TEXT:format(36797),
	GazeIcon		= "標記薩拉瑞德注視的目標"
}

L:SetMiscLocalization{
	YellPhase1	= "能量。力量。我的人民陷入其中不能自拔……自從太陽之井被摧毀之後就顯得更加明顯。歡迎來到未來。真遺憾，你們無法阻止什麼。沒有人可以阻止我了﹗(薩拉斯語)為了人民的正義!",
	YellPhase2	= "你們看，我的個人收藏中有許多武器……",
	YellPhase3	= "也許我低估了你。要你一次對付四位諫言者也許對你來說是不太公平，但是……我的人民從未得到公平的對待。我只是以牙還牙而已。",
	YellPhase4	= "唉，有些時候，有些事情，必須得親自解決才行。(薩拉斯語)受死吧!",
	YellPhase5	= "我的心血是不會被你們輕易浪費的!我精心謀劃的未來是不會被你們輕易破壞的!感受我真正的力量吧!",
	YellSang	= "你已經努力的打敗了我的幾位最忠誠的諫言者…但是沒有人可以抵抗血錘的力量。等著看桑古納爾的力量吧!",
	YellCaper	= "卡普尼恩將保證你們不會在這裡停留太久。",
	YellTelo	= "做得好，你已經證明你的實力足以挑戰我的工程大師泰隆尼卡斯。",
	EmoteGaze	= "凝視著(.+)!",
	GazeWhisper	= "薩拉瑞德正在注視你！快逃！",
	Thaladred	= "扭曲預言家薩拉瑞德",
	Sanguinar	= "桑古納爾領主",
	Capernian	= "大星術師卡普尼恩",
	Telonicus	= "工程大師泰隆尼卡斯",
	Bow			= "虛空之絃長弓",
	Axe			= "毀滅",
	Mace		= "宇宙灌溉者",
	Dagger		= "無盡之刃",
	Sword		= "扭曲分割者",
	Shield		= "相位壁壘",
	Staff		= "瓦解之杖",
	Egg			= "鳳凰蛋"
}