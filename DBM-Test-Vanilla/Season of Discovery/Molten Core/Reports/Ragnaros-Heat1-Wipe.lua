DBM.Test:Report[[
Test: SoD/MC/Ragnaros/Heat-1/Wipe
Mod:  DBM-Raids-Vanilla/Ragnaros-Classic

Findings:
	Unused event registration: SPELL_CAST_START 19774 (Summon Ragnaros)
	Unused event registration: SPELL_CAST_SUCCESS 19773 (Elemental Fire)
	Unused event registration: UNIT_HEALTH
	Unused event registration: UNIT_SPELLCAST_SUCCEEDED

Unused objects:
	[Announce] Stage 2 soon, type=prestage, spellId=<none>
	[Timer] Combat starts, time=83.00, type=cd, spellId=<none>

Timers:
	Emerge, time=90.00, type=cd, spellId=<none>, triggerDeltas = 153.81, 260.59
		[153.81] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11481, nil, 0, false, false, false, false, 0
		[231.51] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-0002241BF0, Son of Flame, 0xa48, -1, false, 0, 0
		[414.40] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11655, nil, 0, false, false, false, false, 0
		[504.40] Scheduled at 414.40 by CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11655, nil, 0, false, false, false, false, 0
	Submerge, time=180.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 231.51, 272.89
		[  0.00] ENCOUNTER_START: 672, Ragnaros, 226, 20, 0
		[153.81] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11481, nil, 0, false, false, false, false, 0
		[231.51] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-0002241BF0, Son of Flame, 0xa48, -1, false, 0, 0
		[504.40] Scheduled at 414.40 by CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11655, nil, 0, false, false, false, false, 0
	Wrath of Ragnaros, time=26.00, type=cd, spellId=20566, triggerDeltas = 0.00, 30.64, 27.47, 27.51, 35.65, 110.24, 28.97, 27.53, 33.96, 30.76, 27.50, 31.26, 92.91
		[  0.00] ENCOUNTER_START: 672, Ragnaros, 226, 20, 0
		[ 30.64] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
			 Triggered 10x, delta times: 30.64, 27.47, 27.51, 35.65, 139.21, 27.53, 33.96, 30.76, 27.50, 31.26
		[231.51] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-0002241BF0, Son of Flame, 0xa48, -1, false, 0, 0
		[414.40] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11655, nil, 0, false, false, false, false, 0
		[504.40] Scheduled at 414.40 by CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11655, nil, 0, false, false, false, false, 0

Announces:
	Emerge, type=nil, spellId=<none>, triggerDeltas = 231.51, 272.89
		[231.51] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-0002241BF0, Son of Flame, 0xa48, -1, false, 0, 0
		[504.40] Scheduled at 414.40 by CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11655, nil, 0, false, false, false, false, 0
	Submerge, type=nil, spellId=<none>, triggerDeltas = 153.81, 260.59
		[153.81] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11481, nil, 0, false, false, false, false, 0
		[414.40] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11655, nil, 0, false, false, false, false, 0
	Wrath of Ragnaros, type=spell, spellId=20566, triggerDeltas = 30.64, 27.47, 27.51, 35.65, 139.21, 27.53, 33.96, 30.76, 27.50, 31.26
		[ 30.64] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
			 Triggered 10x, delta times: 30.64, 27.47, 27.51, 35.65, 139.21, 27.53, 33.96, 30.76, 27.50, 31.26

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, SPELL_CAST_START 19774, SPELL_CAST_SUCCESS 20566 19773, CHAT_MSG_MONSTER_YELL, UNIT_HEALTH
	[  0.00] ENCOUNTER_START: 672, Ragnaros, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, UNIT_DIED, UNIT_SPELLCAST_SUCCEEDED boss1 boss2 boss3 boss4 boss5 target focus
		StartTimer: 26.0, Wrath of Ragnaros
		StartTimer: 180.0, Submerge
	[ 30.64] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[ 58.11] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[ 85.62] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[121.27] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[153.81] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11481, nil, 0, false, false, false, false, 0
		StopTimer: TimerSubmerge
		ShowAnnounce: Submerge
		StartTimer: 90.0, Emerge
		ScheduleTask: (anonymous function) at 243.81 (+90.00)
			Unscheduled by UNIT_DIED at 231.51
	[231.51] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-0002241BF0, Son of Flame, 0xa48, -1, false, 0, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 153.81
		StopTimer: TimerEmerge
		ShowAnnounce: Emerge
		StartTimer: 26.0, Wrath of Ragnaros
		StartTimer: 180.0, Submerge
	[260.48] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[288.01] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[321.97] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[352.73] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[380.23] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[411.49] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-000024194D, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[414.40] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 11655, nil, 0, false, false, false, false, 0
		StopTimer: Timer20566cd
		ShowAnnounce: Submerge
		StartTimer: 90.0, Emerge
		ScheduleTask: (anonymous function) at 504.40 (+90.00)
			StopTimer: TimerEmerge
			ShowAnnounce: Emerge
			StartTimer: 26.0, Wrath of Ragnaros
			StartTimer: 180.0, Submerge
	[524.22] ENCOUNTER_END: 672, Ragnaros, 226, 20, 0, 0
		EndCombat: ENCOUNTER_END
]]
