DBM.Test:Report[[
Test: SoD/AQ40/Viscidus/Hardmode
Mod:  DBM-Raids-Vanilla/Viscidus

Findings:
	Unused event registration: SPELL_CAST_SUCCESS 25896 (Rejoin Viscidus)
	SpecialWarning for spell ID 25786 (Toxic Vapors) is triggered by event SPELL_AURA_APPLIED 25989 (Toxin)
	SpecialWarning for spell ID 25786 (Toxic Vapors) is triggered by event SPELL_PERIODIC_DAMAGE 25989 (Toxin)

Unused objects:
	None

Timers:
	Poison Bolt Volley (%s), time=11.00, type=cdcount, spellId=25991, triggerDeltas = 0.00, 11.00, 11.37, 37.24, 11.33, 11.32, 11.35, 11.34, 11.32, 12.98, 11.34, 11.35, 25.87, 11.31, 11.34, 11.34, 11.28, 11.35, 30.77, 11.34, 11.38, 12.93, 11.36, 11.32, 11.38, 11.34, 11.31, 11.36, 11.34
		[  0.00] ENCOUNTER_START: 713, Viscidus, 186, 40, 0
		[ 11.00] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
			 Triggered 28x, delta times: 11.00, 11.37, 37.24, 11.33, 11.32, 11.35, 11.34, 11.32, 12.98, 11.34, 11.35, 25.87, 11.31, 11.34, 11.34, 11.28, 11.35, 30.77, 11.34, 11.38, 12.93, 11.36, 11.32, 11.38, 11.34, 11.31, 11.36, 11.34
		[ 29.68] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5482, nil, 0, false, false, false, false, 0
		[161.73] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5528, nil, 0, false, false, false, false, 0
		[235.44] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5560, nil, 0, false, false, false, false, 0
		[390.54] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5598, nil, 0, false, false, false, false, 0
	Noxious Burst, time=30.00, type=next, spellId=1215202, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger

Announces:
	Freeze: %d/3, type=nil, spellId=<none>, triggerDeltas = 16.92, 4.93, 7.83, 65.76, 27.74, 38.55, 54.53, 9.69, 9.49, 84.82, 30.48, 39.80
		[ 16.92] CHAT_MSG_MONSTER_EMOTE: %s begins to slow!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5474, nil, 0, false, false, false, false, 0
		[ 21.85] CHAT_MSG_MONSTER_EMOTE: %s is freezing up!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5479, nil, 0, false, false, false, false, 0
		[ 29.68] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5482, nil, 0, false, false, false, false, 0
		[ 95.44] CHAT_MSG_MONSTER_EMOTE: %s begins to slow!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5504, nil, 0, false, false, false, false, 0
		[123.18] CHAT_MSG_MONSTER_EMOTE: %s is freezing up!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5512, nil, 0, false, false, false, false, 0
		[161.73] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5528, nil, 0, false, false, false, false, 0
		[216.26] CHAT_MSG_MONSTER_EMOTE: %s begins to slow!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5553, nil, 0, false, false, false, false, 0
		[225.95] CHAT_MSG_MONSTER_EMOTE: %s is freezing up!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5557, nil, 0, false, false, false, false, 0
		[235.44] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5560, nil, 0, false, false, false, false, 0
		[320.26] CHAT_MSG_MONSTER_EMOTE: %s begins to slow!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5581, nil, 0, false, false, false, false, 0
		[350.74] CHAT_MSG_MONSTER_EMOTE: %s is freezing up!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5587, nil, 0, false, false, false, false, 0
		[390.54] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5598, nil, 0, false, false, false, false, 0
	Shatter: %d/3, type=nil, spellId=<none>, triggerDeltas = 33.05, 3.66, 129.39, 3.15, 69.43, 2.52, 157.54, 2.84
		[ 33.05] CHAT_MSG_MONSTER_EMOTE: %s begins to crack!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5483, nil, 0, false, false, false, false, 0
		[ 36.71] CHAT_MSG_MONSTER_EMOTE: %s looks ready to shatter!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5486, nil, 0, false, false, false, false, 0
		[166.10] CHAT_MSG_MONSTER_EMOTE: %s begins to crack!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5531, nil, 0, false, false, false, false, 0
		[169.25] CHAT_MSG_MONSTER_EMOTE: %s looks ready to shatter!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5532, nil, 0, false, false, false, false, 0
		[238.68] CHAT_MSG_MONSTER_EMOTE: %s begins to crack!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5561, nil, 0, false, false, false, false, 0
		[241.20] CHAT_MSG_MONSTER_EMOTE: %s looks ready to shatter!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5562, nil, 0, false, false, false, false, 0
		[398.74] CHAT_MSG_MONSTER_EMOTE: %s begins to crack!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5601, nil, 0, false, false, false, false, 0
		[401.58] CHAT_MSG_MONSTER_EMOTE: %s looks ready to shatter!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5604, nil, 0, false, false, false, false, 0
	Poison Bolt Volley (%s), type=count, spellId=25991, triggerDeltas = 11.00, 11.37, 37.24, 11.33, 11.32, 11.35, 11.34, 11.32, 12.98, 11.34, 11.35, 25.87, 11.31, 11.34, 11.34, 11.28, 11.35, 30.77, 11.34, 11.38, 12.93, 11.36, 11.32, 11.38, 11.34, 11.31, 11.36, 11.34
		[ 11.00] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
			 Triggered 28x, delta times: 11.00, 11.37, 37.24, 11.33, 11.32, 11.35, 11.34, 11.32, 12.98, 11.34, 11.35, 25.87, 11.31, 11.34, 11.34, 11.28, 11.35, 30.77, 11.34, 11.38, 12.93, 11.36, 11.32, 11.38, 11.34, 11.31, 11.36, 11.34

Special warnings:
	%s damage - move away, type=gtfo, spellId=25786, triggerDeltas = 242.95, 3.99, 5.08
		[242.95] SPELL_AURA_APPLIED: [Toxic Slime->Healer2: Toxin] Creature-0-1-531-1-15925-00000000B7, Toxic Slime, 0xa48, Player-1-00000005, Healer2, 0x511, 25989, Toxin, 0, DEBUFF, 0
			 Triggered 2x, delta times: 242.95, 9.07
		[246.94] SPELL_PERIODIC_DAMAGE: [Toxic Slime->Healer2: Toxin] Creature-0-1-531-1-15925-00000000B7, Toxic Slime, 0xa48, Player-1-00000005, Healer2, 0x511, 25989, Toxin, 0, 0
	%s damage - move away, type=gtfo, spellId=25989, triggerDeltas = 242.95, 9.07
		[242.95] SPELL_AURA_APPLIED: [Toxic Slime->Healer2: Toxin] Creature-0-1-531-1-15925-00000000B7, Toxic Slime, 0xa48, Player-1-00000005, Healer2, 0x511, 25989, Toxin, 0, DEBUFF, 0
			 Triggered 2x, delta times: 242.95, 9.07
	Noxious Burst - dodge attack, type=dodge, spellId=1215202, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger

Yells:
	None

Voice pack sounds:
	VoicePack/scatter
		Unknown trigger
	VoicePack/watchfeet
		[242.95] SPELL_AURA_APPLIED: [Toxic Slime->Healer2: Toxin] Creature-0-1-531-1-15925-00000000B7, Toxic Slime, 0xa48, Player-1-00000005, Healer2, 0x511, 25989, Toxin, 0, DEBUFF, 0
			 Triggered 2x, delta times: 242.95, 9.07
		[246.94] SPELL_PERIODIC_DAMAGE: [Toxic Slime->Healer2: Toxin] Creature-0-1-531-1-15925-00000000B7, Toxic Slime, 0xa48, Player-1-00000005, Healer2, 0x511, 25989, Toxin, 0, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 713, Viscidus, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 25991 25896, SPELL_AURA_APPLIED 25989, CHAT_MSG_MONSTER_EMOTE
		StartTimer: 12.9, Poison Bolt Volley (1)
	[ 11.00] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (1)
		StartTimer: 11.0, Poison Bolt Volley (2)
	[ 16.92] CHAT_MSG_MONSTER_EMOTE: %s begins to slow!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5474, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 1/3
	[ 21.85] CHAT_MSG_MONSTER_EMOTE: %s is freezing up!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5479, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 2/3
	[ 22.37] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (2)
		StartTimer: 11.0, Poison Bolt Volley (3)
	[ 29.68] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5482, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 3/3
		StopTimer: Timer25991cdcount\t3
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[ 33.05] CHAT_MSG_MONSTER_EMOTE: %s begins to crack!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5483, nil, 0, false, false, false, false, 0
		ShowAnnounce: Shatter: 1/3
	[ 36.71] CHAT_MSG_MONSTER_EMOTE: %s looks ready to shatter!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5486, nil, 0, false, false, false, false, 0
		ShowAnnounce: Shatter: 2/3
	[ 59.61] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (3)
		StartTimer: 11.0, Poison Bolt Volley (4)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[ 70.94] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (4)
		StartTimer: 11.0, Poison Bolt Volley (5)
	[ 82.26] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (5)
		StartTimer: 11.0, Poison Bolt Volley (6)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[ 93.61] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (6)
		StartTimer: 11.0, Poison Bolt Volley (7)
	[ 95.44] CHAT_MSG_MONSTER_EMOTE: %s begins to slow!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5504, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 1/3
	[104.95] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (7)
		StartTimer: 11.0, Poison Bolt Volley (8)
	[116.27] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (8)
		StartTimer: 11.0, Poison Bolt Volley (9)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[123.18] CHAT_MSG_MONSTER_EMOTE: %s is freezing up!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5512, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 2/3
	[129.25] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (9)
		StartTimer: 11.0, Poison Bolt Volley (10)
	[140.59] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (10)
		StartTimer: 11.0, Poison Bolt Volley (11)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[151.94] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (11)
		StartTimer: 11.0, Poison Bolt Volley (12)
	[161.73] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5528, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 3/3
		StopTimer: Timer25991cdcount\t12
	[166.10] CHAT_MSG_MONSTER_EMOTE: %s begins to crack!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5531, nil, 0, false, false, false, false, 0
		ShowAnnounce: Shatter: 1/3
	[169.25] CHAT_MSG_MONSTER_EMOTE: %s looks ready to shatter!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5532, nil, 0, false, false, false, false, 0
		ShowAnnounce: Shatter: 2/3
	[177.81] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (12)
		StartTimer: 11.0, Poison Bolt Volley (13)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[189.12] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (13)
		StartTimer: 11.0, Poison Bolt Volley (14)
	[200.46] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (14)
		StartTimer: 11.0, Poison Bolt Volley (15)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[211.80] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (15)
		StartTimer: 11.0, Poison Bolt Volley (16)
	[216.26] CHAT_MSG_MONSTER_EMOTE: %s begins to slow!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5553, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 1/3
	[223.08] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (16)
		StartTimer: 11.0, Poison Bolt Volley (17)
	[225.95] CHAT_MSG_MONSTER_EMOTE: %s is freezing up!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5557, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 2/3
	[234.43] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (17)
		StartTimer: 11.0, Poison Bolt Volley (18)
	[235.44] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5560, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 3/3
		StopTimer: Timer25991cdcount\t18
	[238.68] CHAT_MSG_MONSTER_EMOTE: %s begins to crack!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5561, nil, 0, false, false, false, false, 0
		ShowAnnounce: Shatter: 1/3
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[241.20] CHAT_MSG_MONSTER_EMOTE: %s looks ready to shatter!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5562, nil, 0, false, false, false, false, 0
		ShowAnnounce: Shatter: 2/3
	[242.95] SPELL_AURA_APPLIED: [Toxic Slime->Healer2: Toxin] Creature-0-1-531-1-15925-00000000B7, Toxic Slime, 0xa48, Player-1-00000005, Healer2, 0x511, 25989, Toxin, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_APPLIED at 242.95
			Filtered: 2x SPELL_PERIODIC_DAMAGE at 244.96, 244.96
		ShowSpecialWarning: Toxin damage - move away
		PlaySound: VoicePack/watchfeet
		AntiSpam: 2
		ShowSpecialWarning: Toxin damage - move away
		PlaySound: VoicePack/watchfeet
	[246.94] SPELL_PERIODIC_DAMAGE: [Toxic Slime->Healer2: Toxin] Creature-0-1-531-1-15925-00000000B7, Toxic Slime, 0xa48, Player-1-00000005, Healer2, 0x511, 25989, Toxin, 0, 0
		AntiSpam: 2
			Filtered: 1x SPELL_PERIODIC_DAMAGE at 246.94
		ShowSpecialWarning: Toxin damage - move away
		PlaySound: VoicePack/watchfeet
	[252.02] SPELL_AURA_APPLIED: [Toxic Slime->Healer2: Toxin] Creature-0-1-531-1-15925-00000000B7, Toxic Slime, 0xa48, Player-1-00000005, Healer2, 0x511, 25989, Toxin, 0, DEBUFF, 0
		AntiSpam: 2
			Filtered: 1x SPELL_AURA_APPLIED at 252.02
			Filtered: 2x SPELL_PERIODIC_DAMAGE at 254.02, 254.02
		ShowSpecialWarning: Toxin damage - move away
		PlaySound: VoicePack/watchfeet
		AntiSpam: 2
		ShowSpecialWarning: Toxin damage - move away
		PlaySound: VoicePack/watchfeet
	[265.20] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (18)
		StartTimer: 11.0, Poison Bolt Volley (19)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[276.54] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (19)
		StartTimer: 11.0, Poison Bolt Volley (20)
	[287.92] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (20)
		StartTimer: 11.0, Poison Bolt Volley (21)
	[300.85] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (21)
		StartTimer: 11.0, Poison Bolt Volley (22)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[312.21] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (22)
		StartTimer: 11.0, Poison Bolt Volley (23)
	[320.26] CHAT_MSG_MONSTER_EMOTE: %s begins to slow!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5581, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 1/3
	[323.53] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (23)
		StartTimer: 11.0, Poison Bolt Volley (24)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[334.91] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (24)
		StartTimer: 11.0, Poison Bolt Volley (25)
	[346.25] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (25)
		StartTimer: 11.0, Poison Bolt Volley (26)
	[350.74] CHAT_MSG_MONSTER_EMOTE: %s is freezing up!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5587, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 2/3
	[357.56] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (26)
		StartTimer: 11.0, Poison Bolt Volley (27)
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[368.92] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (27)
		StartTimer: 11.0, Poison Bolt Volley (28)
	[380.26] SPELL_CAST_SUCCESS: [Viscidus: Poison Bolt Volley] Creature-0-1-531-1-15299-0000000001, Viscidus, 0xa48, "", nil, 0x0, 25991, Poison Bolt Volley, 0, 0
		ShowAnnounce: Poison Bolt Volley (28)
		StartTimer: 11.0, Poison Bolt Volley (29)
	[390.54] CHAT_MSG_MONSTER_EMOTE: %s is frozen solid!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5598, nil, 0, false, false, false, false, 0
		ShowAnnounce: Freeze: 3/3
		StopTimer: Timer25991cdcount\t29
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[398.74] CHAT_MSG_MONSTER_EMOTE: %s begins to crack!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5601, nil, 0, false, false, false, false, 0
		ShowAnnounce: Shatter: 1/3
	[401.58] CHAT_MSG_MONSTER_EMOTE: %s looks ready to shatter!, Viscidus, "", "", Viscidus, "", 0, 0, "", 0, 5604, nil, 0, false, false, false, false, 0
		ShowAnnounce: Shatter: 2/3
	[404.91] ENCOUNTER_END: 713, Viscidus, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
		AntiSpam: 713
]]
