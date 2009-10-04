-- ------------------------------------- --
--   Tempest Keep - Taiwan localization  --
--   Version:	1.0   			 --
--   Author(s): Arta		         --
--   Date:	01 May 2008              --
-- ------------------------------------- --

-- ----- Notes/Changelog ----- --
-- Boss names and zones are translated
-- Descriptions, warnings are NOT translated !!


if (GetLocale() == "zhTW") then
DBM_TERRACE			= "博學者殿堂"


-- Selin Fireheart
DBM_SELIN_NAME			= "斯琳•炎心"
DBM_SELIN_DESCRIPTION		= "Announces and timers for Selin Fireheart"
DBM_SELIN_PULL			= "You only waste my time!"

DBM_SELIN_OPTION_CRYSTAL	= "Announce Fel Crystal Channeling."
DBM_SELIN_CHECK_CRYSTAL		= "%s begins to channel from the nearby Fel Crystal..."
DBM_SELIN_WARN_CRYSTAL		= "Fel Crystal Channeling"


-- Vexallus
DBM_VEXALLUS_NAME		= "維克索魯斯"
DBM_VEXALLUS_DESCRIPTION	= "Announces and timers for Vexallus."

DBM_VEXALLUS_OPTION_ENERGY	= "Announce Pure Energy."
DBM_VEXALLUS_CHECK_ENERGY	= "discharges pure energy!"
DBM_VEXALLUS_WARN_ENERGY	= "Pure Energy"
		

-- Priestess Delrissa							
DBM_DELRISSA_NAME			= "女牧師戴利莎"		
DBM_DELRISSA_DESCRIPTION		= "Announces and timers for Priestess Delrissa."
DBM_DELRISSA_PULL			= "Annihilate them."

DBM_DELRISSA_OPTION_SHIELD		= "Announce Power Word: Shield"
DBM_DELRISSA_OPTION_RENEW		= "Announce Renew"
DBM_DELRISSA_OPTION_HEAL		= "Announce Flash Heal"
DBM_DELRISSA_OPTION_SOC			= "Announce Seed of Corruption (Ellrys Duskhallow)"
DBM_DELRISSA_OPTION_LHW			= "Announce Lesser Healing Wave (Apoko)"
DBM_DELRISSA_OPTION_WF			= "Announce Windfury Totem (Apoko)"
DBM_DELRISSA_OPTION_BLIZZARD		= "Announce Blizzard (Yazzai)"
DBM_DELRISSA_OPTION_POLY		= "Announce Polymorph (Yazzai)"

DBM_DELRISSA_WARN_RENEW			= "Renew on >%s<"
DBM_DELRISSA_WARN_HEAL			= "Delrissa casts Flash Heal"
DBM_DELRISSA_WARN_SHIELD		= "Power Word: Shield on %s"
DBM_DELRISSA_WARN_SOC			= "Seed of Corruption on >%s<"
DBM_DELRISSA_WARN_LHW			= "Apoko casts Lesser Healing Wave"
DBM_DELRISSA_WARN_WF			= "Windfury Totem"
DBM_DELRISSA_WARN_BLIZZARD		= "Blizzard"
DBM_DELRISSA_WARN_POLY			= "Polymorph on >%s<"


-- Kael'thas
DBM_KAEL_NAME			= "凱爾薩斯•逐日者"
DBM_KAEL_DESCRIPTION		= "Announces and timers for Kael'thas Sunstrider."

DBM_KAEL_OPTION_FLAMESTRIKE	= "Announce Flame Strike"
DBM_KAEL_OPTION_PHASE2		= "Announce Phase 2"
DBM_KAEL_OPTION_GRAVITY		= "Announce Gravity Lapse"
DBM_KAEL_OPTION_PHOENIX		= "Announce Phoenix spawn"
DBM_KAEL_OPTION_BARRIER		= "Announce Shock Barrier (heroic)"

DBM_KAEL_CHECK_PHASE2		= "I'll turn your world... upside... down."

DBM_KAEL_WARN_FLAMESTRIKE	= "Flame Strike"
DBM_KAEL_WARN_PHASE2		= "Phase 2"
DBM_KAEL_WARN_GRAVITY		= "Gravity Lapse"
DBM_KAEL_WARN_PHOENIX		= "Phoenix Spawned"
DBM_KAEL_WARN_BARRIER		= "Shock Barrier"
DBM_KAEL_WARN_BARRIER2		= "Shock Barrier soon"
end