DBM.Test:Report[[
Test: SoD/AQ20/Buru/Hardmode
Mod:  DBM-Raids-Vanilla/Buru

Findings:
	Unused event registration: SPELL_AURA_REMOVED 96 (Dismember)

Unused objects:
	[Special Warning] Pursue on you, type=nil, spellId=<none>
	[Special Warning] %d stacks of Dismember on you, type=stack, spellId=96
	[Special Warning] Dismember on >%s< - taunt now, type=taunt, spellId=96

Timers:
	Dismember: %s, time=10.00, type=target, spellId=96, triggerDeltas = 27.59, 10.22, 8.64
		[ 27.59] SPELL_AURA_APPLIED: [Buru the Gorger->Tank1: Dismember] Creature-0-1-509-1-15370-0000000001, Buru the Gorger, 0xa48, Player-1-00000004, Tank1, 0x512, 96, Dismember, 0, DEBUFF, 0
			 Triggered 2x, delta times: 27.59, 10.22
		[ 46.45] SPELL_AURA_APPLIED_DOSE: [Buru the Gorger->Tank1: Dismember] Creature-0-1-509-1-15370-0000000001, Buru the Gorger, 0xa48, Player-1-00000004, Tank1, 0x512, 96, Dismember, 0, DEBUFF, 2, 0

Announces:
	Pursue on >%s<, type=nil, spellId=<none>, triggerDeltas = 0.23, 19.37, 31.14, 20.65, 4.77
		[  0.23] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Dps4!, Buru the Gorger, "", "", Dps4, "", 0, 0, "", 0, 1377, nil, 0, false, false, false, false, 0
		[ 19.60] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Dps2!, Buru the Gorger, "", "", Dps2, "", 0, 0, "", 0, 1384, nil, 0, false, false, false, false, 0
		[ 50.74] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Healer2!, Buru the Gorger, "", "", Healer2, "", 0, 0, "", 0, 1395, nil, 0, false, false, false, false, 0
		[ 71.39] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Dps3!, Buru the Gorger, "", "", Dps3, "", 0, 0, "", 0, 1402, nil, 0, false, false, false, false, 0
		[ 76.16] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Dps7!, Buru the Gorger, "", "", Dps7, "", 0, 0, "", 0, 1404, nil, 0, false, false, false, false, 0
	Dismember on >%s< (%d), type=stack, spellId=96, triggerDeltas = 27.59, 10.22, 8.64
		[ 27.59] SPELL_AURA_APPLIED: [Buru the Gorger->Tank1: Dismember] Creature-0-1-509-1-15370-0000000001, Buru the Gorger, 0xa48, Player-1-00000004, Tank1, 0x512, 96, Dismember, 0, DEBUFF, 0
			 Triggered 2x, delta times: 27.59, 10.22
		[ 46.45] SPELL_AURA_APPLIED_DOSE: [Buru the Gorger->Tank1: Dismember] Creature-0-1-509-1-15370-0000000001, Buru the Gorger, 0xa48, Player-1-00000004, Tank1, 0x512, 96, Dismember, 0, DEBUFF, 2, 0

Special warnings:
	%s damage - move away, type=gtfo, spellId=1215421, triggerDeltas = 59.28, 31.76
		[ 59.28] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000007, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
			 Triggered 2x, delta times: 59.28, 31.76

Yells:
	None

Voice pack sounds:
	VoicePack/watchfeet
		[ 59.28] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000007, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
			 Triggered 2x, delta times: 59.28, 31.76

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 721, Buru the Gorger, 185, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, CHAT_MSG_MONSTER_EMOTE
		RegisterEvents: ShortTerm, SPELL_AURA_APPLIED 96, SPELL_AURA_APPLIED_DOSE 96, SPELL_AURA_REMOVED 96
		RegisterEvents: Regular, SPELL_AURA_APPLIED 96, SPELL_AURA_APPLIED_DOSE 96, SPELL_AURA_REMOVED 96
	[  0.23] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Dps4!, Buru the Gorger, "", "", Dps4, "", 0, 0, "", 0, 1377, nil, 0, false, false, false, false, 0
		ShowAnnounce: Pursue on Unknown
	[ 19.60] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Dps2!, Buru the Gorger, "", "", Dps2, "", 0, 0, "", 0, 1384, nil, 0, false, false, false, false, 0
		ShowAnnounce: Pursue on Unknown
	[ 27.59] SPELL_AURA_APPLIED: [Buru the Gorger->Tank1: Dismember] Creature-0-1-509-1-15370-0000000001, Buru the Gorger, 0xa48, Player-1-00000004, Tank1, 0x512, 96, Dismember, 0, DEBUFF, 0
		StartTimer: 10.0, Dismember: Tank1
		ShowAnnounce: Dismember on Tank1 (1)
	[ 37.81] SPELL_AURA_APPLIED: [Buru the Gorger->Tank1: Dismember] Creature-0-1-509-1-15370-0000000001, Buru the Gorger, 0xa48, Player-1-00000004, Tank1, 0x512, 96, Dismember, 0, DEBUFF, 0
		StartTimer: 10.0, Dismember: Tank1
		ShowAnnounce: Dismember on Tank1 (1)
	[ 46.45] SPELL_AURA_APPLIED_DOSE: [Buru the Gorger->Tank1: Dismember] Creature-0-1-509-1-15370-0000000001, Buru the Gorger, 0xa48, Player-1-00000004, Tank1, 0x512, 96, Dismember, 0, DEBUFF, 2, 0
		StartTimer: 10.0, Dismember: Tank1
		ShowAnnounce: Dismember on Tank1 (2)
	[ 50.74] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Healer2!, Buru the Gorger, "", "", Healer2, "", 0, 0, "", 0, 1395, nil, 0, false, false, false, false, 0
		ShowAnnounce: Pursue on Unknown
	[ 59.28] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000007, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
			Filtered: 1x SPELL_AURA_APPLIED at 61.12
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[ 71.39] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Dps3!, Buru the Gorger, "", "", Dps3, "", 0, 0, "", 0, 1402, nil, 0, false, false, false, false, 0
		ShowAnnounce: Pursue on Unknown
	[ 76.16] CHAT_MSG_MONSTER_EMOTE: %s sets eyes on Dps7!, Buru the Gorger, "", "", Dps7, "", 0, 0, "", 0, 1404, nil, 0, false, false, false, false, 0
		ShowAnnounce: Pursue on Unknown
	[ 91.04] SPELL_AURA_APPLIED: [->Healer1: Toxic Pool] "", nil, 0x0, Player-1-00000007, Healer1, 0x511, 1215421, Toxic Pool, 0, DEBUFF, 0
		AntiSpam: ToxicPool
		ShowSpecialWarning: Toxic Pool damage - move away
		PlaySound: VoicePack/watchfeet
	[100.15] ENCOUNTER_END: 721, Buru the Gorger, 185, 20, 1, 0
		EndCombat: ENCOUNTER_END
]]
