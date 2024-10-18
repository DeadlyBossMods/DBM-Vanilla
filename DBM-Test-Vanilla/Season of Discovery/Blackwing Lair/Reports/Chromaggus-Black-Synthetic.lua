DBM.Test:Report[[
Test: SoD/BWL/Chromaggus/Black/Synthetic
Mod:  DBM-Raids-Vanilla/Chromaggus

Findings:
	Unused event registration: CHAT_MSG_MONSTER_EMOTE
	Unused event registration: SPELL_AURA_APPLIED 22277 (Elemental Shield)
	Unused event registration: SPELL_AURA_APPLIED 22278 (Elemental Shield)
	Unused event registration: SPELL_AURA_APPLIED 22279 (Elemental Shield)
	Unused event registration: SPELL_AURA_APPLIED 22280 (Elemental Shield)
	Unused event registration: SPELL_AURA_APPLIED 22281 (Elemental Shield)
	Unused event registration: SPELL_AURA_APPLIED 23128 (Frenzy)
	Unused event registration: SPELL_AURA_APPLIED 23153 (Brood Affliction: Blue)
	Unused event registration: SPELL_AURA_APPLIED 23154 (Brood Affliction: Black)
	Unused event registration: SPELL_AURA_APPLIED 23155 (Brood Affliction: Red)
	Unused event registration: SPELL_AURA_APPLIED 23169 (Brood Affliction: Green)
	Unused event registration: SPELL_AURA_APPLIED 23170 (Brood Affliction: Bronze)
	Unused event registration: SPELL_AURA_APPLIED 23537 (Enrage)
	Unused event registration: SPELL_AURA_REMOVED 23128 (Frenzy)
	Unused event registration: SPELL_AURA_REMOVED 23153 (Brood Affliction: Blue)
	Unused event registration: SPELL_AURA_REMOVED 23154 (Brood Affliction: Black)
	Unused event registration: SPELL_AURA_REMOVED 23155 (Brood Affliction: Red)
	Unused event registration: SPELL_AURA_REMOVED 23169 (Brood Affliction: Green)
	Unused event registration: SPELL_AURA_REMOVED 23170 (Brood Affliction: Bronze)
	Unused event registration: SPELL_CAST_START 23189 (Frost Burn)
	Unused event registration: SPELL_CAST_START 23309 (Incinerate)
	Unused event registration: SPELL_CAST_START 23312 (Time Lapse)
	Unused event registration: SPELL_CAST_START 23314 (Corrosive Acid)
	Unused event registration: SPELL_CAST_START 23316 (Ignite Flesh)
	Unused event registration: UNIT_HEALTH
	Announce for spell ID 467884 (Fetch!) is triggered by event SPELL_CAST_SUCCESS 467883 (Fetch!)
	Timer for spell ID 467884 (Fetch!) is triggered by event SPELL_CAST_SUCCESS 467883 (Fetch!)
	Announce for spell ID 468199 (Roll Over!) is triggered by event SPELL_CAST_SUCCESS 468594 (Roll Over!)
	Timer for spell ID 468199 (Roll Over!) is triggered by event SPELL_CAST_SUCCESS 468594 (Roll Over!)

Unused objects:
	[Announce] %s Vulnerability, type=nil, spellId=<none>
	[Announce] Stage 2 soon, type=prestage, spellId=<none>
	[Announce] Stage 2, type=stage, spellId=<none>
	[Announce] Frenzy, type=spell, spellId=23128
	[Announce] Brood Affliction: Blue, type=spell, spellId=23153
	[Announce] Brood Affliction: Black, type=spell, spellId=23154
	[Announce] Brood Affliction: Red, type=spell, spellId=23155
	[Announce] Brood Affliction: Green, type=spell, spellId=23169
	[Announce] Chromatic Mutation (%s), type=count, spellId=23174
	[Announce] Roll Over! soon, type=soon, spellId=468199
	[Special Warning] Frenzy on >%s< - dispel now, type=dispel, spellId=23128
	[Special Warning] Brood Affliction: Bronze on you, type=you, spellId=23170
	[Timer] Vulnerability CD, time=19.50, type=cd, spellId=<none>
	[Timer] Frenzy ends, time=8.00, type=active, spellId=23128

Timers:
	%s CD, time=60.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 0.00, 30.73, 30.72, 30.75, 46.95, 14.58
		[  0.00] ENCOUNTER_START: 616, Chromaggus, 186, 40, 0
		[ 30.73] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
			 Triggered 3x, delta times: 30.73, 61.47, 61.53
		[ 61.45] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
			 Triggered 2x, delta times: 61.45, 77.70
	%s cast, time=2.00, type=cd, spellId=<none>, triggerDeltas = 30.73, 10.00, 2.94, 3.23, 3.22, 3.25, 8.08, 30.75, 29.14, 3.23, 3.23, 3.30, 3.20, 4.85, 14.58, 46.97
		[ 30.73] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
			 Triggered 5x, delta times: 30.73, 16.17, 45.30, 35.60, 25.93
		[ 40.73] SPELL_CAST_START: [Chromaggus: Frost Burn] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23187, Frost Burn, 0, 0
			 Triggered 2x, delta times: 40.73, 80.61
		[ 43.67] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
			 Triggered 5x, delta times: 43.67, 17.78, 63.12, 14.58, 61.55
		[ 50.12] SPELL_CAST_START: [Chromaggus: Corrosive Acid] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23313, Corrosive Acid, 0, 0
			 Triggered 2x, delta times: 50.12, 80.98
		[ 53.37] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
			 Triggered 2x, delta times: 53.37, 80.93
	Breath Volley, time=80.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 40.73, 80.61, 79.36
		[  0.00] ENCOUNTER_START: 616, Chromaggus, 186, 40, 0
		[ 40.73] SPELL_CAST_START: [Chromaggus: Frost Burn] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23187, Frost Burn, 0, 0
			 Triggered 2x, delta times: 40.73, 80.61
		[200.70] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
	Fetch!, time=40.00, type=cd, spellId=467884, triggerDeltas = 0.00, 21.00, 40.45, 40.45, 40.48
		[  0.00] ENCOUNTER_START: 616, Chromaggus, 186, 40, 0
		[ 21.00] SPELL_CAST_SUCCESS: [Chromaggus: Fetch!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 467883, Fetch!, 0, 0
			 Triggered 4x, delta times: 21.00, 40.45, 40.45, 40.48
	Roll Over! ends, time=16.00, type=active, spellId=468199, triggerDeltas = 168.30
		[168.30] SPELL_CAST_SUCCESS: [Chromaggus: Roll Over!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 468594, Roll Over!, 0, 0

Announces:
	%s, type=nil, spellId=<none>, triggerDeltas = 30.73, 10.00, 2.94, 3.23, 3.22, 3.25, 8.08, 30.75, 29.14, 3.23, 3.23, 3.30, 3.20, 4.85, 14.58, 46.97
		[ 30.73] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
			 Triggered 5x, delta times: 30.73, 16.17, 45.30, 35.60, 25.93
		[ 40.73] SPELL_CAST_START: [Chromaggus: Frost Burn] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23187, Frost Burn, 0, 0
			 Triggered 2x, delta times: 40.73, 80.61
		[ 43.67] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
			 Triggered 5x, delta times: 43.67, 17.78, 63.12, 14.58, 61.55
		[ 50.12] SPELL_CAST_START: [Chromaggus: Corrosive Acid] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23313, Corrosive Acid, 0, 0
			 Triggered 2x, delta times: 50.12, 80.98
		[ 53.37] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
			 Triggered 2x, delta times: 53.37, 80.93
	Fetch!, type=spell, spellId=467884, triggerDeltas = 21.00, 40.45, 40.45, 40.48
		[ 21.00] SPELL_CAST_SUCCESS: [Chromaggus: Fetch!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 467883, Fetch!, 0, 0
			 Triggered 4x, delta times: 21.00, 40.45, 40.45, 40.48
	Roll Over!, type=spell, spellId=468199, triggerDeltas = 168.30
		[168.30] SPELL_CAST_SUCCESS: [Chromaggus: Roll Over!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 468594, Roll Over!, 0, 0

Special warnings:
	Breath soon, type=soon, spellId=17087, triggerDeltas = 27.00, 10.00, 20.00, 30.73, 30.72, 30.75, 46.95, 14.58
		[ 27.00] Scheduled at 0.00 by ENCOUNTER_START: 616, Chromaggus, 186, 40, 0
			 Triggered 3x, delta times: 27.00, 10.00, 20.00
		[ 87.73] Scheduled at 30.73 by SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
		[118.45] Scheduled at 61.45 by SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
		[149.20] Scheduled at 92.20 by SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
		[196.15] Scheduled at 139.15 by SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
		[210.73] Scheduled at 153.73 by SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 616, Chromaggus, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 23308 23309 23313 23314 23187 23189 23315 23316 23310 23312, SPELL_CAST_SUCCESS 467883 468594, SPELL_AURA_APPLIED 23155 23169 23153 23154 23170 23128 23537 22277 22278 22279 22280 22281, SPELL_AURA_REMOVED 23155 23169 23153 23154 23170 23128, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus, CHAT_MSG_MONSTER_EMOTE
		StartTimer: 30.0, First Breath CD
		StartTimer: 60.0, Second Breath CD
		ScheduleTask: specWarn17087soon:Schedule() at 27.00 (+27.00)
			ShowSpecialWarning: Breath soon
		ScheduleTask: specWarn17087soon:Schedule() at 57.00 (+57.00)
			ShowSpecialWarning: Breath soon
		StartTimer: 20.9, Fetch!
		StartTimer: 40.0, Breath Volley
		ScheduleTask: specWarn17087soon:Schedule() at 37.00 (+37.00)
			ShowSpecialWarning: Breath soon
	[ 21.00] SPELL_CAST_SUCCESS: [Chromaggus: Fetch!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 467883, Fetch!, 0, 0
		ShowAnnounce: Fetch!
		StartTimer: 40.0, Fetch!
	[ 30.73] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
		ScheduleTask: specWarn17087soon:Schedule() at 87.73 (+57.00)
			ShowSpecialWarning: Breath soon
	[ 40.73] SPELL_CAST_START: [Chromaggus: Frost Burn] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23187, Frost Burn, 0, 0
		ShowAnnounce: Frost Burn
		StartTimer: 2.0, Frost Burn cast
		StartTimer: 80.0, Breath Volley
	[ 43.67] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
		ShowAnnounce: Incinerate
		StartTimer: 2.0, Incinerate cast
	[ 46.90] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
	[ 50.12] SPELL_CAST_START: [Chromaggus: Corrosive Acid] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23313, Corrosive Acid, 0, 0
		ShowAnnounce: Corrosive Acid
		StartTimer: 2.0, Corrosive Acid cast
	[ 53.37] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
		ShowAnnounce: Ignite Flesh
		StartTimer: 2.0, Ignite Flesh cast
	[ 61.45] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
		ShowAnnounce: Incinerate
		StartTimer: 2.0, Incinerate cast
		StartTimer: 60.0, Incinerate CD
		ScheduleTask: specWarn17087soon:Schedule() at 118.45 (+57.00)
			ShowSpecialWarning: Breath soon
	[ 61.45] SPELL_CAST_SUCCESS: [Chromaggus: Fetch!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 467883, Fetch!, 0, 0
		ShowAnnounce: Fetch!
		StartTimer: 40.0, Fetch!
	[ 92.20] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
		ScheduleTask: specWarn17087soon:Schedule() at 149.20 (+57.00)
			ShowSpecialWarning: Breath soon
	[101.90] SPELL_CAST_SUCCESS: [Chromaggus: Fetch!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 467883, Fetch!, 0, 0
		ShowAnnounce: Fetch!
		StartTimer: 40.0, Fetch!
	[121.34] SPELL_CAST_START: [Chromaggus: Frost Burn] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23187, Frost Burn, 0, 0
		ShowAnnounce: Frost Burn
		StartTimer: 2.0, Frost Burn cast
		StartTimer: 80.0, Breath Volley
	[124.57] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
		ShowAnnounce: Incinerate
		StartTimer: 2.0, Incinerate cast
	[127.80] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
	[131.10] SPELL_CAST_START: [Chromaggus: Corrosive Acid] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23313, Corrosive Acid, 0, 0
		ShowAnnounce: Corrosive Acid
		StartTimer: 2.0, Corrosive Acid cast
	[134.30] SPELL_CAST_START: [Chromaggus: Ignite Flesh] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23315, Ignite Flesh, 0, 0
		ShowAnnounce: Ignite Flesh
		StartTimer: 2.0, Ignite Flesh cast
	[139.15] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
		ShowAnnounce: Incinerate
		StartTimer: 2.0, Incinerate cast
		StartTimer: 60.0, Incinerate CD
		ScheduleTask: specWarn17087soon:Schedule() at 196.15 (+57.00)
			ShowSpecialWarning: Breath soon
	[142.38] SPELL_CAST_SUCCESS: [Chromaggus: Fetch!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 467883, Fetch!, 0, 0
		ShowAnnounce: Fetch!
		StartTimer: 40.0, Fetch!
	[153.73] SPELL_CAST_START: [Chromaggus: Time Lapse] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23310, Time Lapse, 0, 0
		ShowAnnounce: Time Lapse
		StartTimer: 2.0, Time Lapse cast
		StartTimer: 60.0, Time Lapse CD
		ScheduleTask: specWarn17087soon:Schedule() at 210.73 (+57.00)
			ShowSpecialWarning: Breath soon
	[168.30] SPELL_CAST_SUCCESS: [Chromaggus: Roll Over!] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 468594, Roll Over!, 0, 0
		StartTimer: 16.0, Roll Over! ends
		ShowAnnounce: Roll Over!
	[200.70] SPELL_CAST_START: [Chromaggus: Incinerate] Vehicle-0-1-469-1-14020-0000000001, Chromaggus, 0xa48, "", nil, 0x0, 23308, Incinerate, 0, 0
		ShowAnnounce: Incinerate
		StartTimer: 2.0, Incinerate cast
		StartTimer: 80.0, Breath Volley
	[230.00] ENCOUNTER_END: 616, Chromaggus, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 23155 23169 23153 23154 23170 23128
]]
