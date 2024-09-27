DBM.Test:Report[[
Test: SoD/BWL/Vaelastrasz/Normal/Kill
Mod:  DBM-Raids-Vanilla/Vaelastrasz

Findings:
	Unused event registration: CHAT_MSG_MONSTER_YELL
	Unused event registration: SPELL_AURA_APPLIED 18173 (Burning Adrenaline)
	Unused event registration: SPELL_AURA_REMOVED 18173 (Burning Adrenaline)
	Unused event registration: SPELL_CAST_SUCCESS 18173 (Burning Adrenaline)
	Announce for spell ID 18173 (Burning Adrenaline) is triggered by event SPELL_AURA_APPLIED 367987 (Burning Adrenaline)
	SpecialWarning for spell ID 18173 (Burning Adrenaline) is triggered by event SPELL_AURA_APPLIED 367987 (Burning Adrenaline)
	SpecialWarning for spell ID 18173 (Burning Adrenaline) is triggered by event SPELL_AURA_APPLIED_DOSE 367987 (Burning Adrenaline)
	Yell for spell ID 18173 (Burning Adrenaline) is triggered by event SPELL_AURA_APPLIED_DOSE 367987 (Burning Adrenaline)

Unused objects:
	[Timer] Burning Adrenaline, time=15.70, type=cd, spellId=18173
	[Timer] Combat starts, time=43.50, type=combat, spellId=<none>
	[Timer] Burning Adrenaline: %s, time=20.00, type=target, spellId=18173
	[Yell] %d, type=shortfade, spellId=18173

Timers:
	None

Announces:
	Burning Adrenaline on >%s<, type=target, spellId=18173, triggerDeltas = 21.22, 1.64, 11.32, 1.60, 11.31, 4.86, 16.18, 1.60, 12.93, 3.25, 9.76, 1.62, 9.72, 14.56
		[ 21.22] SPELL_AURA_APPLIED: [->Dps8: Burning Adrenaline] "", nil, 0x0, Player-1-00000012, Dps8, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 22.86] SPELL_AURA_APPLIED: [->Dps4: Burning Adrenaline] "", nil, 0x0, Player-1-00000006, Dps4, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 34.18] SPELL_AURA_APPLIED: [->Dps12: Burning Adrenaline] "", nil, 0x0, Player-1-00000017, Dps12, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 35.78] SPELL_AURA_APPLIED: [->Dps9: Burning Adrenaline] "", nil, 0x0, Player-1-00000014, Dps9, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 47.09] SPELL_AURA_APPLIED: [->Dps7: Burning Adrenaline] "", nil, 0x0, Player-1-00000011, Dps7, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 51.95] SPELL_AURA_APPLIED: [->Dps1: Burning Adrenaline] "", nil, 0x0, Player-1-00000003, Dps1, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 68.13] SPELL_AURA_APPLIED: [->Dps3: Burning Adrenaline] "", nil, 0x0, Player-1-00000005, Dps3, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 69.73] SPELL_AURA_APPLIED: [->Dps10: Burning Adrenaline] "", nil, 0x0, Player-1-00000015, Dps10, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 82.66] SPELL_AURA_APPLIED: [->Dps13: Burning Adrenaline] "", nil, 0x0, Player-1-00000018, Dps13, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 85.91] SPELL_AURA_APPLIED: [->Dps2: Burning Adrenaline] "", nil, 0x0, Player-1-00000004, Dps2, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 95.67] SPELL_AURA_APPLIED: [->Dps6: Burning Adrenaline] "", nil, 0x0, Player-1-00000010, Dps6, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[ 97.29] SPELL_AURA_APPLIED: [->Dps11: Burning Adrenaline] "", nil, 0x0, Player-1-00000016, Dps11, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[107.01] SPELL_AURA_APPLIED: [->Healer3: Burning Adrenaline] "", nil, 0x0, Player-1-00000007, Healer3, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		[121.57] SPELL_AURA_APPLIED: [->Healer1: Burning Adrenaline] "", nil, 0x0, Player-1-00000001, Healer1, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
	Casting Flame Breath: 2.0 sec, type=cast, spellId=23461, triggerDeltas = 3.42, 6.49, 6.46, 8.09, 6.48, 9.66, 8.09, 9.73, 6.45, 6.49, 6.46, 9.72, 12.98, 9.71, 8.11
		[  3.42] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
			 Triggered 15x, delta times: 3.42, 6.49, 6.46, 8.09, 6.48, 9.66, 8.09, 9.73, 6.45, 6.49, 6.46, 9.72, 12.98, 9.71, 8.11

Special warnings:
	Burning Adrenaline - move away from others, type=moveaway, spellId=18173, triggerDeltas = 41.17, 9.99, 9.99
		[ 41.17] SPELL_AURA_APPLIED_DOSE: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 15, 0
			 Triggered 3x, delta times: 41.17, 9.99, 9.99
	Burning Adrenaline on you, type=you, spellId=18173, triggerDeltas = 13.17
		[ 13.17] SPELL_AURA_APPLIED: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 0

Yells:
	Burning Adrenaline on PlayerName, type=yell, spellId=18173
		[ 41.17] SPELL_AURA_APPLIED_DOSE: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 15, 0
			 Triggered 3x, delta times: 41.17, 9.99, 9.99

Voice pack sounds:
	VoicePack/runout
		[ 41.17] SPELL_AURA_APPLIED_DOSE: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 15, 0
			 Triggered 3x, delta times: 41.17, 9.99, 9.99
	VoicePack/targetyou
		[ 13.17] SPELL_AURA_APPLIED: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 0

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, CHAT_MSG_MONSTER_YELL
	[  0.00] ENCOUNTER_START: 611, Vaelastrasz the Corrupt, 186, 40, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 23461, SPELL_CAST_SUCCESS 18173, SPELL_AURA_APPLIED 18173 367987, SPELL_AURA_APPLIED_DOSE 367987, SPELL_AURA_REMOVED 18173
	[  3.42] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[  9.91] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 13.17] SPELL_AURA_APPLIED: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowSpecialWarning: Burning Adrenaline on you
		PlaySound: VoicePack/targetyou
	[ 16.37] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 21.22] SPELL_AURA_APPLIED: [->Dps8: Burning Adrenaline] "", nil, 0x0, Player-1-00000012, Dps8, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps8
	[ 22.86] SPELL_AURA_APPLIED: [->Dps4: Burning Adrenaline] "", nil, 0x0, Player-1-00000006, Dps4, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps4
	[ 24.46] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 30.94] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 34.18] SPELL_AURA_APPLIED: [->Dps12: Burning Adrenaline] "", nil, 0x0, Player-1-00000017, Dps12, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps12
	[ 35.78] SPELL_AURA_APPLIED: [->Dps9: Burning Adrenaline] "", nil, 0x0, Player-1-00000014, Dps9, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps9
	[ 40.60] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 41.17] SPELL_AURA_APPLIED_DOSE: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 15, 0
		ShowSpecialWarning: Burning Adrenaline - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Burning Adrenaline on PlayerName
	[ 47.09] SPELL_AURA_APPLIED: [->Dps7: Burning Adrenaline] "", nil, 0x0, Player-1-00000011, Dps7, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps7
	[ 48.69] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 51.16] SPELL_AURA_APPLIED_DOSE: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 20, 0
		ShowSpecialWarning: Burning Adrenaline - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Burning Adrenaline on PlayerName
	[ 51.95] SPELL_AURA_APPLIED: [->Dps1: Burning Adrenaline] "", nil, 0x0, Player-1-00000003, Dps1, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps1
	[ 58.42] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 61.15] SPELL_AURA_APPLIED_DOSE: [->Tank1: Burning Adrenaline] "", nil, 0x0, Player-1-00000013, Tank1, 0x511, 367987, Burning Adrenaline, 0, DEBUFF, 25, 0
		ShowSpecialWarning: Burning Adrenaline - move away from others
		PlaySound: VoicePack/runout
		ShowYell: Burning Adrenaline on PlayerName
	[ 64.87] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 68.13] SPELL_AURA_APPLIED: [->Dps3: Burning Adrenaline] "", nil, 0x0, Player-1-00000005, Dps3, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps3
	[ 69.73] SPELL_AURA_APPLIED: [->Dps10: Burning Adrenaline] "", nil, 0x0, Player-1-00000015, Dps10, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps10
	[ 71.36] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 77.82] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 82.66] SPELL_AURA_APPLIED: [->Dps13: Burning Adrenaline] "", nil, 0x0, Player-1-00000018, Dps13, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps13
	[ 85.91] SPELL_AURA_APPLIED: [->Dps2: Burning Adrenaline] "", nil, 0x0, Player-1-00000004, Dps2, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps2
	[ 87.54] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[ 95.67] SPELL_AURA_APPLIED: [->Dps6: Burning Adrenaline] "", nil, 0x0, Player-1-00000010, Dps6, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps6
	[ 97.29] SPELL_AURA_APPLIED: [->Dps11: Burning Adrenaline] "", nil, 0x0, Player-1-00000016, Dps11, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Dps11
	[100.52] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[107.01] SPELL_AURA_APPLIED: [->Healer3: Burning Adrenaline] "", nil, 0x0, Player-1-00000007, Healer3, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Healer3
	[110.23] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[118.34] SPELL_CAST_START: [Vaelastrasz the Corrupt: Flame Breath] Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, "", nil, 0x0, 23461, Flame Breath, 0, 0
		ShowAnnounce: Casting Flame Breath: 2.0 sec
	[121.57] SPELL_AURA_APPLIED: [->Healer1: Burning Adrenaline] "", nil, 0x0, Player-1-00000001, Healer1, 0x512, 367987, Burning Adrenaline, 0, DEBUFF, 0
		ShowAnnounce: Burning Adrenaline on Healer1
	[123.44] UNIT_DIED: [->Vaelastrasz the Corrupt] "", nil, 0x0, Creature-0-1-469-1-13020-0000000001, Vaelastrasz the Corrupt, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 18173
]]
