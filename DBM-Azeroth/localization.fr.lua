if GetLocale() ~= "frFR" then return end
local L

-- Lord Kazzak (Badlands)
L = DBM:GetModLocalization("KazzakClassicVanilla")

L:SetGeneralLocalization{
	name = "Seigneur Kazzak"
}

L:SetMiscLocalization({
	Pull		= "Pour la Légion ! Pour Kil'Jaeden !"
})

-- Azuregos (Azshara)
L = DBM:GetModLocalization("AzuregosVanilla")

L:SetGeneralLocalization{
	name = "Azuregos"
}

L:SetMiscLocalization({
	Pull		= "Cet endroit est sous ma protection. Les secrets de l'arcane resteront inviolés."
})

-- Taerar (Ashenvale)
L = DBM:GetModLocalization("TaerarVanilla")

L:SetGeneralLocalization{
	name = "Taerar"
}

L:SetMiscLocalization({
	Pull		= "La paix n'est qu'un rêve éphémère ! Que le CAUCHEMAR règne !"
})

-- Ysondre (Feralas)
L = DBM:GetModLocalization("YsondreVanilla")

L:SetGeneralLocalization{
	name = "Ysondre"
}

L:SetMiscLocalization({
	Pull		= "Les fils de la VIE ont été coupés ! Les Rêveurs doivent être vengés !"
})

-- Lethon (Hinterlands)
L = DBM:GetModLocalization("LethonVanilla")

L:SetGeneralLocalization{
	name = "Léthon"
}

L:SetMiscLocalization({
	Pull		= "Je sens l'OMBRE dans vos cœurs. Il ne peut y avoir de repos pour les vilains !"
})

-- Emeriss (Duskwood)
L = DBM:GetModLocalization("EmerissVanilla")

L:SetGeneralLocalization{
	name = "Emeriss"
}

L:SetMiscLocalization({
	Pull		= "L'espoir est une MALADIE de l'âme ! Ces terres vont flétrir et mourir !"
})

-- Thunderaan (SoD only)
L = DBM:GetModLocalization("Thunderaan")

L:SetGeneralLocalization{
	name = "Prince Thunderaan"
}

L:SetWarningLocalization{
	AddIncoming = DBM_CORE_L.AUTO_SPEC_WARN_TEXTS.adds
}

L:SetOptionLocalization{
	AddIncoming = "Afficher l'avertissement pour les serviteurs"
}
