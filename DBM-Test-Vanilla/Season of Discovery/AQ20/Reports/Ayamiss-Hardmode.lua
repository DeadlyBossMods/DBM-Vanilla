DBM.Test:Report[[
Test: SoD/AQ20/Ayamiss/Hardmode
Mod:  DBM-Raids-Vanilla/Ayamiss

Findings:
	Unused event registration: SPELL_AURA_REMOVED 25725 (Paralyze)

Unused objects:
	None

Timers:
	Paralyze: %s, time=10.00, type=target, spellId=25725, triggerDeltas = 17.29, 67.14, 17.80
		[ 17.29] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps8: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000010, Dps8, 0x512, 25725, Paralyze, 0, DEBUFF, 0
		[ 84.43] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps7: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000009, Dps7, 0x512, 25725, Paralyze, 0, DEBUFF, 0
		[102.23] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps1: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000001, Dps1, 0x512, 25725, Paralyze, 0, DEBUFF, 0
	Noxious Burst, time=30.00, type=next, spellId=1215202, triggerDeltas = 0.00, 0.00, 0.00
		Unknown trigger

Announces:
	Stage 2, type=stage, spellId=<none>, triggerDeltas = 57.01
		[ 57.01] UNIT_HEALTH: target, 0
	Paralyze on >%s<, type=target, spellId=25725, triggerDeltas = 17.29, 67.14, 17.80
		[ 17.29] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps8: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000010, Dps8, 0x512, 25725, Paralyze, 0, DEBUFF, 0
		[ 84.43] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps7: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000009, Dps7, 0x512, 25725, Paralyze, 0, DEBUFF, 0
		[102.23] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps1: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000001, Dps1, 0x512, 25725, Paralyze, 0, DEBUFF, 0

Special warnings:
	Noxious Burst - dodge attack, type=dodge, spellId=1215202, triggerDeltas = 0.00, 0.00, 0.00
		Unknown trigger

Yells:
	None

Voice pack sounds:
	VoicePack/scatter
		Unknown trigger

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 722, Ayamiss the Hunter, 185, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 25725, SPELL_AURA_REMOVED 25725
		RegisterEvents: ShortTerm, UNIT_HEALTH
		RegisterEvents: Regular, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
	[ 17.29] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps8: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000010, Dps8, 0x512, 25725, Paralyze, 0, DEBUFF, 0
		ShowAnnounce: Paralyze on Dps8
		StartTimer: 10.0, Paralyze: Dps8
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[ 57.01] UNIT_HEALTH: target, 0
		UnregisterEvents: ShortTerm, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
		UnregisterEvents: Regular, UNIT_HEALTH boss1 boss2 boss3 boss4 boss5 target focus
		ShowAnnounce: Stage 2
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[ 84.43] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps7: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000009, Dps7, 0x512, 25725, Paralyze, 0, DEBUFF, 0
		ShowAnnounce: Paralyze on Dps7
		StartTimer: 10.0, Paralyze: Dps7
	Unknown trigger
		AntiSpam: NoxiousBurst
		ShowSpecialWarning: Noxious Burst - dodge attack
		PlaySound: VoicePack/scatter
		StartTimer: 30.0, Noxious Burst
	[102.23] SPELL_AURA_APPLIED: [Ayamiss the Hunter->Dps1: Paralyze] Creature-0-1-509-1-15369-0000000001, Ayamiss the Hunter, 0xa48, Player-1-00000001, Dps1, 0x512, 25725, Paralyze, 0, DEBUFF, 0
		ShowAnnounce: Paralyze on Dps1
		StartTimer: 10.0, Paralyze: Dps1
	[107.83] ENCOUNTER_END: 722, Ayamiss the Hunter, 185, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 25725
]]
