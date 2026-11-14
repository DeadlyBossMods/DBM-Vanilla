-- 泰坦重铸时光服-时光2-法师-旺仔芒果/椰奶冻-2026.11.13--
if GetLocale() ~= "zhCN" then return end
local L
-- Lord Kazzak (Badlands)
L = DBM:GetModLocalization("KazzakClassicVanilla")

L:SetGeneralLocalization{
	name = "卡扎克"
}

L:SetMiscLocalization({
	Pull		= "为了军团！为了基尔加丹！"
})

-- Azuregos (Azshara)
L = DBM:GetModLocalization("AzuregosVanilla")

L:SetGeneralLocalization{
	name = "艾索雷葛斯"
}

L:SetMiscLocalization({
	Pull		= "我保护着这个地方。神秘的奥术不能受到亵渎。"
})

-- Taerar
L = DBM:GetModLocalization("TaerarVanilla")

L:SetGeneralLocalization{
	name = "泰拉尔"
}

L:SetMiscLocalization({
	Pull		= "和平不过是短暂的梦想！让梦魇统治整个世界吧！"
})

-- Ysondre (Feralas)
L = DBM:GetModLocalization("YsondreVanilla")

L:SetGeneralLocalization{
	name = "伊森德雷"
}

L:SetMiscLocalization({
	Pull		= "生命的希冀已被切断！梦游者要展开报复！"
})

-- Lethon
L = DBM:GetModLocalization("LethonVanilla")

L:SetGeneralLocalization{
	name = "莱索恩"
}

L:SetMiscLocalization({
	Pull		= "我能感受到你内心的阴影。邪恶的侵蚀永远不会停止！"
})

-- Emeriss
L = DBM:GetModLocalization("EmerissVanilla")

L:SetGeneralLocalization{
	name = "艾莫莉丝"
}

L:SetMiscLocalization({
	Pull		= "希望是灵魂染上的疾病！这片土地应该枯竭，从此死气腾腾！"
})

-- Thunderaan (SoD only)
L = DBM:GetModLocalization("Thunderaan")

L:SetGeneralLocalization{
	name = "桑德兰王子"
}

L:SetWarningLocalization{
	AddIncoming = DBM_CORE_L.AUTO_SPEC_WARN_TEXTS.adds
}

L:SetOptionLocalization{
	AddIncoming = "召唤物出现时显示警告"
}
