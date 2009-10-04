local Delrissa = DBM:NewBossMod("Delrissa", DBM_DELRISSA_msg, DBM_DELRISSA_DESCRIPTION, DBM_TERRACE, DBM_TERRACE_TAB, 3)

Delrissa.Version	= "1.0"
Delrissa.Author		= "Arta"

Delrissa:RegisterCombat("YELL",DBM_DELRISSA_PULL)

Delrissa:RegisterEvents(
	"SPELL_CAST_START",
	"SPELL_AURA_APPLIED",
	"SPELL_CAST_SUCCESS"
)

Delrissa:AddOption("WarnRenew", false, DBM_DELRISSA_OPTION_RENEW)
Delrissa:AddOption("WarnHeal", false, DBM_DELRISSA_OPTION_HEAL)
Delrissa:AddOption("WarnShield", false, DBM_DELRISSA_OPTION_SHIELD)
Delrissa:AddOption("WarnSOC", false, DBM_DELRISSA_OPTION_SOC)
Delrissa:AddOption("WarnLHW", false, DBM_DELRISSA_OPTION_LHW)
Delrissa:AddOption("WarnWF", false, DBM_DELRISSA_OPTION_WF)	
Delrissa:AddOption("WarnBlizzard", false, DBM_DELRISSA_OPTION_BLIZZARD)
Delrissa:AddOption("WarnPoly", false, DBM_DELRISSA_OPTION_POLY)

function Delrissa:OnEvent(event, args)
	if event == "SPELL_CAST_START" then
		if args.spellId == 17843 then
			self:SendSync("DelrissaHeal")
		elseif args.spellId == 46181 then
			self:SendSync("ApokoLHW")
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 44141 and args.destName then
			self:SendSync("EllrysSOC"..tostring(args.destName))
		elseif args.spellId == 13323 and args.destName then
			self:SendSync("YazzaiPoly"..tostring(args.destName))
		elseif args.spellId == 44175 and args.destName then
			self:SendSync("DelrissaShield"..tostring(args.destName))
		end
	elseif event == "SPELL_CAST_SUCCESS" then
		if args.spellId == 27621 then
			self:SendSync("ApokoWF")
		elseif args.spellId == 44178 or args.spellId == 44195 then
			self:SendSync("YazzaiBlizzard")
		elseif args.spellId == 44174 and args.destName then
			self:SendSync("DelrissaRenew"..tostring(args.destName))
		end
	end
end

function Delrissa:OnSync(msg)
	if msg:sub(0,8) == "Delrissa" then
		if msg:sub(9) == "Heal" and self.Options.WarnHeal then
			self:Announce(DBM_DELRISSA_WARN_HEAL, 3)
		elseif msg:sub(9,13) == "Renew" and self.Options.WarnRenew then
			target = msg:sub(14);
			self:Announce(DBM_DELRISSA_WARN_RENEW:format(target), 3)
		elseif msg:sub(9,14) == "Shield" and self.Options.WarnShield then
			target = msg:sub(15);
			self:Announce(DBM_DELRISSA_WARN_SHIELD:format(target), 3)
		end
	elseif msg:sub(0,6) == "Ellrys" then
		if msg:sub(7,9) == "SOC" and self.Options.WarnSOC then
			target = msg:sub(10);
			self:Announce(DBM_DELRISSA_WARN_SOC:format(target), 3);
		end
	elseif msg:sub(0,5) == "Apoko" then
		if msg:sub(6) == "LHW" and self.Options.WarnLHW then
			self:Announce(DBM_DELRISSA_WARN_LHW, 3)
		elseif msg:sub(6) == "WF" and self.Options.WarnWF then	
			self:Announce(DBM_DELRISSA_WARN_WF, 3)
		end
	elseif msg:sub(0,6) == "Yazzai" then
		if msg:sub(7) == "Blizzard" and self.Options.WarnBlizzard then
			self:Announce(DBM_DELRISSA_WARN_BLIZZARD, 3)
		elseif msg:sub(7,10) == "Poly" and self.Options.WarnPoly then
			target = msg:sub(11);
			self:Announce(DBM_DELRISSA_WARN_POLY:format(target),3)
		end
	end
end