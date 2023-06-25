if game.ReplicatedStorage.Styles:FindFirstChild("Rush") then
	v = game.ReplicatedStorage.Styles["Rush"]
else
	v = Instance.new("Folder", game.ReplicatedStorage.Styles)
end
v.Name = "Rush"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_EvadedF") then
	v = game.ReplicatedStorage.Styles.Rush["H_EvadedF"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FastFootworkFront'
v.Name = "H_EvadedF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Stunning") then
	v = game.ReplicatedStorage.Styles.Rush["H_Stunning"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_Reversal'
v.Name = "H_Stunning"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("StartBlock") then
	v = game.ReplicatedStorage.Styles.Rush["StartBlock"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://10848090844"
v.Name = "StartBlock"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Taunt") then
	v = game.ReplicatedStorage.Styles.Rush["Taunt"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'GoonTaunt'
v.Name = "Taunt"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeStrikeB") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeStrikeB"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BEvadeStrikeBack'
v.Name = "EvadeStrikeB"
if game.ReplicatedStorage.Styles.Rush.EvadeStrikeB:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush.EvadeStrikeB["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.EvadeStrikeB)
end
v.Value = 'Guru Dodge Shot'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Speed") then
	v = game.ReplicatedStorage.Styles.Rush["Speed"]
else
	v = Instance.new("NumberValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 1.2
v.Name = "Speed"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Color") then
	v = game.ReplicatedStorage.Styles.Rush["Color"]
else
	v = Instance.new("Color3Value", game.ReplicatedStorage.Styles.Rush)
end
v.Value = Color3.fromRGB(19.0000007674098,255,19.0000007674098)
v.Name = "Color"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("VisualName") then
	v = game.ReplicatedStorage.Styles.Rush["VisualName"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'Parker'
v.Name = "VisualName"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_LowHealthFallen") then
	v = game.ReplicatedStorage.Styles.Rush["H_LowHealthFallen"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FallenFinisher'
v.Name = "H_LowHealthFallen"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Fallen") then
	v = game.ReplicatedStorage.Styles.Rush["H_Fallen"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FallenSupine'
v.Name = "H_Fallen"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_BackWall") then
	v = game.ReplicatedStorage.Styles.Rush["H_BackWall"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_CrushingWall'
v.Name = "H_BackWall"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Grab") then
	v = game.ReplicatedStorage.Styles.Rush["Grab"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RSweep'
v.Name = "Grab"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_CounterSolo") then
	v = game.ReplicatedStorage.Styles.Rush["H_CounterSolo"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FrenzySpinCounter'
v.Name = "H_CounterSolo"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeStrikeR") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeStrikeR"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BEvadeStrikeRight'
v.Name = "EvadeStrikeR"
if game.ReplicatedStorage.Styles.Rush.EvadeStrikeR:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush.EvadeStrikeR["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.EvadeStrikeR)
end
v.Value = 'Guru Dodge Shot'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeStrikeL") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeStrikeL"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BEvadeStrikeLeft'
v.Name = "EvadeStrikeL"
if game.ReplicatedStorage.Styles.Rush.EvadeStrikeL:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush.EvadeStrikeL["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.EvadeStrikeL)
end
v.Value = 'Guru Dodge Shot'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeStrikeF") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeStrikeF"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BEvadeStrikeForward'
v.Name = "EvadeStrikeF"
if game.ReplicatedStorage.Styles.Rush.EvadeStrikeF:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush.EvadeStrikeF["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.EvadeStrikeF)
end
v.Value = 'Guru Dodge Shot'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Stunned") then
	v = game.ReplicatedStorage.Styles.Rush["H_Stunned"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FlyingKick'
v.Name = "H_Stunned"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush2") then
	v = game.ReplicatedStorage.Styles.Rush["Rush2"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RPunch2'
v.Name = "Rush2"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush3") then
	v = game.ReplicatedStorage.Styles.Rush["Rush3"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RPunch3'
v.Name = "Rush3"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush4") then
	v = game.ReplicatedStorage.Styles.Rush["Rush4"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RPunch4'
v.Name = "Rush4"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush5") then
	v = game.ReplicatedStorage.Styles.Rush["Rush5"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RPunch5'
v.Name = "Rush5"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush6") then
	v = game.ReplicatedStorage.Styles.Rush["Rush6"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RPunch6'
v.Name = "Rush6"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush7") then
	v = game.ReplicatedStorage.Styles.Rush["Rush7"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RPunch7'
v.Name = "Rush7"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush8") then
	v = game.ReplicatedStorage.Styles.Rush["Rush8"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RPunch8'
v.Name = "Rush8"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike2") then
	v = game.ReplicatedStorage.Styles.Rush["Strike2"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike1'
v.Name = "Strike2"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike3") then
	v = game.ReplicatedStorage.Styles.Rush["Strike3"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike2'
v.Name = "Strike3"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike4") then
	v = game.ReplicatedStorage.Styles.Rush["Strike4"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike2'
v.Name = "Strike4"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike5") then
	v = game.ReplicatedStorage.Styles.Rush["Strike5"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike3'
v.Name = "Strike5"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike6") then
	v = game.ReplicatedStorage.Styles.Rush["Strike6"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike3'
v.Name = "Strike6"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike7") then
	v = game.ReplicatedStorage.Styles.Rush["Strike7"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike4'
v.Name = "Strike7"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike8") then
	v = game.ReplicatedStorage.Styles.Rush["Strike8"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike4'
v.Name = "Strike8"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike9") then
	v = game.ReplicatedStorage.Styles.Rush["Strike9"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike5'
v.Name = "Strike9"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Rush1") then
	v = game.ReplicatedStorage.Styles.Rush["Rush1"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'RPunch1'
v.Name = "Rush1"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Strike1") then
	v = game.ReplicatedStorage.Styles.Rush["Strike1"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'BStrike1'
v.Name = "Strike1"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Running4") then
	v = game.ReplicatedStorage.Styles.Rush["H_Running4"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_Terror'
v.Name = "H_Running4"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_AirFallen") then
	v = game.ReplicatedStorage.Styles.Rush["H_AirFallen"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_Whirl'
v.Name = "H_AirFallen"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("GrabStrike") then
	v = game.ReplicatedStorage.Styles.Rush["GrabStrike"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'T_CounterQuickstep'
v.Name = "GrabStrike"
if game.ReplicatedStorage.Styles.Rush.GrabStrike:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush.GrabStrike["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.GrabStrike)
end
v.Value = 'Counter Quickstep'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_FallenDown") then
	v = game.ReplicatedStorage.Styles.Rush["H_FallenDown"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FallenProne'
v.Name = "H_FallenDown"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_EvadedB") then
	v = game.ReplicatedStorage.Styles.Rush["H_EvadedB"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FastFootworkBack'
v.Name = "H_EvadedB"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeF") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeF"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710466763"
v.Name = "EvadeF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeL") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeL"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710468004"
v.Name = "EvadeL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeR") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeR"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710467557"
v.Name = "EvadeR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeB") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeB"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710468479"
v.Name = "EvadeB"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeCR") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeCR"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710568545"
v.Name = "EvadeCR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeCL") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeCL"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11710568875"
v.Name = "EvadeCL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeQCB") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeQCB"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11632563534"
v.Name = "EvadeQCB"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeQCF") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeQCF"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11632565056"
v.Name = "EvadeQCF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeQCL") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeQCL"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11632564616"
v.Name = "EvadeQCL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeQCR") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeQCR"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11632564233"
v.Name = "EvadeQCR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeCF") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeCF"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11716395378"
v.Name = "EvadeCF"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("EvadeCB") then
	v = game.ReplicatedStorage.Styles.Rush["EvadeCB"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11716396028"
v.Name = "EvadeCB"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Block") then
	v = game.ReplicatedStorage.Styles.Rush["Block"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11776345813"
v.Name = "Block"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_EvadedR") then
	v = game.ReplicatedStorage.Styles.Rush["H_EvadedR"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FastFootworkRight'
v.Name = "H_EvadedR"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_EvadedL") then
	v = game.ReplicatedStorage.Styles.Rush["H_EvadedL"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FastFootworkLeft'
v.Name = "H_EvadedL"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Idle") then
	v = game.ReplicatedStorage.Styles.Rush["Idle"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://8493751059"
v.Name = "Idle"
if game.ReplicatedStorage.Styles.Rush.Idle:FindFirstChild("Core") then
	v = game.ReplicatedStorage.Styles.Rush.Idle["Core"]
else
	v = Instance.new("Folder", game.ReplicatedStorage.Styles.Rush.Idle)
end
v.Name = "Core"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Hit1Block") then
	v = game.ReplicatedStorage.Styles.Rush["Hit1Block"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11959653217"
v.Name = "Hit1Block"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Hit2Block") then
	v = game.ReplicatedStorage.Styles.Rush["Hit2Block"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Rush)
end

v.AnimationId = "rbxassetid://11959653217"
v.Name = "Hit2Block"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_Getup") then
	v = game.ReplicatedStorage.Styles.Rush["H_Getup"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_HeadPress'
v.Name = "H_Getup"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_FullStunned") then
	v = game.ReplicatedStorage.Styles.Rush["H_FullStunned"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_GUltimateEssence'
v.Name = "H_FullStunned"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_CounterSoloAllBack") then
	v = game.ReplicatedStorage.Styles.Rush["H_CounterSoloAllBack"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_SpinCounterBack'
v.Name = "H_CounterSoloAllBack"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("BlockStrike") then
	v = game.ReplicatedStorage.Styles.Rush["BlockStrike"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'GuruKnockback'
v.Name = "BlockStrike"
if game.ReplicatedStorage.Styles.Rush.BlockStrike:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush.BlockStrike["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.BlockStrike)
end
v.Value = 'Guru Knockback'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_GunStanding") then
	v = game.ReplicatedStorage.Styles.Rush["H_GunStanding"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_ShotStopper'
v.Name = "H_GunStanding"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("StrikeThrow") then
	v = game.ReplicatedStorage.Styles.Rush["StrikeThrow"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'T_FinishingHold'
v.Name = "StrikeThrow"
if game.ReplicatedStorage.Styles.Rush.StrikeThrow:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush.StrikeThrow["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.StrikeThrow)
end
v.Value = 'Finishing Hold'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'Double Finishing Blow'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_GrabOnWall") then
	v = game.ReplicatedStorage.Styles.Rush["H_GrabOnWall"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_WallSmack'
v.Name = "H_GrabOnWall"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("StanceStrike") then
	v = game.ReplicatedStorage.Styles.Rush["StanceStrike"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'TigerDrop'
v.Name = "StanceStrike"
if game.ReplicatedStorage.Styles.Rush.StanceStrike:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Rush.StanceStrike["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush.StanceStrike)
end
v.Value = 'Counter Hook'
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("DashAttack") then
	v = game.ReplicatedStorage.Styles.Rush["DashAttack"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'DashAttack'
v.Name = "DashAttack"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_BlockingEnemy") then
	v = game.ReplicatedStorage.Styles.Rush["H_BlockingEnemy"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_FaceTwist'
v.Name = "H_BlockingEnemy"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("GrabCorpses") then
	v = game.ReplicatedStorage.Styles.Rush["GrabCorpses"]
else
	v = Instance.new("Folder", game.ReplicatedStorage.Styles.Rush)
end
v.Name = "GrabCorpses"
if game.ReplicatedStorage.Styles.Rush:FindFirstChild("H_StandingBehind") then
	v = game.ReplicatedStorage.Styles.Rush["H_StandingBehind"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Rush)
end
v.Value = 'H_Chokehold'
v.Name = "H_StandingBehind"

--for i=4,9 do
--	game.ReplicatedStorage.Styles.Rush["2Strike"..i]:Clone().Parent = game.ReplicatedStorage.Styles.Brawler
--end

local plr = game:GetService("Players").LocalPlayer
local status = plr.Status
local currentmove: ObjectValue = status.CurrentMove
local attackstarted: BoolValue = status.AttackBegan
local attackended: BoolValue = status.AttackEnded

local function IsFirstStrike(string: string)
	return not not (string:find("Strike") and not string:find("2Strike"))
end

local function IsSecondStrike(string: string)
	return not not string:find("2Strike")
end

local OldMoves = {}

local function SetMove(Move, NewValue)
	warn("set",Move, "to", NewValue)
	if not game.ReplicatedStorage.Styles.Rush:FindFirstChild(Move) then
		return
	end
	
	local z = game.ReplicatedStorage.Styles.Rush[Move]
	
	if OldMoves[Move] == NewValue then
		--if OldMoves[Move] then
		OldMoves[Move] = nil
		--end

		z.Value = NewValue
	else
		if not OldMoves[Move] then
			OldMoves[Move] = z.Value
		end

		z.Value = NewValue
	end
end

local function SetMoves(Move, Index, Value)
	for i=1, Index do
		SetMove(Move..i, Value)
	end
end

local function ResetMove(Move)
	if OldMoves[Move] then
		SetMove(Move, OldMoves[Move])
	end
end

local function find(st, ct)
	for i,v in ct do
		if st:find(v) then
			return true
		end
	end
	
	return false
end

local function ResetAllMoves(Category)
	for i,v in OldMoves do
		if not Category or find(i, Category) then
			ResetMove(i)
		end
	end
end

local Database = {
	DoubleStrike = {
		BStrike1 = "B2Strike1",
		BStrike2 = "B2Strike1",
		BStrike3 = "B2Strike2",
		BStrike4 = "B2Strike2",
		BStrike5 = "B2Strike3",
		BStrike6 = "B2Strike3",
		BStrike7 = "B2Strike4",
		BStrike8 = "B2Strike4",
		BStrike9 = "B2Strike5"
	},
	
	Combo = {
		"BAttack2",
		"BAttack3",
		"龍Attack4",
		"RPunch5",
		"龍Attack2",
		"龍Attack1",
		"RPunch7",
		"BAttack3",
		"RPunch8"
	}
}

local function IsInHeatMode()
	return plr.PlayerGui.Interface.Uberd.ImageTransparency < 1	
end

local Climax = false

local function GoIntoClimax()
	if Climax then
		return
	end
	
	Climax = true
	
	for i,v in Database.Combo do
		SetMove("Rush"..i, v)
	end
end

local function ExitClimax()
	if not Climax then
		return
	end
	
	Climax = false
	
	ResetAllMoves{"BAttack", "龍", "RPunch", "Rush"}
end

--local RunService = game:GetService("RunService")

task.spawn(function()
	while task.wait(0.1) do
		if IsInHeatMode() then
			GoIntoClimax()
		else
			ExitClimax()
		end
	end
end)

currentmove:GetPropertyChangedSignal("Value"):Connect(function()
	local NewMove = currentmove.Value
	
	if IsFirstStrike(NewMove.Name) then
		if not (NewMove:FindFirstChild("ComboAt") or NewMove:FindFirstChild("EndAt")) then
			warn(NewMove.Name, "Has no ComboAt or EndAt value. stopping stack")
			return
		end
		
		if not Database.DoubleStrike[NewMove.Name] then
			warn(NewMove.Name, "Has no double strike, stopping stack")
			return
		end
		print(Database.DoubleStrike[NewMove.Name])
		SetMoves("Strike", 9, Database.DoubleStrike[NewMove.Name])
		
		if NewMove:FindFirstChild("ComboAt") then
			task.wait(NewMove.ComboAt.Value + 0.3)
		elseif NewMove:FindFirstChild("EndAt") then
			task.wait(NewMove.EndAt.Value + 0.3)
		end
		ResetAllMoves{"Strike"}
	end
end)