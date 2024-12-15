DBM.Test:Report[[
Test: SoD/AQ20/Rajaxx/Hardmode
Mod:  DBM-Raids-Vanilla/Rajaxx

Findings:
	None

Unused objects:
	[Special Warning] Attack Order on you, type=you, spellId=25471
	[Timer] Combat starts, time=30.00, type=combat, spellId=<none>
	[Yell] Attack Order on PlayerName, type=yell, spellId=25471

Timers:
	Exploding Ghosts, time=30.00, type=cd, spellId=<none>, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger
	Attack Order: %s, time=10.00, type=target, spellId=25471, triggerDeltas = 69.97
		[ 69.97] SPELL_AURA_APPLIED: [Captain Tuubid->Kaldorei Elite: Attack Order] Creature-0-1-509-1-15392-0000000001, Captain Tuubid, 0xa48, Creature-0-1-509-1-15473-0000000209, Kaldorei Elite, 0xa48, 25471, Attack Order, 0, DEBUFF, 0
	Lightning Cloud ends, time=15.00, type=active, spellId=26550, triggerDeltas = 125.02, 21.05
		[125.02] SPELL_CAST_SUCCESS: [Captain Drenn: Lightning Cloud] Creature-0-1-509-1-15389-0000000001, Captain Drenn, 0xa48, "", nil, 0x0, 26550, Lightning Cloud, 0, 0
			 Triggered 2x, delta times: 125.02, 21.05

Announces:
	Wave %s, type=nil, spellId=<none>, triggerDeltas = 102.73, 46.37, 61.07, 63.29, 67.41, 58.20
		[102.73] CHAT_MSG_MONSTER_YELL: The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!, General Rajaxx, "", "", "", "", 0, 0, "", 0, 947, nil, 0, false, false, false, false, 0
		[149.10] CHAT_MSG_MONSTER_YELL: No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!\r\n, General Rajaxx, "", "", "", "", 0, 0, "", 0, 977, nil, 0, false, false, false, false, 0
		[210.17] CHAT_MSG_MONSTER_YELL: Fear is for the enemy! Fear and death!, General Rajaxx, "", "", "", "", 0, 0, "", 0, 1005, nil, 0, false, false, false, false, 0
		[273.46] CHAT_MSG_MONSTER_YELL: Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!\r\n, General Rajaxx, "", "", "", "", 0, 0, "", 0, 1028, nil, 0, false, false, false, false, 0
		[340.87] CHAT_MSG_MONSTER_YELL: Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!\r\n, General Rajaxx, "", "", "", "", 0, 0, "", 0, 1061, nil, 0, false, false, false, false, 0
		[399.07] CHAT_MSG_MONSTER_YELL: Impudent fool! I will kill you myself!, General Rajaxx, "", "", "", "", 0, 0, "", 0, 1084, nil, 0, false, false, false, false, 0
	Attack Order on >%s<, type=target, spellId=25471, triggerDeltas = 69.97
		[ 69.97] SPELL_AURA_APPLIED: [Captain Tuubid->Kaldorei Elite: Attack Order] Creature-0-1-509-1-15392-0000000001, Captain Tuubid, 0xa48, Creature-0-1-509-1-15473-0000000209, Kaldorei Elite, 0xa48, 25471, Attack Order, 0, DEBUFF, 0
	Thundercrash, type=spell, spellId=25599, triggerDeltas = 410.37, 24.33, 21.05
		[410.37] SPELL_CAST_SUCCESS: [General Rajaxx: Thundercrash] Creature-0-1-509-1-15341-0000000001, General Rajaxx, 0xa48, "", nil, 0x0, 25599, Thundercrash, 0, 0
			 Triggered 3x, delta times: 410.37, 24.33, 21.05
	Lightning Cloud, type=spell, spellId=26550, triggerDeltas = 125.02, 21.05
		[125.02] SPELL_CAST_SUCCESS: [Captain Drenn: Lightning Cloud] Creature-0-1-509-1-15389-0000000001, Captain Drenn, 0xa48, "", nil, 0x0, 26550, Lightning Cloud, 0, 0
			 Triggered 2x, delta times: 125.02, 21.05

Special warnings:
	Exploding ghosts - dodge, type=nil, spellId=<none>, triggerDeltas = 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00
		Unknown trigger

Yells:
	None

Voice pack sounds:
	VoicePack/ghostsoon
		Unknown trigger

Icons:
	None

Event trace:
	[  0.00] ADDON_LOADED: DBM-Raids-Vanilla, 0
		RegisterEvents: Regular, SPELL_AURA_APPLIED 25471, SPELL_CAST_SUCCESS 26550 25599, CHAT_MSG_MONSTER_YELL
	[  0.00] ENCOUNTER_START: 719, General Rajaxx, 185, 20, 0
		StartCombat: ENCOUNTER_START
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[ 69.97] SPELL_AURA_APPLIED: [Captain Tuubid->Kaldorei Elite: Attack Order] Creature-0-1-509-1-15392-0000000001, Captain Tuubid, 0xa48, Creature-0-1-509-1-15473-0000000209, Kaldorei Elite, 0xa48, 25471, Attack Order, 0, DEBUFF, 0
		StartTimer: 10.0, Attack Order: Kaldorei Elite
		ShowAnnounce: Attack Order on Kaldorei Elite
	[102.73] CHAT_MSG_MONSTER_YELL: The time of our retribution is at hand! Let darkness reign in the hearts of our enemies!, General Rajaxx, "", "", "", "", 0, 0, "", 0, 947, nil, 0, false, false, false, false, 0
		ShowAnnounce: Wave 3
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[125.02] SPELL_CAST_SUCCESS: [Captain Drenn: Lightning Cloud] Creature-0-1-509-1-15389-0000000001, Captain Drenn, 0xa48, "", nil, 0x0, 26550, Lightning Cloud, 0, 0
		ShowAnnounce: Lightning Cloud
		StartTimer: 15.0, Lightning Cloud ends
	[146.07] SPELL_CAST_SUCCESS: [Captain Drenn: Lightning Cloud] Creature-0-1-509-1-15389-0000000001, Captain Drenn, 0xa48, "", nil, 0x0, 26550, Lightning Cloud, 0, 0
		ShowAnnounce: Lightning Cloud
		StartTimer: 15.0, Lightning Cloud ends
	[149.10] CHAT_MSG_MONSTER_YELL: No longer will we wait behind barred doors and walls of stone! No longer will our vengeance be denied! The dragons themselves will tremble before our wrath!\r\n, General Rajaxx, "", "", "", "", 0, 0, "", 0, 977, nil, 0, false, false, false, false, 0
		ShowAnnounce: Wave 4
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[210.17] CHAT_MSG_MONSTER_YELL: Fear is for the enemy! Fear and death!, General Rajaxx, "", "", "", "", 0, 0, "", 0, 1005, nil, 0, false, false, false, false, 0
		ShowAnnounce: Wave 5
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[273.46] CHAT_MSG_MONSTER_YELL: Staghelm will whimper and beg for his life, just as his whelp of a son did! One thousand years of injustice will end this day!\r\n, General Rajaxx, "", "", "", "", 0, 0, "", 0, 1028, nil, 0, false, false, false, false, 0
		ShowAnnounce: Wave 6
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[340.87] CHAT_MSG_MONSTER_YELL: Fandral! Your time has come! Go and hide in the Emerald Dream and pray we never find you!\r\n, General Rajaxx, "", "", "", "", 0, 0, "", 0, 1061, nil, 0, false, false, false, false, 0
		ShowAnnounce: Wave 7
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[399.07] CHAT_MSG_MONSTER_YELL: Impudent fool! I will kill you myself!, General Rajaxx, "", "", "", "", 0, 0, "", 0, 1084, nil, 0, false, false, false, false, 0
		ShowAnnounce: Wave 8
	[410.37] SPELL_CAST_SUCCESS: [General Rajaxx: Thundercrash] Creature-0-1-509-1-15341-0000000001, General Rajaxx, 0xa48, "", nil, 0x0, 25599, Thundercrash, 0, 0
		ShowAnnounce: Thundercrash
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[434.70] SPELL_CAST_SUCCESS: [General Rajaxx: Thundercrash] Creature-0-1-509-1-15341-0000000001, General Rajaxx, 0xa48, "", nil, 0x0, 25599, Thundercrash, 0, 0
		ShowAnnounce: Thundercrash
	Unknown trigger
		ShowSpecialWarning: Exploding ghosts - dodge
		PlaySound: VoicePack/ghostsoon
		StartTimer: 30.0, Exploding Ghosts
	[455.75] SPELL_CAST_SUCCESS: [General Rajaxx: Thundercrash] Creature-0-1-509-1-15341-0000000001, General Rajaxx, 0xa48, "", nil, 0x0, 25599, Thundercrash, 0, 0
		ShowAnnounce: Thundercrash
	[461.82] UNIT_DIED: [->General Rajaxx] "", nil, 0x0, Creature-0-1-509-1-15341-0000000001, General Rajaxx, 0xa48, -1, false, 0, 0
		EndCombat: Main CID Down
]]
