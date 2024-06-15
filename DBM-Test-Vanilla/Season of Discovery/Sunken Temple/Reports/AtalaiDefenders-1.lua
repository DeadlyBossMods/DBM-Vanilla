DBM.Test:Report[[
Test: SoD/ST/AtalaiDefenders/1
Mod:  DBM-Raids-Vanilla/AtalaiDefendersSoD

Findings:
	Unused event registration: SPELL_CAST_START 438339 (Healing Wave)
	Unused event registration: SPELL_CAST_START 438341 (Renew)
	Unused event registration: SPELL_CAST_SUCCESS 444961 (Summon Hukku)
	Unused event registration: SPELL_SUMMON 444961 (Summon Hukku)

Unused objects:
	[Special Warning] Healing Wave - interrupt >%s<!, type=interrupt, spellId=438339
	[Special Warning] Renew - interrupt >%s<!, type=interrupt, spellId=438341

Timers:
	Demoralizing Shout, time=22.80, type=cd, spellId=23511, triggerDeltas = 111.27, 16.10
		[111.27] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
		[127.37] SPELL_CAST_SUCCESS: [Loro: Summon Loro] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, "", nil, 0x0, 444960, Summon Loro, 0, 0
	Thorns ends, time=60.00, type=active, spellId=438294, triggerDeltas = 31.51
		[ 31.51] SPELL_AURA_APPLIED: [Mijan->Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, 438294, Thorns, 0, BUFF, 0
		[ 32.21] SPELL_AURA_REMOVED: [Mijan->Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, 438294, Thorns, 0, BUFF, 0

Announces:
	%s, type=stagechange, spellId=<none>, triggerDeltas = 20.15, 25.82, 25.32, 25.44, 30.64
		[ 20.15] SPELL_CAST_SUCCESS: [Gasher: Summon Gasher] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, "", nil, 0x0, 444747, Summon Gasher, 0, 0
		[ 45.97] SPELL_CAST_SUCCESS: [Mijan: Summon Mijan] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 444963, Summon Mijan, 0, 0
		[ 71.29] SPELL_CAST_SUCCESS: [Zolo: Summon Zolo] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 444964, Summon Zolo, 0, 0
		[ 96.73] SPELL_CAST_SUCCESS: [Zul'Lor: Summon Zul'Lor] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 444962, Summon Zul'Lor, 0, 0
		[127.37] SPELL_CAST_SUCCESS: [Loro: Summon Loro] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, "", nil, 0x0, 444960, Summon Loro, 0, 0
	Casting Demoralizing Shout: 2.5 sec, type=cast, spellId=23511, triggerDeltas = 111.27
		[111.27] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
	Thorns on >%s<, type=target, spellId=438294, triggerDeltas = 30.01
		[ 30.01] SPELL_CAST_START: [Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 438294, Thorns, 0, 0
	Healing Ward, type=spell, spellId=438335, triggerDeltas = 38.08, 63.10
		[ 38.08] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		[101.18] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5208-109-4570-221835-00003BD3BB, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
	Fervor faded, type=fades, spellId=445284, triggerDeltas = 21.83
		[ 21.83] SPELL_AURA_REMOVED: [Gasher->Gasher: Fervor] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 0
	Fervor on >%s< (%d), type=stack, spellId=445284, triggerDeltas = 10.79, 7.54
		[ 10.79] SPELL_AURA_APPLIED_DOSE: [Gasher->Gasher: Fervor] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 10, 0
			 Triggered 2x, delta times: 10.79, 7.54
	Spinning Axes, type=spell, spellId=445289, triggerDeltas = 10.14, 16.00
		[ 10.14] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
		[ 26.14] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5208-109-4570-221759-00003BD3A2, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
	Unstable Cask, type=spell, spellId=445940, triggerDeltas = 62.35
		[ 62.35] SPELL_CAST_SUCCESS: [Zolo->Mafakacoil: Unstable Cask] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 445940, Unstable Cask, 0, 0
	Shield Slam on >%s<, type=target, spellId=446354, triggerDeltas = 113.43, 8.80
		[113.43] SPELL_AURA_APPLIED: [Loro->Mafakacoil: Shield Slam] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
			 Triggered 2x, delta times: 113.43, 8.80
	Hukku's Guardians, type=spell, spellId=446360, triggerDeltas = 129.11
		[129.11] SPELL_CAST_SUCCESS: [Hukku: Hukku's Guardians] Creature-0-5208-109-4570-218922-00003BC782, Hukku, 0xa48, "", nil, 0x0, 446360, Hukku's Guardians, 0, 0
	Frailty, type=spell, spellId=446364, triggerDeltas = 82.58, 5.49, 14.63, 9.39, 21.04, 6.47
		[ 82.58] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
			 Triggered 2x, delta times: 82.58, 5.49
		[102.70] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
			 Triggered 4x, delta times: 102.70, 9.39, 21.04, 6.47
	Charge, type=spell, spellId=446369, triggerDeltas = 77.73, 17.45, 32.34, 8.86, 8.09
		[ 77.73] SPELL_CAST_SUCCESS: [Zul'Lor->Bruzo: Charge] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 446369, Charge, 0, 0
		[ 95.18] SPELL_CAST_SUCCESS: [Zul'Lor->Shelisea: Charge] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, Player-5826-0222D437, Shelisea, 0x512, 446369, Charge, 0, 0
		[127.52] SPELL_CAST_SUCCESS: [Zul'Lor->Stolzenburg: Charge] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, Player-5826-0244A0F3, Stolzenburg, 0x512, 446369, Charge, 0, 0
		[136.38] SPELL_CAST_SUCCESS: [Zul'Lor->Shelisea: Charge] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, Player-5826-0222D437, Shelisea, 0x512, 446369, Charge, 0, 0
		[144.47] SPELL_CAST_SUCCESS: [Zul'Lor->Gotchya: Charge] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, Player-5826-020EC278, Gotchya, 0x512, 446369, Charge, 0, 0

Special warnings:
	Thorns on >%s< - dispel now, type=dispel, spellId=438294, triggerDeltas = 31.51
		[ 31.51] SPELL_AURA_APPLIED: [Mijan->Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, 438294, Thorns, 0, BUFF, 0
	Thorns on >%s< - stop attacking, type=reflect, spellId=438294, triggerDeltas = 30.01
		[ 30.01] SPELL_CAST_START: [Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 438294, Thorns, 0, 0
	Atal'ai Serpent Totem - switch targets, type=switch, spellId=445912, triggerDeltas = 26.75
		[ 26.75] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
	Chain Lightning - interrupt >%s<!, type=interrupt, spellId=446338, triggerDeltas = 55.86, 87.01
		[ 55.86] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
		[142.87] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5208-109-4570-221836-00003BD3D5, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
	Atal'ai Skeleton Totem - switch targets, type=switch, spellId=446339, triggerDeltas = 59.11, 11.31
		[ 59.11] SPELL_CAST_SUCCESS: [Zolo: Atal'ai Skeleton Totem] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 446339, Atal'ai Skeleton Totem, 0, 0
			 Triggered 2x, delta times: 59.11, 11.31
	Shadow Bolt - interrupt >%s<!, type=interrupt, spellId=446361, triggerDeltas = 130.71, 3.23, 2.77, 10.20
		[130.71] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5208-109-4570-218922-00003BC782, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
			 Triggered 4x, delta times: 130.71, 3.23, 2.77, 10.20
	Corrupted Slam - dodge attack, type=dodge, spellId=446372, triggerDeltas = 78.13, 17.78, 10.93, 23.05, 6.51, 9.29
		[ 78.13] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
			 Triggered 2x, delta times: 78.13, 17.78
		[106.84] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
			 Triggered 4x, delta times: 106.84, 23.05, 6.51, 9.29

Yells:
	None

Voice pack sounds:
	VoicePack/attacktotem
		[ 59.11] SPELL_CAST_SUCCESS: [Zolo: Atal'ai Skeleton Totem] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 446339, Atal'ai Skeleton Totem, 0, 0
			 Triggered 2x, delta times: 59.11, 11.31
	VoicePack/dispelboss
		[ 31.51] SPELL_AURA_APPLIED: [Mijan->Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, 438294, Thorns, 0, BUFF, 0
	VoicePack/kickcast
		[ 55.86] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
		[130.71] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5208-109-4570-218922-00003BC782, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
			 Triggered 4x, delta times: 130.71, 3.23, 2.77, 10.20
		[142.87] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5208-109-4570-221836-00003BD3D5, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
	VoicePack/phasechange
		[ 20.15] SPELL_CAST_SUCCESS: [Gasher: Summon Gasher] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, "", nil, 0x0, 444747, Summon Gasher, 0, 0
		[ 45.97] SPELL_CAST_SUCCESS: [Mijan: Summon Mijan] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 444963, Summon Mijan, 0, 0
		[ 71.29] SPELL_CAST_SUCCESS: [Zolo: Summon Zolo] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 444964, Summon Zolo, 0, 0
		[ 96.73] SPELL_CAST_SUCCESS: [Zul'Lor: Summon Zul'Lor] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 444962, Summon Zul'Lor, 0, 0
		[127.37] SPELL_CAST_SUCCESS: [Loro: Summon Loro] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, "", nil, 0x0, 444960, Summon Loro, 0, 0
	VoicePack/stopattack
		[ 30.01] SPELL_CAST_START: [Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 438294, Thorns, 0, 0
	VoicePack/watchstep
		[ 78.13] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
			 Triggered 2x, delta times: 78.13, 17.78
		[106.84] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
			 Triggered 4x, delta times: 106.84, 23.05, 6.51, 9.29

Icons:
	Icon 1, target=Creature-0-5208-109-4570-221837-00003BD3EE, scanMethod=nil
		[ 96.76] SPELL_SUMMON: [Zul'Lor->Zul'Lor: Summon Zul'Lor] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, 444962, Summon Zul'Lor, 0, 0
	Icon 2, target=Creature-0-5208-109-4570-221835-00003BD3BB, scanMethod=nil
		[ 46.02] SPELL_SUMMON: [Mijan->Mijan: Summon Mijan] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, Creature-0-5208-109-4570-221835-00003BD3BB, Mijan, 0xa48, 444963, Summon Mijan, 0, 0
	Icon 3, target=Creature-0-5208-109-4570-221836-00003BD3D5, scanMethod=nil
		[ 71.34] SPELL_SUMMON: [Zolo->Zolo: Summon Zolo] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, Creature-0-5208-109-4570-221836-00003BD3D5, Zolo, 0xa48, 444964, Summon Zolo, 0, 0
	Icon 4, target=Creature-0-5208-109-4570-221759-00003BD3A2, scanMethod=nil
		[ 20.18] SPELL_SUMMON: [Gasher->Gasher: Summon Gasher] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, Creature-0-5208-109-4570-221759-00003BD3A2, Gasher, 0xa48, 444747, Summon Gasher, 0, 0
	Icon 5, target=Creature-0-5208-109-4570-221834-00003BD40D, scanMethod=nil
		[127.42] SPELL_SUMMON: [Loro->Loro: Summon Loro] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, Creature-0-5208-109-4570-221834-00003BD40D, Loro, 0xa48, 444960, Summon Loro, 0, 0

Event trace:
	[  0.00] ENCOUNTER_START: 2954, Atal'ai Defenders, 215, 20, 0
		StartCombat: ENCOUNTER_START
		RegisterEvents: Regular, SPELL_CAST_START 446372 438294 446338 438341 438339 23511 446361 438335, SPELL_CAST_SUCCESS 446364 446369 444962 445912 445940 446339 445289 444747 444960 444961 446360 444963 444964, SPELL_AURA_APPLIED 446354 438294, SPELL_AURA_APPLIED_DOSE 445284, SPELL_AURA_REMOVED 445284 438294, SPELL_SUMMON 444962 444963 444964 444747 444960 444961
	[ 10.14] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
		ShowAnnounce: Spinning Axes
	[ 10.79] SPELL_AURA_APPLIED_DOSE: [Gasher->Gasher: Fervor] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 10, 0
		ShowAnnounce: Fervor on Gasher (10)
	[ 18.33] SPELL_AURA_APPLIED_DOSE: [Gasher->Gasher: Fervor] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 20, 0
		ShowAnnounce: Fervor on Gasher (20)
	[ 20.15] SPELL_CAST_SUCCESS: [Gasher: Summon Gasher] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, "", nil, 0x0, 444747, Summon Gasher, 0, 0
		ShowAnnounce: Stage 2
		PlaySound: VoicePack/phasechange
	[ 20.18] SPELL_SUMMON: [Gasher->Gasher: Summon Gasher] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, Creature-0-5208-109-4570-221759-00003BD3A2, Gasher, 0xa48, 444747, Summon Gasher, 0, 0
		ScanForMobs: Creature-0-5208-109-4570-221759-00003BD3A2, 2, 4, 1
	[ 21.83] SPELL_AURA_REMOVED: [Gasher->Gasher: Fervor] Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, Creature-0-5208-109-4570-221637-00003BC782, Gasher, 0xa48, 445284, Fervor, 0, BUFF, 0
		AntiSpam: 1
		ShowAnnounce: Fervor faded
	[ 26.14] SPELL_CAST_SUCCESS: [Gasher: Spinning Axes] Creature-0-5208-109-4570-221759-00003BD3A2, Gasher, 0xa48, "", nil, 0x0, 445289, Spinning Axes, 0, 0
		ShowAnnounce: Spinning Axes
	[ 26.75] SPELL_CAST_SUCCESS: [Mijan: Atal'ai Serpent Totem] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 445912, Atal'ai Serpent Totem, 0, 0
		ShowSpecialWarning: Atal'ai Serpent Totem - switch targets
	[ 30.01] SPELL_CAST_START: [Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 438294, Thorns, 0, 0
		ShowAnnounce: Thorns on Mijan
		ShowSpecialWarning: Thorns on Mijan - stop attacking
		PlaySound: VoicePack/stopattack
	[ 31.51] SPELL_AURA_APPLIED: [Mijan->Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, 438294, Thorns, 0, BUFF, 0
		StartTimer: 60.0, Thorns ends
		ShowSpecialWarning: Thorns on Mijan - dispel now
		PlaySound: VoicePack/dispelboss
	[ 32.21] SPELL_AURA_REMOVED: [Mijan->Mijan: Thorns] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, 438294, Thorns, 0, BUFF, 0
		StopTimer: Timer438294active
	[ 38.08] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[ 45.97] SPELL_CAST_SUCCESS: [Mijan: Summon Mijan] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, "", nil, 0x0, 444963, Summon Mijan, 0, 0
		ShowAnnounce: Stage 3
		PlaySound: VoicePack/phasechange
	[ 46.02] SPELL_SUMMON: [Mijan->Mijan: Summon Mijan] Creature-0-5208-109-4570-218868-00003BC782, Mijan, 0xa48, Creature-0-5208-109-4570-221835-00003BD3BB, Mijan, 0xa48, 444963, Summon Mijan, 0, 0
		ScanForMobs: Creature-0-5208-109-4570-221835-00003BD3BB, 2, 2, 1
	[ 55.86] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
		ShowSpecialWarning: Chain Lightning - interrupt Zolo!
		PlaySound: VoicePack/kickcast
	[ 59.11] SPELL_CAST_SUCCESS: [Zolo: Atal'ai Skeleton Totem] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 446339, Atal'ai Skeleton Totem, 0, 0
		ShowSpecialWarning: Atal'ai Skeleton Totem - switch targets
		PlaySound: VoicePack/attacktotem
	[ 62.35] SPELL_CAST_SUCCESS: [Zolo->Mafakacoil: Unstable Cask] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 445940, Unstable Cask, 0, 0
		ShowAnnounce: Unstable Cask
	[ 70.42] SPELL_CAST_SUCCESS: [Zolo: Atal'ai Skeleton Totem] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 446339, Atal'ai Skeleton Totem, 0, 0
		ShowSpecialWarning: Atal'ai Skeleton Totem - switch targets
		PlaySound: VoicePack/attacktotem
	[ 71.29] SPELL_CAST_SUCCESS: [Zolo: Summon Zolo] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, "", nil, 0x0, 444964, Summon Zolo, 0, 0
		ShowAnnounce: Stage 4
		PlaySound: VoicePack/phasechange
	[ 71.34] SPELL_SUMMON: [Zolo->Zolo: Summon Zolo] Creature-0-5208-109-4570-221639-00003BC783, Zolo, 0xa48, Creature-0-5208-109-4570-221836-00003BD3D5, Zolo, 0xa48, 444964, Summon Zolo, 0, 0
		ScanForMobs: Creature-0-5208-109-4570-221836-00003BD3D5, 2, 3, 1
	[ 77.73] SPELL_CAST_SUCCESS: [Zul'Lor->Bruzo: Charge] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, Player-5826-02004B73, Bruzo, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[ 78.13] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[ 82.58] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[ 88.07] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[ 95.18] SPELL_CAST_SUCCESS: [Zul'Lor->Shelisea: Charge] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, Player-5826-0222D437, Shelisea, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[ 95.91] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[ 96.73] SPELL_CAST_SUCCESS: [Zul'Lor: Summon Zul'Lor] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, "", nil, 0x0, 444962, Summon Zul'Lor, 0, 0
		ShowAnnounce: Stage 5
		PlaySound: VoicePack/phasechange
	[ 96.76] SPELL_SUMMON: [Zul'Lor->Zul'Lor: Summon Zul'Lor] Creature-0-5208-109-4570-221640-00003BC783, Zul'Lor, 0xa48, Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, 444962, Summon Zul'Lor, 0, 0
		ScanForMobs: Creature-0-5208-109-4570-221837-00003BD3EE, 2, 1, 1
	[101.18] SPELL_CAST_START: [Mijan: Healing Ward] Creature-0-5208-109-4570-221835-00003BD3BB, Mijan, 0xa48, "", nil, 0x0, 438335, Healing Ward, 0, 0
		ShowAnnounce: Healing Ward
	[102.70] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[106.84] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[111.27] SPELL_CAST_START: [Loro: Demoralizing Shout] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, "", nil, 0x0, 23511, Demoralizing Shout, 0, 0
		ShowAnnounce: Casting Demoralizing Shout: 2.5 sec
		StartTimer: 22.8, Demoralizing Shout
	[112.09] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[113.43] SPELL_AURA_APPLIED: [Loro->Mafakacoil: Shield Slam] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
		ShowAnnounce: Shield Slam on Mafakacoil
	[122.23] SPELL_AURA_APPLIED: [Loro->Mafakacoil: Shield Slam] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, Player-5826-0237C47D, Mafakacoil, 0x512, 446354, Shield Slam, 0, DEBUFF, 0
		ShowAnnounce: Shield Slam on Mafakacoil
	[127.37] SPELL_CAST_SUCCESS: [Loro: Summon Loro] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, "", nil, 0x0, 444960, Summon Loro, 0, 0
		ShowAnnounce: Stage 6
		PlaySound: VoicePack/phasechange
		StopTimer: Timer23511cd
		StartTimer: 14.6, Demoralizing Shout
	[127.42] SPELL_SUMMON: [Loro->Loro: Summon Loro] Creature-0-5208-109-4570-221638-00003BC782, Loro, 0xa48, Creature-0-5208-109-4570-221834-00003BD40D, Loro, 0xa48, 444960, Summon Loro, 0, 0
		ScanForMobs: Creature-0-5208-109-4570-221834-00003BD40D, 2, 5, 1
	[127.52] SPELL_CAST_SUCCESS: [Zul'Lor->Stolzenburg: Charge] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, Player-5826-0244A0F3, Stolzenburg, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[129.11] SPELL_CAST_SUCCESS: [Hukku: Hukku's Guardians] Creature-0-5208-109-4570-218922-00003BC782, Hukku, 0xa48, "", nil, 0x0, 446360, Hukku's Guardians, 0, 0
		ShowAnnounce: Hukku's Guardians
	[129.89] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[130.71] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5208-109-4570-218922-00003BC782, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[133.13] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[133.94] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5208-109-4570-218922-00003BC782, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[136.38] SPELL_CAST_SUCCESS: [Zul'Lor->Shelisea: Charge] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, Player-5826-0222D437, Shelisea, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[136.40] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[136.71] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5208-109-4570-218922-00003BC782, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[139.60] SPELL_CAST_SUCCESS: [Zul'Lor: Frailty] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446364, Frailty, 0, 0
		ShowAnnounce: Frailty
	[142.87] SPELL_CAST_START: [Zolo: Chain Lightning] Creature-0-5208-109-4570-221836-00003BD3D5, Zolo, 0xa48, "", nil, 0x0, 446338, Chain Lightning, 0, 0
		ShowSpecialWarning: Chain Lightning - interrupt Zolo!
		PlaySound: VoicePack/kickcast
	[144.47] SPELL_CAST_SUCCESS: [Zul'Lor->Gotchya: Charge] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, Player-5826-020EC278, Gotchya, 0x512, 446369, Charge, 0, 0
		ShowAnnounce: Charge
	[145.69] SPELL_CAST_START: [Zul'Lor: Corrupted Slam] Creature-0-5208-109-4570-221837-00003BD3EE, Zul'Lor, 0xa48, "", nil, 0x0, 446372, Corrupted Slam, 0, 0
		ShowSpecialWarning: Corrupted Slam - dodge attack
		PlaySound: VoicePack/watchstep
	[146.91] SPELL_CAST_START: [Hukku: Shadow Bolt] Creature-0-5208-109-4570-218922-00003BC782, Hukku, 0xa48, "", nil, 0x0, 446361, Shadow Bolt, 0, 0
		ShowSpecialWarning: Shadow Bolt - interrupt Hukku!
		PlaySound: VoicePack/kickcast
	[152.22] ENCOUNTER_END: 2954, Atal'ai Defenders, 215, 20, 1, 0
		EndCombat: ENCOUNTER_END
	Unknown trigger
		UnregisterEvents: Regular, SPELL_AURA_REMOVED 445284 438294
]]
