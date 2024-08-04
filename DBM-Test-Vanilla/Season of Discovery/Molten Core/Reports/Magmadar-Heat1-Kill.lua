DBM.Test:Report[[
Test: SoD/MC/Magmadar/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Magmadar

Findings:
	Unused event registration: SPELL_CAST_SUCCESS 461125 (Panic)
	Unused event registration: UNIT_SPELLCAST_SUCCEEDED

Unused objects:
	[Announce] Frenzy on >%s<, type=target, spellId=19451
	[Announce] Summon Core Hound, type=spell, spellId=364727

Timers:
	Panic, time=30.00, type=cd, spellId=19408, triggerDeltas = 8.07
		[ 8.07] SPELL_CAST_SUCCESS: [Magmadar: Panic] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, "", nil, 0x0, 19408, Panic, 0, 0
	Frenzy ends, time=8.00, type=active, spellId=19451, triggerDeltas = 6.45, 21.07, 17.77, 17.81
		[ 6.45] SPELL_AURA_APPLIED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
			 Triggered 4x, delta times: 6.45, 21.07, 17.77, 17.81
		[ 9.42] SPELL_AURA_REMOVED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
			 Triggered 4x, delta times: 9.42, 19.69, 19.95, 21.25
	Frenzy, time=17.80, type=cd, spellId=19451, triggerDeltas = 6.46, 21.06, 17.77, 17.81
		[ 6.46] SPELL_CAST_SUCCESS: [Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, "", nil, 0x0, 19451, Frenzy, 0, 0
			 Triggered 4x, delta times: 6.46, 21.06, 17.77, 17.81

Announces:
	Panic, type=spell, spellId=19408, triggerDeltas = 8.07
		[ 8.07] SPELL_CAST_SUCCESS: [Magmadar: Panic] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, "", nil, 0x0, 19408, Panic, 0, 0

Special warnings:
	Frenzy on >%s< - dispel now, type=dispel, spellId=19451, triggerDeltas = 6.45, 21.07, 17.77, 17.81
		[ 6.45] SPELL_AURA_APPLIED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
			 Triggered 4x, delta times: 6.45, 21.07, 17.77, 17.81

Yells:
	None

Voice pack sounds:
	VoicePack/enrage
		[ 6.45] SPELL_AURA_APPLIED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
			 Triggered 4x, delta times: 6.45, 21.07, 17.77, 17.81

Icons:
	None

Event trace:
	[ 0.00] ENCOUNTER_START: 664, Magmadar, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 19451, SPELL_AURA_REMOVED 19451, SPELL_CAST_SUCCESS 19408 19451 461125, UNIT_SPELLCAST_SUCCEEDED boss1 boss2 boss3 boss4 boss5 target focus
	[ 6.45] SPELL_AURA_APPLIED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Magmadar - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[ 6.46] SPELL_CAST_SUCCESS: [Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, "", nil, 0x0, 19451, Frenzy, 0, 0
		StartTimer: 17.8, Frenzy
	[ 8.07] SPELL_CAST_SUCCESS: [Magmadar: Panic] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, "", nil, 0x0, 19408, Panic, 0, 0
		ShowAnnounce: Panic
		StartTimer: 30.0, Panic
	[ 9.42] SPELL_AURA_REMOVED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
		StopTimer: Timer19451active
	[27.52] SPELL_AURA_APPLIED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Magmadar - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[27.52] SPELL_CAST_SUCCESS: [Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, "", nil, 0x0, 19451, Frenzy, 0, 0
		StartTimer: 17.8, Frenzy
	[29.11] SPELL_AURA_REMOVED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
		StopTimer: Timer19451active
	[45.29] SPELL_AURA_APPLIED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Magmadar - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[45.29] SPELL_CAST_SUCCESS: [Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, "", nil, 0x0, 19451, Frenzy, 0, 0
		StartTimer: 17.8, Frenzy
	[49.06] SPELL_AURA_REMOVED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
		StopTimer: Timer19451active
	[63.10] SPELL_AURA_APPLIED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
		ShowSpecialWarning: Frenzy on Magmadar - dispel now
		PlaySound: VoicePack/enrage
		StartTimer: 8.0, Frenzy ends
	[63.10] SPELL_CAST_SUCCESS: [Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, "", nil, 0x0, 19451, Frenzy, 0, 0
		StartTimer: 17.8, Frenzy
	[70.31] SPELL_AURA_REMOVED: [Magmadar->Magmadar: Frenzy] Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, Creature-0-1-409-1-228430-0000000001, Magmadar, 0xa48, 19451, Frenzy, 0, BUFF, 0
		StopTimer: Timer19451active
	[78.20] ENCOUNTER_END: 664, Magmadar, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 19451
]]
