local L

-- Lord Kazzak (Badlands)
L = DBM:GetModLocalization("KazzakClassicVanilla")

L:SetGeneralLocalization{
	name = "Lord Kazzak"
}

L:SetMiscLocalization({
	Pull		= "For the Legion! For Kil'Jaeden!"
})

-- Azuregos (Azshara)
L = DBM:GetModLocalization("AzuregosVanilla")

L:SetGeneralLocalization{
	name = "Azuregos"
}

L:SetMiscLocalization({
	Pull		= "This place is under my protection. The mysteries of the arcane shall remain inviolate."
})

-- Taerar (Ashenvale)
L = DBM:GetModLocalization("TaerarVanilla")

L:SetGeneralLocalization{
	name = "Taerar"
}

L:SetMiscLocalization({
	Pull		= "Peace is but a fleeting dream! Let the NIGHTMARE reign!"
})

-- Ysondre (Feralas)
L = DBM:GetModLocalization("YsondreVanilla")

L:SetGeneralLocalization{
	name = "Ysondre"
}

L:SetMiscLocalization({
	Pull		= "The strands of LIFE have been severed! The Dreamers must be avenged!"
})

-- Lethon (Hinterlands)
L = DBM:GetModLocalization("LethonVanilla")

L:SetGeneralLocalization{
	name = "Lethon"
}

L:SetMiscLocalization({
	Pull		= "I can sense the SHADOW on your hearts. There can be no rest for the wicked!"
})

-- Emeriss (Duskwood)
L = DBM:GetModLocalization("EmerissVanilla")

L:SetGeneralLocalization{
	name = "Emeriss"
}

L:SetMiscLocalization({
	Pull		= "Hope is a DISEASE of the soul! This land shall wither and die!"
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
	AddIncoming = "Show warning when an add spawns"
}
