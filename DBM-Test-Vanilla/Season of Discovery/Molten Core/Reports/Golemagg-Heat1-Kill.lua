DBM.Test:Report[[
Test: SoD/MC/Golemagg/Heat-1/Kill
Mod:  DBM-Raids-Vanilla/Golemagg

Findings:
	Unused event registration: SPELL_CAST_SUCCESS 20553 (Golemagg's Trust)

Unused objects:
	[Announce] Golemagg's Trust, type=spell, spellId=20553

Timers:
	None

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
	[ 0.00] ENCOUNTER_START: 670, Golemagg the Incinerator, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_SUCCESS 20553
	[64.98] ENCOUNTER_END: 670, Golemagg the Incinerator, 226, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
