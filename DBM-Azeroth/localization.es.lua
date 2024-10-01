if GetLocale() ~= "esES" then return end
local L

-- Lord Kazzak (Badlands)
L = DBM:GetModLocalization("KazzakClassicVanilla")

L:SetGeneralLocalization{
	name = "Lord Kazzak"
}

L:SetMiscLocalization({
	Pull		= "¡Por la Legión! ¡Por Kil'Jaeden!"
})

-- Azuregos (Azshara)
L = DBM:GetModLocalization("AzuregosVanilla")

L:SetGeneralLocalization{
	name = "Azuregos"
}

L:SetMiscLocalization({
	Pull		= "Este lugar está bajo mi protección. Los misterios arcanos no serán mancillados."
})

-- Taerar (Ashenvale)
L = DBM:GetModLocalization("TaerarVanilla")

L:SetGeneralLocalization{
	name = "Taerar"
}

L:SetMiscLocalization({
	Pull		= "¡La paz no es más que un sueño fugaz! ¡Que reine la PESADILLA!"
})

-- Ysondre (Feralas)
L = DBM:GetModLocalization("YsondreVanilla")

L:SetGeneralLocalization{
	name = "Ysondre"
}

L:SetMiscLocalization({
	Pull		= "¡Los hilos de la VIDA se han roto! ¡Tenemos que vengar a los Soñadores!"
})

-- Lethon (Hinterlands)
L = DBM:GetModLocalization("LethonVanilla")

L:SetGeneralLocalization{
	name = "Lethon"
}

L:SetMiscLocalization({
	Pull		= "Puedo sentir la SOMBRA en vuestros corazones. ¡No puede haber descanso para los malos!"
})

-- Emeriss (Duskwood)
L = DBM:GetModLocalization("EmerissVanilla")

L:SetGeneralLocalization{
	name = "Emeriss"
}

L:SetMiscLocalization({
	Pull		= "¡La esperanza es una ENFERMEDAD del alma! ¡Esta tierra se marchitará y morirá!"
})

-- Thunderaan (SoD only)
L = DBM:GetModLocalization("Thunderaan")

L:SetGeneralLocalization{
	name = "Príncipe Thunderaan"
}

L:SetWarningLocalization{
	AddIncoming = DBM_CORE_L.AUTO_SPEC_WARN_TEXTS.adds
}

L:SetOptionLocalization{
	AddIncoming = "Mostrar aviso cuando aparezca un esbirro"
}
