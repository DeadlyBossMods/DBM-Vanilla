DBM.Test:Report[[
Test: SoD/ST/DreamscytheAndWeaver
Mod:  DBM-Raids-Vanilla/DreamscytheAndWeaverSoD

Findings:
	Timer for spell ID 443766 (Wing Buffet) is triggered by event SPELL_CAST_START 443830 (Delayed Wing Buffet)
	ignoreWarnings ignores spell mismatches between Wing Buffet and Delayed Wing Buffet, but no such mismatch was found

Unused objects:
	None

Timers:
	Wing Buffet, time=22.60, type=cd, spellId=443766, triggerDeltas = 0.00, 19.41, 6.47, 6.47, 25.91, 4.84, 22.69, 27.50
		[  0.00] ENCOUNTER_START: 2955, Dreamscythe and Weaver, 215, 20, 0
		[ 19.41] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443793, Wing Buffet, 0, 0
			 Triggered 3x, delta times: 19.41, 43.69, 22.69
		[ 25.88] SPELL_AURA_APPLIED: [Dreamscythe->Dreamscythe: Emerald Ward] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, 443302, Emerald Ward, 0, BUFF, 0
		[ 32.35] SPELL_CAST_START: [Weaver: Delayed Wing Buffet] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 443830, Delayed Wing Buffet, 0, 0
		[ 58.26] SPELL_AURA_REMOVED: [Dreamscythe->Dreamscythe: Emerald Ward] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, 443302, Emerald Ward, 0, BUFF, 0
		[113.29] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443766, Wing Buffet, 0, 0

Announces:
	%s, type=stagechange, spellId=<none>, triggerDeltas = 25.88, 32.38
		[ 25.88] SPELL_AURA_APPLIED: [Dreamscythe->Dreamscythe: Emerald Ward] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, 443302, Emerald Ward, 0, BUFF, 0
		[ 58.26] SPELL_AURA_REMOVED: [Dreamscythe->Dreamscythe: Emerald Ward] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, 443302, Emerald Ward, 0, BUFF, 0
	Wing Flap, type=spell, spellId=442620, triggerDeltas = 8.35, 17.55, 21.03, 19.40, 19.46, 12.94, 19.40
		[  8.35] SPELL_CAST_SUCCESS: [Dreamscythe: Wing Flap] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
			 Triggered 3x, delta times: 8.35, 57.98, 19.46
		[ 25.90] SPELL_CAST_SUCCESS: [Weaver: Wing Flap] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
			 Triggered 4x, delta times: 25.90, 21.03, 51.80, 19.40
	Acid Breath on >%s< (%d), type=stack, spellId=442622, triggerDeltas = 3.23, 7.14, 38.18, 9.71, 11.33, 11.34, 0.00, 22.65, 0.00, 1.60
		[  3.23] SPELL_AURA_APPLIED: [Dreamscythe->Simplyorc: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 442622, Acid Breath, 0, DEBUFF, 0
			 Triggered 2x, delta times: 3.23, 66.36
		[ 10.37] SPELL_AURA_APPLIED: [Dreamscythe->Mafakacoil: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 442622, Acid Breath, 0, DEBUFF, 0
		[ 48.55] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Mafakacoil: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 442622, Acid Breath, 0, DEBUFF, 2, 0
			 Triggered 5x, delta times: 48.55, 9.71, 22.67, 22.65, 1.60
		[ 80.93] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Simplyorc: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 442622, Acid Breath, 0, DEBUFF, 2, 0
			 Triggered 2x, delta times: 80.93, 22.65

Special warnings:
	Wing Buffet!, type=spell, spellId=443766, triggerDeltas = 19.41, 43.69, 22.69, 27.50
		[ 19.41] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443793, Wing Buffet, 0, 0
			 Triggered 3x, delta times: 19.41, 43.69, 22.69
		[113.29] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443766, Wing Buffet, 0, 0
	Delayed Wing Buffet!, type=spell, spellId=443830, triggerDeltas = 32.35
		[ 32.35] SPELL_CAST_START: [Weaver: Delayed Wing Buffet] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 443830, Delayed Wing Buffet, 0, 0

Yells:
	None

Voice pack sounds:
	VoicePack/carefly
		[ 19.41] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443793, Wing Buffet, 0, 0
			 Triggered 3x, delta times: 19.41, 43.69, 22.69
		[ 32.35] SPELL_CAST_START: [Weaver: Delayed Wing Buffet] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 443830, Delayed Wing Buffet, 0, 0
		[113.29] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443766, Wing Buffet, 0, 0
	VoicePack/pthree
		[ 58.26] SPELL_AURA_REMOVED: [Dreamscythe->Dreamscythe: Emerald Ward] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, 443302, Emerald Ward, 0, BUFF, 0
	VoicePack/ptwo
		[ 25.88] SPELL_AURA_APPLIED: [Dreamscythe->Dreamscythe: Emerald Ward] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, 443302, Emerald Ward, 0, BUFF, 0

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 2955, Dreamscythe and Weaver, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 443766 443830 443793 443827, SPELL_CAST_SUCCESS 442620, SPELL_AURA_APPLIED 443302 442622, SPELL_AURA_APPLIED_DOSE 442622, SPELL_AURA_REMOVED 443302
		StartTimer: 19.4, Wing Buffet
	[  3.23] SPELL_AURA_APPLIED: [Dreamscythe->Simplyorc: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 442622, Acid Breath, 0, DEBUFF, 0
		ShowAnnounce: Acid Breath on Simplyorc (1)
	[  8.35] SPELL_CAST_SUCCESS: [Dreamscythe: Wing Flap] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
		ShowAnnounce: Wing Flap
	[ 10.37] SPELL_AURA_APPLIED: [Dreamscythe->Mafakacoil: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 442622, Acid Breath, 0, DEBUFF, 0
		ShowAnnounce: Acid Breath on Mafakacoil (1)
	[ 19.41] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443793, Wing Buffet, 0, 0
		AntiSpam: 1
		ShowSpecialWarning: Wing Buffet!
		PlaySound: VoicePack/carefly
		StartTimer: 22.6, Wing Buffet
	[ 25.88] SPELL_AURA_APPLIED: [Dreamscythe->Dreamscythe: Emerald Ward] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, 443302, Emerald Ward, 0, BUFF, 0
		ShowAnnounce: Stage 2
		PlaySound: VoicePack/ptwo
		StopTimer: Timer443766cd
		StartTimer: 5.0, Wing Buffet
	[ 25.90] SPELL_CAST_SUCCESS: [Weaver: Wing Flap] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
		ShowAnnounce: Wing Flap
	[ 32.35] SPELL_CAST_START: [Weaver: Delayed Wing Buffet] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 443830, Delayed Wing Buffet, 0, 0
		AntiSpam: 1
		ShowSpecialWarning: Delayed Wing Buffet!
		PlaySound: VoicePack/carefly
		StartTimer: 22.6, Wing Buffet
	[ 46.93] SPELL_CAST_SUCCESS: [Weaver: Wing Flap] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
		ShowAnnounce: Wing Flap
	[ 48.55] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Mafakacoil: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 442622, Acid Breath, 0, DEBUFF, 2, 0
		ShowAnnounce: Acid Breath on Mafakacoil (2)
	[ 58.26] SPELL_AURA_REMOVED: [Dreamscythe->Dreamscythe: Emerald Ward] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, 443302, Emerald Ward, 0, BUFF, 0
		ShowAnnounce: Stage 3
		PlaySound: VoicePack/pthree
		StartTimer: 3.0, Wing Buffet
	[ 58.26] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Mafakacoil: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 442622, Acid Breath, 0, DEBUFF, 3, 0
		ShowAnnounce: Acid Breath on Mafakacoil (3)
	[ 63.10] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443793, Wing Buffet, 0, 0
		AntiSpam: 1
			Filtered: 1x SPELL_CAST_START at 63.1
		ShowSpecialWarning: Wing Buffet!
		PlaySound: VoicePack/carefly
		StartTimer: 22.6, Wing Buffet
	[ 66.33] SPELL_CAST_SUCCESS: [Dreamscythe: Wing Flap] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
		ShowAnnounce: Wing Flap
	[ 69.59] SPELL_AURA_APPLIED: [Dreamscythe->Simplyorc: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 442622, Acid Breath, 0, DEBUFF, 0
		ShowAnnounce: Acid Breath on Simplyorc (1)
	[ 80.93] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Simplyorc: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 442622, Acid Breath, 0, DEBUFF, 2, 0
		ShowAnnounce: Acid Breath on Simplyorc (2)
	[ 80.93] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Mafakacoil: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 442622, Acid Breath, 0, DEBUFF, 4, 0
		ShowAnnounce: Acid Breath on Mafakacoil (4)
	[ 85.79] SPELL_CAST_SUCCESS: [Dreamscythe: Wing Flap] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
		ShowAnnounce: Wing Flap
	[ 85.79] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443793, Wing Buffet, 0, 0
		AntiSpam: 1
			Filtered: 1x SPELL_CAST_START at 85.79
		ShowSpecialWarning: Wing Buffet!
		PlaySound: VoicePack/carefly
		StartTimer: 22.6, Wing Buffet
	[ 98.73] SPELL_CAST_SUCCESS: [Weaver: Wing Flap] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
		ShowAnnounce: Wing Flap
	[103.58] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Simplyorc: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 442622, Acid Breath, 0, DEBUFF, 3, 0
		ShowAnnounce: Acid Breath on Simplyorc (3)
	[103.58] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Mafakacoil: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 442622, Acid Breath, 0, DEBUFF, 5, 0
		ShowAnnounce: Acid Breath on Mafakacoil (5)
	[105.18] SPELL_AURA_APPLIED_DOSE: [Dreamscythe->Mafakacoil: Acid Breath] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 442622, Acid Breath, 0, DEBUFF, 6, 0
		ShowAnnounce: Acid Breath on Mafakacoil (6)
	[113.29] SPELL_CAST_START: [Dreamscythe: Wing Buffet] Creature-0-5208-109-4570-220833-00003BD44E, Dreamscythe, 0xa48, "", nil, 0x0, 443766, Wing Buffet, 0, 0
		AntiSpam: 1
			Filtered: 1x SPELL_CAST_START at 113.29
		ShowSpecialWarning: Wing Buffet!
		PlaySound: VoicePack/carefly
		StartTimer: 22.6, Wing Buffet
	[118.13] SPELL_CAST_SUCCESS: [Weaver: Wing Flap] Creature-0-5208-109-4570-220864-00003BD44E, Weaver, 0xa48, "", nil, 0x0, 442620, Wing Flap, 0, 0
		ShowAnnounce: Wing Flap
	[128.02] ENCOUNTER_END: 2955, Dreamscythe and Weaver, 215, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 443302
]]
