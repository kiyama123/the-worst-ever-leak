-- Options
local KeyToPress = "C" -- Right click while holding C
local StyleName = "Shakedown" -- Style name
local StyleColor = Color3.fromRGB(255,211,50) -- Style color

-- Code
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Speed") then
	v = game.ReplicatedStorage.Styles.Beast["Speed"]
else
	v = Instance.new("NumberValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = 0.75
v.Name = "Speed"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Idle") then
	v = game.ReplicatedStorage.Styles.Beast["Idle"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://8485681263"
v.Name = "Idle"
if game.ReplicatedStorage.Styles.Beast.Idle:FindFirstChild("Core") then
	v = game.ReplicatedStorage.Styles.Beast.Idle["Core"]
else
	v = Instance.new("Folder", game.ReplicatedStorage.Styles.Beast.Idle)
end
v.Name = "Core"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EvadeL") then
	v = game.ReplicatedStorage.Styles.Beast["EvadeL"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://8223592585"
v.Name = "EvadeL"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EvadeF") then
	v = game.ReplicatedStorage.Styles.Beast["EvadeF"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://11614916023"
v.Name = "EvadeF"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_Fallen") then
	v = game.ReplicatedStorage.Styles.Beast["H_Fallen"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_FallenSlam"
v.Name = "H_Fallen"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_FallenDown") then
	v = game.ReplicatedStorage.Styles.Beast["H_FallenDown"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_FallenGrate"
v.Name = "H_FallenDown"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("LHThrow") then
	v = game.ReplicatedStorage.Styles.Beast["LHThrow"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "T_BHeavyToss"
v.Name = "LHThrow"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("HThrow") then
	v = game.ReplicatedStorage.Styles.Beast["HThrow"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "T_HeavyToss"
v.Name = "HThrow"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_Stunned") then
	v = game.ReplicatedStorage.Styles.Beast["H_Stunned"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_Knockout"
v.Name = "H_Stunned"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabOnFallen") then
	v = game.ReplicatedStorage.Styles.Beast["H_GrabOnFallen"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_LobCrush"
v.Name = "H_GrabOnFallen"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Block") then
	v = game.ReplicatedStorage.Styles.Beast["Block"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920916315"
v.Name = "Block"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Hit1Block") then
	v = game.ReplicatedStorage.Styles.Beast["Hit1Block"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920902836"
v.Name = "Hit1Block"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EndBlock") then
	v = game.ReplicatedStorage.Styles.Beast["EndBlock"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920912941"
v.Name = "EndBlock"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Hit2Block") then
	v = game.ReplicatedStorage.Styles.Beast["Hit2Block"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920909417"
v.Name = "Hit2Block"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Taunt") then
	v = game.ReplicatedStorage.Styles.Beast["Taunt"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "BeastTaunt"
v.Name = "Taunt"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabStanding3") then
	v = game.ReplicatedStorage.Styles.Beast["H_GrabStanding3"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_Entangle"
v.Name = "H_GrabStanding3"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_TwoHandeds") then
	v = game.ReplicatedStorage.Styles.Beast["H_TwoHandeds"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_SelfDestruct"
v.Name = "H_TwoHandeds"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_AbsorbBlock") then
	v = game.ReplicatedStorage.Styles.Beast["H_AbsorbBlock"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_Torment"
v.Name = "H_AbsorbBlock"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabStanding") then
	v = game.ReplicatedStorage.Styles.Beast["H_GrabStanding"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_Piledriver"
v.Name = "H_GrabStanding"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("GrabCorpses") then
	v = game.ReplicatedStorage.Styles.Beast["GrabCorpses"]
else
	v = Instance.new("Folder", game.ReplicatedStorage.Styles.Beast)
end
v.Name = "GrabCorpses"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_GrabOnWall") then
	v = game.ReplicatedStorage.Styles.Beast["H_GrabOnWall"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_WallSmack"
v.Name = "H_GrabOnWall"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EvadeR") then
	v = game.ReplicatedStorage.Styles.Beast["EvadeR"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://8223592585"
v.Name = "EvadeR"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Throw") then
	v = game.ReplicatedStorage.Styles.Beast["Throw"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "T_BeastToss"
v.Name = "Throw"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("VisualName") then
	v = game.ReplicatedStorage.Styles.Beast["VisualName"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = StyleName
v.Name = "VisualName"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("EvadeB") then
	v = game.ReplicatedStorage.Styles.Beast["EvadeB"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://11614916809"
v.Name = "EvadeB"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Grab") then
	v = game.ReplicatedStorage.Styles.Beast["Grab"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "BGrab"
v.Name = "Grab"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Strike4") then
	v = game.ReplicatedStorage.Styles.Beast["Strike4"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "DerekSlam"
v.Name = "Strike4"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Strike3") then
	v = game.ReplicatedStorage.Styles.Beast["Strike3"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "DerekSlam"
v.Name = "Strike3"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Strike2") then
	v = game.ReplicatedStorage.Styles.Beast["Strike2"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "DerekSlam"
v.Name = "Strike2"

local e
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Strike1") then
	e = game.ReplicatedStorage.Styles.Beast["Strike1"]
else
	e = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end

e.Value = "DerekSlam"
e.Name = "Strike1"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("LThrow") then
	v = game.ReplicatedStorage.Styles.Beast["LThrow"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "T_LegToss"
v.Name = "LThrow"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("H_LowHealthFallen") then
	v = game.ReplicatedStorage.Styles.Beast["H_LowHealthFallen"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "H_FallenFinisher"
v.Name = "H_LowHealthFallen"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Color") then
	v = game.ReplicatedStorage.Styles.Beast["Color"]
else
	v = Instance.new("Color3Value", game.ReplicatedStorage.Styles.Beast)
end
v.Value = StyleColor
v.Name = "Color"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Rush3") then
	v = game.ReplicatedStorage.Styles.Beast["Rush3"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "DerekPunch3"
v.Name = "Rush3"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Rush2") then
	v = game.ReplicatedStorage.Styles.Beast["Rush2"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "DerekPunch2"
v.Name = "Rush2"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("GuardGrabHit") then
	v = game.ReplicatedStorage.Styles.Beast["GuardGrabHit"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "T_BearHug"
v.Name = "GuardGrabHit"
if game.ReplicatedStorage.Styles.Beast.GuardGrabHit:FindFirstChild("Ability") then
	v = game.ReplicatedStorage.Styles.Beast.GuardGrabHit["Ability"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast.GuardGrabHit)
end
v.Value = "Bear Hug"
v.Name = "Ability"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("StartBlock") then
	v = game.ReplicatedStorage.Styles.Beast["StartBlock"]
else
	v = Instance.new("Animation", game.ReplicatedStorage.Styles.Beast)
end

v.AnimationId = "rbxassetid://10920901524"
v.Name = "StartBlock"
if game.ReplicatedStorage.Styles.Beast:FindFirstChild("Rush1") then
	v = game.ReplicatedStorage.Styles.Beast["Rush1"]
else
	v = Instance.new("StringValue", game.ReplicatedStorage.Styles.Beast)
end
v.Value = "DerekPunch1"
v.Name = "Rush1"

local uis = game:GetService("UserInputService")
game:GetService("RunService").Heartbeat:Connect(function()
	if uis:IsKeyDown(Enum.KeyCode[KeyToPress]) then
		e.Value = "DerekCharge"
	else
		e.Value = "DerekSlam"	
	end
end)