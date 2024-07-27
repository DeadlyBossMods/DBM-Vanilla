DBM.Test:Report[[
Test: SoD/MC/Geddon/Heat-1/Wipe
Mod:  DBM-Raids-Vanilla/Geddon

Findings:
	Unused event registration: SPELL_AURA_APPLIED 20475 (Living Bomb)
	Unused event registration: SPELL_AURA_APPLIED 461105 (Living Bomb)
	Unused event registration: SPELL_AURA_APPLIED 462402 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 20475 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 461105 (Living Bomb)
	Unused event registration: SPELL_AURA_REMOVED 462402 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 19695 (Inferno)
	Unused event registration: SPELL_CAST_SUCCESS 20475 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 20478 (Armageddon)
	Unused event registration: SPELL_CAST_SUCCESS 461105 (Living Bomb)
	Unused event registration: SPELL_CAST_SUCCESS 461110 (Inferno)
	Unused event registration: SPELL_CAST_SUCCESS 462402 (Living Bomb)
	Unused event registration: SPELL_DAMAGE 19698 (Inferno)
	Unused event registration: SPELL_MISSED 19698 (Inferno)
	SpecialWarning for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	Timer for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	Timer for spell ID 20475 (Living Bomb) is triggered by event SPELL_CAST_SUCCESS 461090 (Living Bomb)
	Yell for spell ID 20475 (Living Bomb) is triggered by event SPELL_AURA_APPLIED 461090 (Living Bomb)
	Announce for spell ID 20478 (Armageddon) is triggered by event SPELL_CAST_SUCCESS 461121 (Armageddon)
	Timer for spell ID 20478 (Armageddon) is triggered by event SPELL_CAST_SUCCESS 461121 (Armageddon)

Unused objects:
	[Announce] Inferno, type=spell, spellId=19695
	[Special Warning] Inferno - run away, type=run, spellId=19695
	[Special Warning] %s damage - move away, type=gtfo, spellId=19698
	[Timer] Inferno ends, time=8.00, type=active, spellId=19695
	[Timer] Inferno, time=21.00, type=cd, spellId=19695

Timers:
	Ignite Mana, time=27.00, type=cd, spellId=19659, triggerDeltas = 7.96, 30.74, 35.60, 32.41, 34.01
		[  7.96] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
			 Triggered 5x, delta times: 7.96, 30.74, 35.60, 32.41, 34.01
	Living Bomb, time=13.30, type=cd, spellId=20475, triggerDeltas = 0.00, 14.41, 14.58, 11.33, 25.89, 16.19, 17.83, 19.44, 17.80, 13.01, 11.34
		[  0.00] ENCOUNTER_START: 668, Baron Geddon, 226, 20, 0
		[ 14.41] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
			 Triggered 10x, delta times: 14.41, 14.58, 11.33, 25.89, 16.19, 17.83, 19.44, 17.80, 13.01, 11.34
	Living Bomb: %s, time=8.00, type=target, spellId=20475, triggerDeltas = 14.43, 0.00, 14.56, 0.00, 11.33, 0.00, 25.89, 0.00, 16.20, 0.00, 17.82, 0.00, 19.44, 0.01, 17.79, 0.00, 13.01, 0.00, 11.34, 0.00
		[ 14.43] SPELL_AURA_APPLIED: [Baron Geddon->Obile: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 14.43, 105.25
		[ 14.43] SPELL_AURA_APPLIED: [Baron Geddon->Zugzugmedumb: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 22.42] SPELL_AURA_REMOVED: [Baron Geddon->Obile: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 22.42, 105.27
		[ 28.99] SPELL_AURA_APPLIED: [Baron Geddon->Bruzo: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 28.99, 121.49
		[ 28.99] SPELL_AURA_APPLIED: [Baron Geddon->Divertikel: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 36.98] SPELL_AURA_REMOVED: [Baron Geddon->Divertikel: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 36.98] SPELL_AURA_REMOVED: [Baron Geddon->Bruzo: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 36.98, 121.49
		[ 40.32] SPELL_AURA_APPLIED: [Baron Geddon->Skarpetki: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 40.32] SPELL_AURA_APPLIED: [Baron Geddon->Simplyorc: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 48.33] SPELL_AURA_REMOVED: [Baron Geddon->Simplyorc: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 48.33] SPELL_AURA_REMOVED: [Baron Geddon->Skarpetki: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.21, 34.02
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Switchlawles: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 74.21] SPELL_AURA_REMOVED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		[ 74.21] SPELL_AURA_REMOVED: [Baron Geddon->Switchlawles: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 82.41] SPELL_AURA_APPLIED: [Baron Geddon->Luschimage: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 82.41] SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 82.41, 55.06, 24.35
		[ 90.41] SPELL_AURA_REMOVED: [Baron Geddon->Luschimage: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 90.41] SPELL_AURA_REMOVED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 90.41, 55.08, 24.34
		[100.23] SPELL_AURA_APPLIED: [Baron Geddon->Glassy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[119.67] SPELL_AURA_APPLIED: [Baron Geddon->Mafakacoil: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[127.69] SPELL_AURA_REMOVED: [Baron Geddon->Mafakacoil: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[137.47] SPELL_AURA_APPLIED: [Baron Geddon->Arthritîs: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[145.49] SPELL_AURA_REMOVED: [Baron Geddon->Arthritîs: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[150.48] SPELL_AURA_APPLIED: [Baron Geddon->Hàger: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[158.47] SPELL_AURA_REMOVED: [Baron Geddon->Hàger: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[161.82] SPELL_AURA_APPLIED: [Baron Geddon->Hantha: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDCB72, Hantha, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[169.83] SPELL_AURA_REMOVED: [Baron Geddon->Hantha: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDCB72, Hantha, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
	Armageddon, time=8.00, type=cast, spellId=20478, triggerDeltas = 165.06
		[165.06] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0

Announces:
	Living Bomb on >%s<, type=target, spellId=20475, triggerDeltas = 14.53, 14.56, 11.33, 25.89, 16.20, 17.82, 19.45, 17.79, 13.01, 11.34
		[ 14.53] Scheduled at 14.43 by SPELL_AURA_APPLIED: [Baron Geddon->Zugzugmedumb: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 29.09] Scheduled at 28.99 by SPELL_AURA_APPLIED: [Baron Geddon->Divertikel: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 40.42] Scheduled at 40.32 by SPELL_AURA_APPLIED: [Baron Geddon->Simplyorc: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 66.31] Scheduled at 66.21 by SPELL_AURA_APPLIED: [Baron Geddon->Switchlawles: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[ 82.51] Scheduled at 82.41 by SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[100.33] Scheduled at 100.23 by SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		[119.78] Scheduled at 119.68 by SPELL_AURA_APPLIED: [Baron Geddon->Obile: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[137.57] Scheduled at 137.47 by SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[150.58] Scheduled at 150.48 by SPELL_AURA_APPLIED: [Baron Geddon->Hàger: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		[161.92] Scheduled at 161.82 by SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
	Armageddon, type=spell, spellId=20478, triggerDeltas = 165.06
		[165.06] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0

Special warnings:
	Ignite Mana on >%s< - dispel now, type=dispel, spellId=19659, triggerDeltas = 8.26, 30.75, 35.61, 32.39, 34.01
		[  8.26] Scheduled at 7.96 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 39.01] Scheduled at 38.71 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 74.62] Scheduled at 74.32 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[107.01] Scheduled at 106.71 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[141.02] Scheduled at 140.72 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
	Living Bomb on you, type=you, spellId=20475, triggerDeltas = 66.21, 34.02
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.21, 34.02

Yells:
	%d, type=shortfade, spellId=20475
		[ 71.21] Scheduled at 66.21 by SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 71.21, 1.00, 1.00
		[105.23] Scheduled at 100.23 by SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 3x, delta times: 105.23, 1.00, 1.00
	Living Bomb on PlayerName, type=yell, spellId=20475
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.21, 34.02

Voice pack sounds:
	VoicePack/helpdispel
		[  8.26] Scheduled at 7.96 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 39.01] Scheduled at 38.71 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[ 74.62] Scheduled at 74.32 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[107.01] Scheduled at 106.71 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		[141.02] Scheduled at 140.72 by SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
	VoicePack/runout
		[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
			 Triggered 2x, delta times: 66.21, 34.02

Icons:
	None

Event trace:
	[  0.00] ENCOUNTER_START: 668, Baron Geddon, 226, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_AURA_APPLIED 20475 19659 461090 461105 462402, SPELL_AURA_REMOVED 20475 461090 461105 462402, SPELL_CAST_SUCCESS 19695 19659 20478 20475 461090 461105 462402 461110 461121
		StartTimer: 11.0, Living Bomb
		RegisterEvents: ShortTerm, SPELL_DAMAGE 19698, SPELL_MISSED 19698
		RegisterEvents: Regular, SPELL_DAMAGE 19698, SPELL_MISSED 19698
	[  7.96] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Skarpetki: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Glassy: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Bruzo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Knüppelkeule: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Mafakacoil: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Zred: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026A3C71, Zred, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Switchlawles: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Zugzugmedumb: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Izikkryz: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Pet-0-5210-409-2703-213450-0600A79486, Izikkryz, 0x1112, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Obile: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Simplyorc: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Hàger: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Arthritîs: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Luschimage: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Asamalar: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02352FF4, Asamalar, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Azki: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0271AC22, Azki, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 7.96
	[  7.96] SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Cattivo") at 8.26 (+0.30)
			ShowSpecialWarning: Ignite Mana on Skarpetki, Glassy, Bruzo, Knüppelkeule, Mafakacoil, Zred and 13 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 7.96
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 8.26 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 14.41] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 14.43] SPELL_AURA_APPLIED: [Baron Geddon->Obile: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Obile
	[ 14.43] SPELL_AURA_APPLIED: [Baron Geddon->Zugzugmedumb: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Zugzugmedumb
		ScheduleTask: announce20475target:CombinedShow("Zugzugmedumb") at 14.53 (+0.10)
			ShowAnnounce: Living Bomb on Obile, Zugzugmedumb
	[ 22.42] SPELL_AURA_REMOVED: [Baron Geddon->Obile: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tObile
	[ 28.99] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 28.99] SPELL_AURA_APPLIED: [Baron Geddon->Bruzo: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Bruzo
	[ 28.99] SPELL_AURA_APPLIED: [Baron Geddon->Divertikel: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Divertikel
		ScheduleTask: announce20475target:CombinedShow("Divertikel") at 29.09 (+0.10)
			ShowAnnounce: Living Bomb on Bruzo, Divertikel
	[ 36.98] SPELL_AURA_REMOVED: [Baron Geddon->Divertikel: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tDivertikel
	[ 36.98] SPELL_AURA_REMOVED: [Baron Geddon->Bruzo: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tBruzo
	[ 38.70] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Mafakacoil: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Obile: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Hantha: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDCB72, Hantha, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Bruzo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Knüppelkeule: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Hàger: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Arthritîs: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Luschimage: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Asamalar: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02352FF4, Asamalar, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Switchlawles: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 38.71
	[ 38.71] SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Cattivo") at 39.01 (+0.30)
			ShowSpecialWarning: Ignite Mana on Mafakacoil, Obile, Hantha, Bruzo, Knüppelkeule, Moobie and 7 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 38.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 39.01 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 40.32] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 40.32] SPELL_AURA_APPLIED: [Baron Geddon->Skarpetki: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Skarpetki
	[ 40.32] SPELL_AURA_APPLIED: [Baron Geddon->Simplyorc: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Simplyorc
		ScheduleTask: announce20475target:CombinedShow("Simplyorc") at 40.42 (+0.10)
			ShowAnnounce: Living Bomb on Skarpetki, Simplyorc
	[ 48.33] SPELL_AURA_REMOVED: [Baron Geddon->Simplyorc: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tSimplyorc
	[ 48.33] SPELL_AURA_REMOVED: [Baron Geddon->Skarpetki: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tSkarpetki
	[ 66.21] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Moobie
		ShowSpecialWarning: Living Bomb on you
		PlaySound: VoicePack/runout
		ShowYell: Living Bomb on PlayerName
		ScheduleTask: yell20475shortfade:ScheduleCountdown(1.0) at 73.21 (+7.00)
			ShowYell: 1
		ScheduleTask: yell20475shortfade:ScheduleCountdown(2.0) at 72.21 (+6.00)
			ShowYell: 2
		ScheduleTask: yell20475shortfade:ScheduleCountdown(3.0) at 71.21 (+5.00)
			ShowYell: 3
	[ 66.21] SPELL_AURA_APPLIED: [Baron Geddon->Switchlawles: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Switchlawles
		ScheduleTask: announce20475target:CombinedShow("Switchlawles") at 66.31 (+0.10)
			ShowAnnounce: Living Bomb on PlayerName, Switchlawles
	[ 74.21] SPELL_AURA_REMOVED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tMoobie
	[ 74.21] SPELL_AURA_REMOVED: [Baron Geddon->Switchlawles: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tSwitchlawles
	[ 74.30] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Skarpetki: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.31
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Obile: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.31
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Hantha: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDCB72, Hantha, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.31
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Knüppelkeule: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.31
	[ 74.31] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.61 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Hàger: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.31
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Arthritîs: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Luschimage: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Asamalar: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02352FF4, Asamalar, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Divertikel: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Switchlawles: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-026C7869, Switchlawles, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Azki: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0271AC22, Azki, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Zugzugmedumb: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-028F8C05, Zugzugmedumb, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 74.32
	[ 74.32] SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Cattivo") at 74.62 (+0.30)
			ShowSpecialWarning: Ignite Mana on Skarpetki, Obile, Hantha, Knüppelkeule, Moobie, Hàger and 9 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 74.32
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 74.62 (+0.30)
			PlaySound: VoicePack/helpdispel
	[ 82.40] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[ 82.41] SPELL_AURA_APPLIED: [Baron Geddon->Luschimage: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Luschimage
	[ 82.41] SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Huntsomeguy
		ScheduleTask: announce20475target:CombinedShow("Huntsomeguy") at 82.51 (+0.10)
			ShowAnnounce: Living Bomb on Luschimage, Huntsomeguy
	[ 90.41] SPELL_AURA_REMOVED: [Baron Geddon->Luschimage: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022F30B2, Luschimage, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tLuschimage
	[ 90.41] SPELL_AURA_REMOVED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHuntsomeguy
	[100.23] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[100.23] SPELL_AURA_APPLIED: [Baron Geddon->Glassy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FA1F88, Glassy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Glassy
	[100.23] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Moobie
		ShowSpecialWarning: Living Bomb on you
		PlaySound: VoicePack/runout
		ShowYell: Living Bomb on PlayerName
		ScheduleTask: yell20475shortfade:ScheduleCountdown(1.0) at 107.23 (+7.00)
			ShowYell: 1
		ScheduleTask: yell20475shortfade:ScheduleCountdown(2.0) at 106.23 (+6.00)
			ShowYell: 2
		ScheduleTask: yell20475shortfade:ScheduleCountdown(3.0) at 105.23 (+5.00)
			ShowYell: 3
		ScheduleTask: announce20475target:CombinedShow("PlayerName") at 100.33 (+0.10)
			ShowAnnounce: Living Bomb on Glassy, PlayerName
	[106.71] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Skarpetki: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Bruzo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Simplyorc: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Knüppelkeule: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Hàger: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Arthritîs: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Asamalar: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02352FF4, Asamalar, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Divertikel: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Azki: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0271AC22, Azki, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 106.71
	[106.71] SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Cattivo") at 107.01 (+0.30)
			ShowSpecialWarning: Ignite Mana on Skarpetki, Bruzo, Simplyorc, Knüppelkeule, Moobie, Hàger and 6 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 106.71
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 107.01 (+0.30)
			PlaySound: VoicePack/helpdispel
	[119.67] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[119.67] SPELL_AURA_APPLIED: [Baron Geddon->Mafakacoil: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Mafakacoil
	[119.68] SPELL_AURA_APPLIED: [Baron Geddon->Obile: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Obile
		ScheduleTask: announce20475target:CombinedShow("Obile") at 119.78 (+0.10)
			ShowAnnounce: Living Bomb on Mafakacoil, Obile
	[127.69] SPELL_AURA_REMOVED: [Baron Geddon->Mafakacoil: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tMafakacoil
	[127.69] SPELL_AURA_REMOVED: [Baron Geddon->Obile: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tObile
	[137.47] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[137.47] SPELL_AURA_APPLIED: [Baron Geddon->Arthritîs: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Arthritîs
	[137.47] SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Huntsomeguy
		ScheduleTask: announce20475target:CombinedShow("Huntsomeguy") at 137.57 (+0.10)
			ShowAnnounce: Living Bomb on Arthritîs, Huntsomeguy
	[140.72] SPELL_CAST_SUCCESS: [Baron Geddon: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 19659, Ignite Mana, 0, 0
		StartTimer: 27.0, Ignite Mana
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Mafakacoil: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Skarpetki: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01F9B52C, Skarpetki, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Obile: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDA26E, Obile, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Bruzo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Simplyorc: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0201D763, Simplyorc, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Knüppelkeule: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0207C3F7, Knüppelkeule, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Tandanu: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-020CBDBB, Tandanu, 0x511, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Hàger: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Arthritîs: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Asamalar: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02352FF4, Asamalar, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Divertikel: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0246F3ED, Divertikel, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Azki: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0271AC22, Azki, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			Unscheduled by SPELL_AURA_APPLIED at 140.72
	[140.72] SPELL_AURA_APPLIED: [Baron Geddon->Cattivo: Ignite Mana] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0293FE88, Cattivo, 0x512, 19659, Ignite Mana, 0, DEBUFF, 0
		ScheduleTask: specWarn19659dispel:CombinedShow("Cattivo") at 141.02 (+0.30)
			ShowSpecialWarning: Ignite Mana on Mafakacoil, Skarpetki, Obile, Bruzo, Simplyorc, Knüppelkeule and 7 others - dispel now
		UnscheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") scheduled by ScheduleTask at 140.72
		ScheduleTask: specWarn19659dispel:ScheduleVoice("helpdispel") at 141.02 (+0.30)
			PlaySound: VoicePack/helpdispel
	[145.49] SPELL_AURA_REMOVED: [Baron Geddon->Arthritîs: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02233DFA, Arthritîs, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tArthritîs
	[145.49] SPELL_AURA_REMOVED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHuntsomeguy
	[150.48] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[150.48] SPELL_AURA_APPLIED: [Baron Geddon->Bruzo: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Bruzo
	[150.48] SPELL_AURA_APPLIED: [Baron Geddon->Hàger: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Hàger
		ScheduleTask: announce20475target:CombinedShow("Hàger") at 150.58 (+0.10)
			ShowAnnounce: Living Bomb on Bruzo, Hàger
	[158.47] SPELL_AURA_REMOVED: [Baron Geddon->Bruzo: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tBruzo
	[158.47] SPELL_AURA_REMOVED: [Baron Geddon->Hàger: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-022114E6, Hàger, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHàger
	[161.82] SPELL_CAST_SUCCESS: [Baron Geddon: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461090, Living Bomb, 0, 0
		StartTimer: 13.3, Living Bomb
	[161.82] SPELL_AURA_APPLIED: [Baron Geddon->Hantha: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDCB72, Hantha, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Hantha
	[161.82] SPELL_AURA_APPLIED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StartTimer: 8.0, Living Bomb: Huntsomeguy
		ScheduleTask: announce20475target:CombinedShow("Huntsomeguy") at 161.92 (+0.10)
			ShowAnnounce: Living Bomb on Hantha, Huntsomeguy
	[165.06] SPELL_CAST_SUCCESS: [Baron Geddon: Armageddon] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, "", nil, 0x0, 461121, Armageddon, 0, 0
		ShowAnnounce: Armageddon
		StartTimer: 8.0, Armageddon
	[169.83] SPELL_AURA_REMOVED: [Baron Geddon->Hantha: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-01FDCB72, Hantha, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHantha
	[169.83] SPELL_AURA_REMOVED: [Baron Geddon->Huntsomeguy: Living Bomb] Creature-0-5210-409-2703-228433-000023F89A, Baron Geddon, 0xa48, Player-5826-0258306E, Huntsomeguy, 0x512, 461090, Living Bomb, 0, DEBUFF, 0
		StopTimer: Timer20475target\tHuntsomeguy
	[186.11] ENCOUNTER_END: 668, Baron Geddon, 226, 20, 0, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 20475 461090 461105 462402
]]
