DBM.Test:Report[[
Test: SoD/MC/Lucifron/Heat-3/Kill
Mod:  DBM-Raids-Vanilla/Lucifron

Findings:
	Unused event registration: SPELL_AURA_REMOVED 20604 (Dominate Mind)
	Unused event registration: SPELL_CAST_START 20604 (Dominate Mind)
	Unused event registration: SPELL_CAST_SUCCESS 19702 (Impending Doom)
	Unused event registration: SPELL_CAST_SUCCESS 19703 (Lucifron's Curse)
	Announce for spell ID 19702 (Impending Doom) is triggered by event SPELL_CAST_SUCCESS 460931 (Impending Doom)
	Timer for spell ID 19702 (Impending Doom) is triggered by event SPELL_CAST_SUCCESS 460931 (Impending Doom)
	Announce for spell ID 19703 (Lucifron's Curse) is triggered by event SPELL_CAST_SUCCESS 460932 (Lucifron's Curse)
	Timer for spell ID 19703 (Lucifron's Curse) is triggered by event SPELL_CAST_SUCCESS 460932 (Lucifron's Curse)

Unused objects:
	None

Timers:
	Impending Doom, time=20.00, type=cd, spellId=19702, triggerDeltas = 0.00, 6.63, 17.79, 17.41, 16.22, 21.61, 17.64, 16.23, 17.36, 16.58, 19.42
		[  0.00] ENCOUNTER_START: 663, Lucifron, 226, 20, 0
		[  6.63] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
			 Triggered 10x, delta times: 6.63, 17.79, 17.41, 16.22, 21.61, 17.64, 16.23, 17.36, 16.58, 19.42
	Lucifron's Curse, time=20.50, type=cd, spellId=19703, triggerDeltas = 0.00, 12.73, 21.40, 21.08, 24.29, 23.90, 23.05, 23.86
		[  0.00] ENCOUNTER_START: 663, Lucifron, 226, 20, 0
		[ 12.73] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
			 Triggered 7x, delta times: 12.73, 21.40, 21.08, 24.29, 23.90, 23.05, 23.86

Announces:
	Impending Doom, type=spell, spellId=19702, triggerDeltas = 6.63, 17.79, 17.41, 16.22, 21.61, 17.64, 16.23, 17.36, 16.58, 19.42
		[  6.63] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
			 Triggered 10x, delta times: 6.63, 17.79, 17.41, 16.22, 21.61, 17.64, 16.23, 17.36, 16.58, 19.42
	Lucifron's Curse, type=spell, spellId=19703, triggerDeltas = 12.73, 21.40, 21.08, 24.29, 23.90, 23.05, 23.86
		[ 12.73] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
			 Triggered 7x, delta times: 12.73, 21.40, 21.08, 24.29, 23.90, 23.05, 23.86
	Dominate Mind on >%s<, type=target, spellId=20604, triggerDeltas = 13.03, 50.57, 16.20, 4.47
		[ 13.03] Scheduled at 12.73 by SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
		[ 63.60] Scheduled at 63.30 by SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
		[ 79.80] Scheduled at 79.50 by SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
		[ 84.27] Scheduled at 83.97 by SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-00000000AC, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0

Special warnings:
	Dominate Mind on you, type=you, spellId=20604, triggerDeltas = 12.73, 50.57, 16.20, 4.47
		[ 12.73] SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
			 Triggered 4x, delta times: 12.73, 50.57, 16.20, 4.47

Yells:
	Dominate Mind on PlayerName, type=yell, spellId=20604
		[ 12.73] SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
			 Triggered 4x, delta times: 12.73, 50.57, 16.20, 4.47

Voice pack sounds:
	VoicePack/targetyou
		[ 12.73] SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
			 Triggered 4x, delta times: 12.73, 50.57, 16.20, 4.47

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 663, Lucifron, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 20604, SPELL_CAST_SUCCESS 19702 19703 460931 460932, SPELL_AURA_APPLIED 20604, SPELL_AURA_REMOVED 20604
		StartTimer: 7.0, Impending Doom
		StartTimer: 12.0, Lucifron's Curse
	[  6.63] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[ 12.73] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[ 12.73] SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
		AntiSpam: MCMoobie
		ScheduleTask: announce20604target:CombinedShow("PlayerName") at 13.03 (+0.30)
			ShowAnnounce: Dominate Mind on PlayerName
		ShowSpecialWarning: Dominate Mind on you
		PlaySound: VoicePack/targetyou
		ShowYell: Dominate Mind on PlayerName
	[ 24.42] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[ 34.13] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[ 41.83] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[ 55.21] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[ 58.05] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[ 63.30] SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
		AntiSpam: MCMoobie
		ScheduleTask: announce20604target:CombinedShow("PlayerName") at 63.60 (+0.30)
			ShowAnnounce: Dominate Mind on PlayerName
		ShowSpecialWarning: Dominate Mind on you
		PlaySound: VoicePack/targetyou
		ShowYell: Dominate Mind on PlayerName
	[ 79.50] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[ 79.50] SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-0000000002, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
		AntiSpam: MCMoobie
		ScheduleTask: announce20604target:CombinedShow("PlayerName") at 79.80 (+0.30)
			ShowAnnounce: Dominate Mind on PlayerName
		ShowSpecialWarning: Dominate Mind on you
		PlaySound: VoicePack/targetyou
		ShowYell: Dominate Mind on PlayerName
	[ 79.66] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[ 83.97] SPELL_AURA_APPLIED: [Flamewaker Protector->Healer1: Dominate Mind] Creature-0-1-409-1-228441-00000000AC, Flamewaker Protector, 0xa48, Player-1-00000005, Healer1, 0x511, 20604, Dominate Mind, 0, DEBUFF, 0
		AntiSpam: MCMoobie
		ScheduleTask: announce20604target:CombinedShow("PlayerName") at 84.27 (+0.30)
			ShowAnnounce: Dominate Mind on PlayerName
		ShowSpecialWarning: Dominate Mind on you
		PlaySound: VoicePack/targetyou
		ShowYell: Dominate Mind on PlayerName
	[ 97.30] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[103.40] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[113.53] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[126.45] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[130.89] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[147.47] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[150.31] SPELL_CAST_SUCCESS: [Lucifron: Lucifron's Curse] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460932, Lucifron's Curse, 0, 0
		ShowAnnounce: Lucifron's Curse
		StartTimer: 20.5, Lucifron's Curse
	[166.89] SPELL_CAST_SUCCESS: [Lucifron: Impending Doom] Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, "", nil, 0x0, 460931, Impending Doom, 0, 0
		ShowAnnounce: Impending Doom
		StartTimer: 16.0, Impending Doom
	[168.07] UNIT_DIED: [->Lucifron] "", nil, 0x0, Creature-0-1-409-1-228429-0000000002, Lucifron, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 20604
]]
