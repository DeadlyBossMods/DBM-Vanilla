DBM.Test:Report[[
Test: SoD/MC/Ragnaros/Heat-2/Kill
Mod:  DBM-Raids-Vanilla/Ragnaros-Classic

Findings:
	Unused event registration: CHAT_MSG_MONSTER_YELL
	Unused event registration: SPELL_CAST_START 19774 (Summon Ragnaros)
	Unused event registration: SPELL_CAST_SUCCESS 19773 (Elemental Fire)
	Unused event registration: SPELL_DAMAGE 461062 (Pool of Fire)
	Unused event registration: SPELL_MISSED 461062 (Pool of Fire)

Unused objects:
	[Timer] Combat starts, time=83.00, type=cd, spellId=<none>

Timers:
	Emerge, time=90.00, type=cd, spellId=<none>, triggerDeltas = 101.99
		[101.99] UNIT_SPELLCAST_SUCCEEDED: target, Cast-3-1-409-2-20567-0000000AA2, 20567, Ragnaros, 50.3, 0, Tank1, 0
		[189.50] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-1-409-1-12143-00000001A6, Son of Flame, 0xa48, -1, false, 0, 0
	Submerge, time=180.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 189.50
		[  0.00] ENCOUNTER_START: 672, Ragnaros, 226, 20, 0
		[101.99] UNIT_SPELLCAST_SUCCEEDED: target, Cast-3-1-409-2-20567-0000000AA2, 20567, Ragnaros, 50.3, 0, Tank1, 0
		[189.50] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-1-409-1-12143-00000001A6, Son of Flame, 0xa48, -1, false, 0, 0
	Wrath of Ragnaros, time=26.00, type=cd, spellId=20566, triggerDeltas = 0.00, 29.16, 27.52, 32.37, 100.45, 30.72, 29.11, 25.89, 25.84, 25.85
		[  0.00] ENCOUNTER_START: 672, Ragnaros, 226, 20, 0
		[ 29.16] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
			 Triggered 8x, delta times: 29.16, 27.52, 32.37, 131.17, 29.11, 25.89, 25.84, 25.85
		[101.99] UNIT_SPELLCAST_SUCCEEDED: target, Cast-3-1-409-2-20567-0000000AA2, 20567, Ragnaros, 50.3, 0, Tank1, 0
		[189.50] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-1-409-1-12143-00000001A6, Son of Flame, 0xa48, -1, false, 0, 0

Announces:
	Emerge, type=nil, spellId=<none>, triggerDeltas = 189.50
		[189.50] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-1-409-1-12143-00000001A6, Son of Flame, 0xa48, -1, false, 0, 0
	Submerge, type=nil, spellId=<none>, triggerDeltas = 101.99
		[101.99] UNIT_SPELLCAST_SUCCEEDED: target, Cast-3-1-409-2-20567-0000000AA2, 20567, Ragnaros, 50.3, 0, Tank1, 0
	Stage 2 soon, type=prestage, spellId=<none>, triggerDeltas = 101.99
		[101.99] UNIT_HEALTH: target, 0
	Wrath of Ragnaros, type=spell, spellId=20566, triggerDeltas = 29.16, 27.52, 32.37, 131.17, 29.11, 25.89, 25.84, 25.85
		[ 29.16] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
			 Triggered 8x, delta times: 29.16, 27.52, 32.37, 131.17, 29.11, 25.89, 25.84, 25.85

Special warnings:
	%s damage - move away, type=gtfo, spellId=461062, triggerDeltas = 156.55, 12.99
		[156.55] SPELL_AURA_APPLIED: [->Dps14: Pool of Fire] "", nil, 0x0, Player-1-00000018, Dps14, 0x511, 461062, Pool of Fire, 0, DEBUFF, 0
			 Triggered 2x, delta times: 156.55, 12.99

Yells:
	None

Voice pack sounds:
	VoicePack/watchfeet
		[156.55] SPELL_AURA_APPLIED: [->Dps14: Pool of Fire] "", nil, 0x0, Player-1-00000018, Dps14, 0x511, 461062, Pool of Fire, 0, DEBUFF, 0
			 Triggered 2x, delta times: 156.55, 12.99

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, SPELL_CAST_START 19774, SPELL_CAST_SUCCESS 20566 19773, SPELL_AURA_APPLIED 461062, SPELL_DAMAGE 461062, SPELL_MISSED 461062, CHAT_MSG_MONSTER_YELL, UNIT_HEALTH
	[  0.00] ENCOUNTER_START: 672, Ragnaros, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, UNIT_DIED, UNIT_SPELLCAST_SUCCEEDED boss1 boss2 boss3 boss4 boss5 target focus
		StartTimer: 26.0, Wrath of Ragnaros
		StartTimer: 180.0, Submerge
	[ 29.16] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[ 56.68] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[ 89.05] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[101.99] UNIT_HEALTH: target, 0
		ShowAnnounce: Stage 2 soon
	[101.99] UNIT_SPELLCAST_SUCCEEDED: target, Cast-3-1-409-2-20567-0000000AA2, 20567, Ragnaros, 50.3, 0, Tank1, 0
		StopTimer: TimerSubmerge
		StopTimer: Timer20566cd
		ShowAnnounce: Submerge
		StartTimer: 90.0, Emerge
		ScheduleTask: (anonymous function) at 191.99 (+90.00)
			Unscheduled by UNIT_DIED at 189.50
	[156.55] SPELL_AURA_APPLIED: [->Dps14: Pool of Fire] "", nil, 0x0, Player-1-00000018, Dps14, 0x511, 461062, Pool of Fire, 0, DEBUFF, 0
		AntiSpam: gtfo
		ShowSpecialWarning: Pool of Fire damage - move away
		PlaySound: VoicePack/watchfeet
	[169.54] SPELL_AURA_APPLIED: [->Dps14: Pool of Fire] "", nil, 0x0, Player-1-00000018, Dps14, 0x511, 461062, Pool of Fire, 0, DEBUFF, 0
		AntiSpam: gtfo
		ShowSpecialWarning: Pool of Fire damage - move away
		PlaySound: VoicePack/watchfeet
	[189.50] UNIT_DIED: [->Son of Flame] "", nil, 0x0, Creature-0-1-409-1-12143-00000001A6, Son of Flame, 0xa48, -1, false, 0, 0
		UnscheduleTask: (anonymous function) scheduled by ScheduleTask at 101.99
		StopTimer: TimerEmerge
		ShowAnnounce: Emerge
		StartTimer: 26.0, Wrath of Ragnaros
		StartTimer: 180.0, Submerge
	[220.22] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[249.33] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[275.22] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[301.06] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[326.91] SPELL_CAST_SUCCESS: [Ragnaros: Wrath of Ragnaros] Creature-0-1-409-1-228438-0000000002, Ragnaros, 0xa48, "", nil, 0x0, 20566, Wrath of Ragnaros, 0, 0
		ShowAnnounce: Wrath of Ragnaros
		StartTimer: 26.0, Wrath of Ragnaros
	[337.63] ENCOUNTER_END: 672, Ragnaros, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
