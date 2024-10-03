if GetLocale() ~= "deDE" then return end
local L

-- Lord Kazzak (Badlands)
L = DBM:GetModLocalization("KazzakClassicVanilla")

L:SetGeneralLocalization{
	name = "Lord Kazzak"
}

L:SetMiscLocalization({
	Pull		= "Für die Legion! Für Kil'jaeden!"
})

-- Azuregos (Azshara)
L = DBM:GetModLocalization("AzuregosVanilla")

L:SetGeneralLocalization{
	name = "Azuregos"
}

L:SetMiscLocalization({
	Pull		= "Dieser Ort steht unter meinem Schutz. Die Mysterien des Arkanen werden unberührt bleiben."
})

-- Taerar (Ashenvale)
L = DBM:GetModLocalization("TaerarVanilla")

L:SetGeneralLocalization{
	name = "Taerar"
}

L:SetMiscLocalization({
	Pull		= "Frieden ist nur ein flüchtiger Traum! Von nun an herrscht der ALPTRAUM!"
})

-- Ysondre (Feralas)
L = DBM:GetModLocalization("YsondreVanilla")

L:SetGeneralLocalization{
	name = "Ysondre"
}

L:SetMiscLocalization({
	Pull		= "Die Fäden des LEBENS wurden durchtrennt! Die Träumer müssen gerächt werden!"
})

-- Lethon (Hinterlands)
L = DBM:GetModLocalization("LethonVanilla")

L:SetGeneralLocalization{
	name = "Lethon"
}

L:SetMiscLocalization({
	Pull		= "Ich fühle die SCHATTEN in Euren Herzen. Niemals darf das Böse Ruhe finden!"
})

-- Emeriss (Duskwood)
L = DBM:GetModLocalization("EmerissVanilla")

L:SetGeneralLocalization{
	name = "Emeriss"
}

L:SetMiscLocalization({
	Pull		= "Die Hoffnung ist eine KRANKHEIT der Seele. Dieses Land wird verdorren und sterben!"
})

-- Thunderaan (SoD only)
L = DBM:GetModLocalization("Thunderaan")

L:SetGeneralLocalization{
	name = "Prinz Donneraan"
}

L:SetWarningLocalization{
	AddIncoming = DBM_CORE_L.AUTO_SPEC_WARN_TEXTS.adds
}

L:SetOptionLocalization{
	AddIncoming = "Zeige Warnung wenn ein neues Add spawnt"
}
