if GetLocale() ~= "ruRU" then return end
 local L

-- Lord Kazzak (Badlands)
L = DBM:GetModLocalization("KazzakClassicVanilla")

L:SetGeneralLocalization{
	name = "Владыка Каззак"
}

L:SetMiscLocalization({
	Pull		= "За Легион! За Кил'джедена!"
})

-- Azuregos (Azshara)
L = DBM:GetModLocalization("AzuregosVanilla")

L:SetGeneralLocalization{
	name = "Азурегос"
}

L:SetMiscLocalization({
	Pull		= "Это место под моей защитой. Тайные мистерии останутся неоскверненными."
})

-- Taerar (Ashenvale)
L = DBM:GetModLocalization("TaerarVanilla")

L:SetGeneralLocalization{
	name = "Таэрар"
}

L:SetMiscLocalization({
	Pull		= "Мир – это всего лишь мимолетный сон. Пусть правит КОШМАР!"
})

-- Ysondre (Feralas)
L = DBM:GetModLocalization("YsondreVanilla")

L:SetGeneralLocalization{
	name = "Исондра"
}

L:SetMiscLocalization({
	Pull		= "Нити ЖИЗНИ разорваны! Отомстим за Спящих!"
})

-- Lethon (Hinterlands)
L = DBM:GetModLocalization("LethonVanilla")

L:SetGeneralLocalization{
	name = "Летон"
}

L:SetMiscLocalization({
	Pull		= "Я чувствую ТЕНЬ, нависшую над вашими сердцами. Нечестивцам не будет покоя!"
})

-- Emeriss (Duskwood)
L = DBM:GetModLocalization("EmerissVanilla")

L:SetGeneralLocalization{
	name = "Эмерисс"
}

L:SetMiscLocalization({
	Pull		= "Надежда – это БОЛЕЗНЬ души! Эта земля зачахнет и умрет!"
})

-- Thunderaan (SoD only)
L = DBM:GetModLocalization("Thunderaan")

L:SetGeneralLocalization{
	name = "Принц Громораан"
}

L:SetWarningLocalization{
	AddIncoming = DBM_CORE_L.AUTO_SPEC_WARN_TEXTS.adds
}

L:SetOptionLocalization{
	AddIncoming = "Показывать предупреждение при появлении аддов"
}
