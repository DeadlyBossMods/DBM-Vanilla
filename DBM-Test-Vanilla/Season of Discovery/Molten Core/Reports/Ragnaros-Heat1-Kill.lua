DBM.Test:Report[[
Test: SoD/MC/Ragnaros/Heat-1/Kill
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
	Emerge, time=90.00, type=cd, spellId=<none>, triggerDeltas = 90.96
		[ 90.96] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 12519, nil, 0, false, false, false, false, 0
		[162.91] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-000324238F, Son of Flame, 0xa48, -1, false, 0, 0
	Submerge, time=180.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 162.91
		[  0.00] ENCOUNTER_START: 672, Ragnaros, 226, 20, 0
		[ 90.96] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 12519, nil, 0, false, false, false, false, 0
		[162.91] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-000324238F, Son of Flame, 0xa48, -1, false, 0, 0
	Wrath of Ragnaros, time=26.00, type=cd, spellId=20566, triggerDeltas = 0.00, 27.59, 29.19, 32.35, 73.78, 28.17, 29.14, 25.92, 33.98
		[  0.00] ENCOUNTER_START: 672, Ragnaros, 226, 20, 0
		[ 27.59] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
			 Triggered 7x, delta times: 27.59, 29.19, 32.35, 101.95, 29.14, 25.92, 33.98
		[ 90.96] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 12519, nil, 0, false, false, false, false, 0
		[162.91] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-000324238F, Son of Flame, 0xa48, -1, false, 0, 0

Announces:
	Emerge, type=nil, spellId=<none>, triggerDeltas = 162.91
		[162.91] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-000324238F, Son of Flame, 0xa48, -1, false, 0, 0
	Submerge, type=nil, spellId=<none>, triggerDeltas = 90.96
		[ 90.96] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 12519, nil, 0, false, false, false, false, 0
	Wrath of Ragnaros, type=spell, spellId=20566, triggerDeltas = 27.59, 29.19, 32.35, 101.95, 29.14, 25.92, 33.98
		[ 27.59] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
			 Triggered 7x, delta times: 27.59, 29.19, 32.35, 101.95, 29.14, 25.92, 33.98

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
	[ 27.59] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[ 56.78] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[ 89.13] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[ 90.96] CHAT_MSG_MONSTER_YELL: COME FORTH, MY SERVANTS! DEFEND YOUR MASTER!, Ragnaros, "", "", "", "", 0, 0, "", 0, 12519, nil, 0, false, false, false, false, 0
		StopTimer: TimerSubmerge
		StopTimer: Timer20566cd
		ShowAnnounce: Submerge
		StartTimer: 90.0, Emerge
		ScheduleTask: (anonymous function) at 180.96 (+90.00)
			Unscheduled by UNIT_DIED at 162.91
	[162.91] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-5210-409-2703-12143-000324238F, Son of Flame, 0xa48, -1, false, 0, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 90.96
		StopTimer: TimerEmerge
		ShowAnnounce: Emerge
		StartTimer: 26.0, Wrath of Ragnaros
		StartTimer: 180.0, Submerge
	[191.08] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[220.22] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[246.14] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[280.12] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-5210-409-2703-228438-00002421C6, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[306.14] ENCOUNTER_END: 672, Ragnaros, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
