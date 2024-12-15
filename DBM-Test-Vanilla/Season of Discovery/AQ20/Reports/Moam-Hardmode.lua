DBM.Test:Report[[
Test: SoD/AQ20/Moam/Hardmode
Mod:  DBM-Raids-Vanilla/Moam

Findings:
	Unused event registration: SPELL_AURA_APPLIED 25685 (Energize)
	Unused event registration: SPELL_AURA_REMOVED 25685 (Energize)

Unused objects:
	[Announce] Energize, type=spell, spellId=25685
	[Timer] Energize ends, time=90.00, type=active, spellId=25685

Timers:
	Energize, time=90.00, type=next, spellId=25685, triggerDeltas = 0.00
		[ 0.00] ENCOUNTER_START: 720, Moam, 185, 20, 0

Announces:
	None

Special warnings:
	None

Yells:
	None

Voice pack sounds:
	None

Icons:
	None

Event trace:
	[ 0.00] ENCOUNTER_START: 720, Moam, 185, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 25685, SPELL_AURA_REMOVED 25685
		StartTimer: 90.0, Energize
	[46.84] UNIT_DIED: [->Moam] "", nil, 0x0, Creature-0-1-509-1-15340-0000000001, Moam, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 25685
]]
