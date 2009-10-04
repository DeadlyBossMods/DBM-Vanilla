local Skyriss = DBM:NewBossMod("Skyriss", DBM_SKYRISS_NAME, DBM_SKYRISS_DESCRIPTION, DBM_ARCATRAZ, DBM_TK_TAB, 12);

Skyriss.Version	= "1.0";
Skyriss.Author	= "Arta";

Skyriss:RegisterCombat("COMBAT");

Skyriss:RegisterEvents(
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_HEALTH",
	"SPELL_AURA_APPLIED"
);

Skyriss:AddOption("WarnSplit", true, DBM_SKYRISS_OPTION_SPLIT)
Skyriss:AddOption("WarnSplitSoon", true, DBM_SKYRISS_OPTION_SPLITSOON)
Skyriss:AddOption("WarnMC", true, DBM_SKYRISS_OPTION_MC)
Skyriss:AddOption("WarnRend", true, DBM_SKYRISS_OPTION_REND)

function Skyriss:OnCombatStart(delay)
	local FirstSplit = false;
	local SecondSplit = false;
end

function Skyriss:OnEvent(event, args)
	if event == "CHAT_MSG_MONSTER_YELL" then
		if args == DBM_ARCA_SKYRISS_CHECK_SPLIT then
			self:SendSync("SplitNow")
		end
	elseif event == "UNIT_HEALTH" then
		if UnitName(msg) == "DBM_TK_SKYRISS_NAME" then
			local hp = UnitHealth(msg);
			if hp > 66 and hp <70 and not FirstSplit then
				self:SendSync("Split")
				FirstSplit = true;
			elseif hp > 33 and hp < 37 and not SecondSplit then
				self:SendSync("Split")
				SecondSplit = true;
			end
		end
	elseif event == "SPELL_AURA_APPLIED" then
		if args.spellId == 39019 and args.destName then
			self:SendSync("MC"..tostring(args.destName))
		elseif args.spellId == 39017 and args.destName then
			self:SendSync("Rend"..tostring(args.destName))
		end	
	end
end

function Skyriss:OnSync(msg)
	if msg == "SplitNow" and self.Options.WarnSplit then
		self:Announce(DBM_SKYRISS_WARN_SPLIT_NOW, 3)
	elseif msg == "Split" and self.Options.WarnSplitSoon then
		self:Announce(DBM_SKYRISS_WARN_SPLIT_SOON, 3)
	elseif msg:sub(0,2) == "MC" and self.Options.WarnMC then
		target = msg:sub(3);
		self:Announce(DBM_SKYRISS_WARN_MC:format(target), 3)
	elseif msg:sub(0,4) == "Rend" and self.Options.WarnRend then
		target = msg:sub(5);
		self:Announce(DBM_SKYRISS_WARN_REND:format(target), 3)
	end
end
