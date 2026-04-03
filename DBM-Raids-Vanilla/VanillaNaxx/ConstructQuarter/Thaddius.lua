-- this file uses the texture Textures/arrow.tga. This image was created by Everaldo Coelho and is licensed under the GNU Lesser General Public License. See Textures/lgpl.txt.
local mod	= DBM:NewMod("ThaddiusVanilla", "DBM-Raids-Vanilla", 1)
local L		= mod:GetLocalizedStrings()
local CL	= DBM_COMMON_L

if DBM:IsSeasonal("SeasonOfDiscovery") then
	mod.statTypes = "normal,heroic,mythic"
else
	mod.statTypes = "normal"
end

mod:SetRevision("@file-date-integer@")
mod:DisableHardcodedOptions()
mod:SetCreatureID(15928)
mod:SetEncounterID(1120)
mod:SetModelID(16137)
mod:SetZone(533)

mod:RegisterCombat("combat_yell", L.Yell1P1, L.Yell2P1)

mod:RegisterEventsInCombat(
	"SPELL_CAST_START 28089",
	"CHAT_MSG_MONSTER_EMOTE",
	"CHAT_MSG_MONSTER_YELL",
	"UNIT_AURA player"
)

--TODO, UNIT_AURA might not work in classic? I didn't see any warnings on stream. May have to just do UnitDebuff() on self when cast finishes
local warnShiftSoon			= mod:NewSoonAnnounce(28089, 5, 3)
local warnShiftCasting		= mod:NewCastAnnounce(28089, 4)
local warnThrow				= mod:NewSpellAnnounce(28338, 2)
local warnThrowSoon			= mod:NewSoonAnnounce(28338, 1)
local warnPhase 			= mod:NewPhaseChangeAnnounce(2, nil, nil, nil, nil, nil, 2)
local warnPhase2Soon		= mod:NewPrePhaseAnnounce(2)

local warnChargeChanged		= mod:NewSpecialWarning("WarningChargeChanged")
local warnChargeNotChanged	= mod:NewSpecialWarning("WarningChargeNotChanged", false)
local yellShift				= mod:NewShortPosYell(28089, DBM_CORE_L.AUTO_YELL_CUSTOM_POSITION)

local timerEnrage			= mod:NewBerserkTimer(300)
local timerNextShift		= mod:NewVarTimer("v25.9-35.7", 28089, nil, nil, nil, 2, nil, DBM_COMMON_L.DEADLY_ICON)
local timerShiftCast		= mod:NewCastTimer(3, 28089, nil, nil, nil, 5)
local timerThrow			= mod:NewCDTimer(20.6, 28338, nil, nil, nil, 5, nil, DBM_COMMON_L.TANK_ICON)
local timerIntermission		= mod:NewIntermissionTimer("v4.6-4.8", nil, CL.INTERMISSION, true, nil, nil, "136106")

mod:AddInfoFrameOption()

mod:AddDropdownOption("AirowsEnabled", {"Never", "TwoCamp", "ArrowsRightLeft", "ArrowsInverse"}, "Never", "misc", nil, 28089)

local currentCharge
local down = 0
local lastShift = 0

function mod:OnCombatStart()
	self:SendSync("Phase", 1)
	currentCharge = nil
	down = 0
	self:ScheduleMethod(40.6, "TankThrow")
	timerThrow:Start(20.6)
	warnThrowSoon:Schedule(37.6)
	self:RegisterOnUpdateHandler(function()
    if IsEncounterInProgress() and self:GetStage(1.5) then
        self:SendSync("Phase", 2)
        self:UnregisterOnUpdateHandler()
    end
end, 0.2)
	if self.Options.InfoFrame then
		DBM.InfoFrame:Show(10, "bosshealth", {
			[15929] = true,
			[15930] = true,
		})
		self.bossHealthUpdateTime = 0.5
		self:BossHealthUpdate()
	end
end

-- FIXME: this is required because core by default only checks mod creature IDs, but it should really check everything that info frame wants to see as well
function mod:BossHealthUpdate()
	self:GetBossHP(15929)
	self:GetBossHP(15930)
	if self:GetStage(2, 3) then
		self:ScheduleMethod(0.5, "BossHealthUpdate") -- also canceled on combat end implicitly
	end
end


function mod:OnCombatEnd(wipe, isSecondRun)
	self:UnregisterOnUpdateHandler()
	if wipe and not isSecondRun then
		DBM:AddMsg("Arrow Options can be changed for this encounter. Mod supports 3 different strats. Choose one that matches your strat")
	end
end

function mod:SPELL_CAST_START(args)
	if args:IsSpell(28089) then
		timerNextShift:Start()
		timerShiftCast:Start()
		warnShiftCasting:Show()
		warnShiftSoon:Schedule(20)
		lastShift = GetTime()
	end
end

function mod:UNIT_AURA()
	if self:GetStage(2, 3) or (GetTime() - lastShift) > 5 or (GetTime() - lastShift) < 3 then return end
	local charge
	local i = 1
	while UnitDebuff("player", i) do
		local _, icon, count, _, _, _, _, _, _, _, _, _, _, _, _, count2 = UnitDebuff("player", i)
		if icon == "Interface\\Icons\\Spell_ChargeNegative" or icon == 135768 then--Not sure if classic will return data ID or path, so include both
			if (count2 or count) > 1 then return end
			charge = L.Charge1
			yellShift:Yell(7, "- -")
		elseif icon == "Interface\\Icons\\Spell_ChargePositive" or icon == 135769 then--Not sure if classic will return data ID or path, so include both
			if (count2 or count) > 1 then return end
			charge = L.Charge2
			yellShift:Yell(6, "+ +")
		end
		i = i + 1
	end
	if charge then
		lastShift = 0
		--Did not Change
		if charge == currentCharge then
			warnChargeNotChanged:Show()
			if self.Options.AirowsEnabled == "ArrowsInverse" then
				self:ShowLeftArrow()
			elseif self.Options.AirowsEnabled == "ArrowsRightLeft" then
				self:ShowRightArrow()
			end
		--Changed
		else
			warnChargeChanged:Show(charge)
			if self.Options.AirowsEnabled == "ArrowsInverse" then
				self:ShowRightArrow()
			elseif self.Options.AirowsEnabled == "ArrowsRightLeft" then
				self:ShowLeftArrow()
			elseif self.Options.AirowsEnabled == "TwoCamp" then
				self:ShowUpArrow()
			end
		end
		currentCharge = charge
	end
end

function mod:CHAT_MSG_MONSTER_EMOTE(msg)
	if msg == L.Emote or msg:find(L.Emote) then
		down = down + 1
		if down >= 2 then
			self:UnscheduleMethod("TankThrow")
			self:SetStage(1.5)
			warnPhase2Soon:Show()
			warnThrowSoon:Cancel()
			timerThrow:Stop()
			timerIntermission:Start()
			if self.Options.InfoFrame then
				DBM.InfoFrame:Hide()
			end
		end
	end
end

function mod:OnSync(msg, arg)
	if msg == "Phase" then
		local phase = tonumber(arg)
		if not phase then return end
		if self:GetStage(phase, 3) then  -- only if stage changed
			self:SetStage(phase)
			warnPhase:Show(DBM_CORE_L.AUTO_ANNOUNCE_TEXTS.stage:format(phase))
			if phase == 2 then
				timerEnrage:Start()
				timerIntermission:Stop()
				warnPhase:Play("ptwo")
			end
		end
	end
end

function mod:TankThrow()
	if not self:IsInCombat() or self:GetStage(2) then
		return
	end
	timerThrow:Start()
	warnThrowSoon:Schedule(37.6)
	self:ScheduleMethod(40.6, "TankThrow")
end

local function arrowOnUpdate(self, elapsed)
	self.elapsed = (self.elapsed or 0) + elapsed
	if self.elapsed >= 3.5 and self.elapsed < 4.5 then
		self:SetAlpha(4.5 - self.elapsed)
	elseif self.elapsed >= 4.5 then
		self:Hide()
	end
end

local function arrowOnShow(self)
	self.elapsed = 0
	self:SetAlpha(1)
end

local arrowLeft = CreateFrame("Frame", nil, UIParent)
arrowLeft:Hide()
local arrowLeftTexture = arrowLeft:CreateTexture(nil, "BACKGROUND")
arrowLeftTexture:SetTexture("Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaNaxx\\ConstructQuarter\\Textures\\arrow")
arrowLeftTexture:SetPoint("CENTER", arrowLeft, "CENTER")
arrowLeft:SetHeight(1)
arrowLeft:SetWidth(1)
arrowLeft:SetPoint("CENTER", UIParent, "CENTER", -150, -30)
arrowLeft:SetScript("OnShow", arrowOnShow)
arrowLeft:SetScript("OnUpdate", arrowOnUpdate)

local arrowRight = CreateFrame("Frame", nil, UIParent)
arrowRight:Hide()
local arrowRightTexture = arrowRight:CreateTexture(nil, "BACKGROUND")
arrowRightTexture:SetTexture("Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaNaxx\\ConstructQuarter\\Textures\\arrow")
arrowRightTexture:SetPoint("CENTER", arrowRight, "CENTER")
arrowRightTexture:SetTexCoord(1, 0, 0, 1)
arrowRight:SetHeight(1)
arrowRight:SetWidth(1)
arrowRight:SetPoint("CENTER", UIParent, "CENTER", 150, -30)
arrowRight:SetScript("OnShow", arrowOnShow)
arrowRight:SetScript("OnUpdate", arrowOnUpdate)

local arrowUp = CreateFrame("Frame", nil, UIParent)
arrowUp:Hide()
local arrowUpTexture = arrowUp:CreateTexture(nil, "BACKGROUND")
arrowUpTexture:SetTexture("Interface\\AddOns\\DBM-Raids-Vanilla\\VanillaNaxx\\ConstructQuarter\\Textures\\arrow")
arrowUpTexture:SetRotation(math.pi * 3 / 2)
arrowUpTexture:SetPoint("CENTER", arrowUp, "CENTER")
arrowUp:SetHeight(1)
arrowUp:SetWidth(1)
arrowUp:SetPoint("CENTER", UIParent, "CENTER", 0, 40)
arrowUp:SetScript("OnShow", arrowOnShow)
arrowUp:SetScript("OnUpdate", arrowOnUpdate)

function mod:ShowRightArrow()
	arrowRight:Show()
end

function mod:ShowLeftArrow()
	arrowLeft:Show()
end

function mod:ShowUpArrow()
	arrowUp:Show()
end
