DBM.Test:Report[[
Test: SoD/AQ40/Ouro/Hardmode
Mod:  DBM-Raids-Vanilla/Ouro

Findings:
	Unused event registration: SPELL_CAST_SUCCESS 26058 (Summon Ouro Mounds)

Unused objects:
	[Announce] Emerge, type=nil, spellId=<none>
	[Announce] Submerge, type=nil, spellId=<none>
	[Timer] Emerge, time=30.00, type=cd, spellId=<none>

Timers:
	Submerge, time=30.00, type=cd, spellId=<none>, triggerDeltas = 0.00
		[  0.00] ENCOUNTER_START: 716, Ouro, 186, 40, 0
		[129.41] SPELL_AURA_APPLIED: [Ouro->Ouro: Berserk] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, 26615, Berserk, 0, BUFF, 0
	Sand Blast, time=23.00, type=next, spellId=26102, triggerDeltas = 0.00, 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49
		[  0.00] ENCOUNTER_START: 716, Ouro, 186, 40, 0
		[ 24.25] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
			 Triggered 7x, delta times: 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49
	Sweep, time=20.50, type=next, spellId=26103, triggerDeltas = 0.00, 22.62, 30.72, 30.77, 30.71, 30.78, 30.73
		[  0.00] ENCOUNTER_START: 716, Ouro, 186, 40, 0
		[ 22.62] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
			 Triggered 6x, delta times: 22.62, 30.72, 30.77, 30.71, 30.78, 30.73

Announces:
	Sweep, type=spell, spellId=26103, triggerDeltas = 22.62, 30.72, 30.77, 30.71, 30.78, 30.73
		[ 22.62] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
			 Triggered 6x, delta times: 22.62, 30.72, 30.77, 30.71, 30.78, 30.73
	Berserk soon, type=soon, spellId=26615, triggerDeltas = 177.84
		[177.84] UNIT_HEALTH: target, 0
	Berserk, type=spell, spellId=26615, triggerDeltas = 129.41
		[129.41] SPELL_AURA_APPLIED: [Ouro->Ouro: Berserk] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, 26615, Berserk, 0, BUFF, 0

Special warnings:
	Sand Blast!, type=spell, spellId=26102, triggerDeltas = 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49
		[ 24.25] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
			 Triggered 7x, delta times: 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49

Yells:
	None

Voice pack sounds:
	VoicePack/stunsoon
		[ 24.25] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
			 Triggered 7x, delta times: 24.25, 22.61, 22.67, 22.67, 24.24, 34.03, 27.49

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 716, Ouro, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 26615, SPELL_CAST_START 26102 26103, SPELL_CAST_SUCCESS 26058
		StartTimer: 22.0, Sweep
		StartTimer: 20.0, Sand Blast
		StartTimer: 184.0, Submerge
		RegisterEvents: ShortTerm, UNIT_HEALTH
		RegisterEvents: Regular, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[ 22.62] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[ 24.25] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[ 46.86] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[ 53.34] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[ 69.53] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[ 84.11] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[ 92.20] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[114.82] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[116.44] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[129.41] SPELL_AURA_APPLIED: [Ouro->Ouro: Berserk] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, 26615, Berserk, 0, BUFF, 0
		ShowAnnounce: Berserk
		StopTimer: TimerSubmerge
	[145.60] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[150.47] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[176.33] SPELL_CAST_START: [Ouro: Sweep] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26103, Sweep, 0, 0
		ShowAnnounce: Sweep
		StartTimer: 20.5, Sweep
	[177.84] UNIT_HEALTH: target, 0
		ShowAnnounce: Berserk soon
		UnregisterEvents: ShortTerm, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
		UnregisterEvents: Regular, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[177.96] SPELL_CAST_START: [Ouro: Sand Blast] Creature-0-1-531-1-15517-0000000005, Ouro, 0xa48, "", nil, 0x0, 26102, Sand Blast, 0, 0
		ShowSpecialWarning: Sand Blast!
		PlaySound: VoicePack/stunsoon
		StartTimer: 23.0, Sand Blast
	[194.84] ENCOUNTER_END: 716, Ouro, 186, 40, 1, 0
		EndCombat: ENCOUNTER_END
		AntiSpam: 716
]]
