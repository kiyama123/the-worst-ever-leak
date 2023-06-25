-- Welcome to ER2F * Explorer R2F
-- Made by MadnessMyth

-- Controls:

-- M3 to toggle UI
-- X while mouse is hovered on the title of the Window
-- 1,2,3,4,5,6,7,8,9, to change the Explorer category
-- M1 Is reserved for local sided events, anims, events, audio,
-- M2 Is reserved for server sided events, anims, events, audio,

--Code!

-- Variables

local TooltipData = {
	-- QTE
	TurnBased = "This allows QTE to cancel at any time",	
	-- Reactions

	HeatNeeded = "The heat needed for this heat action, climax: red heat, normal: blue heat",
	HeatUse = "Heat used by the heat action, Heat can range from 0 to 100",
	Closest = "The object used to know how close 1-4 victims need to be for this action.",
	Distance = "The heat actions range",

	Reaction = "What the action does to affected enemies",

	-- Stats

	HorizKnockback = "How much knockback the enemy gets when hit.",
	FinishingBlow = "When existing, the attack is a Finishing Blow.",
	MoveDuration = "How long the move has lasted.",
	HitboxLocations = "The hitbox's CFrame data in a string.",
	MoveForawrd = "How much the attack moves you forward",
	AniSpeed = "The animation speed, 2 is double the speed.",
	StartAt = "When the attack starts (In seconds)",
	EndAt = "When the attack ends (In seconds)",
	Circle = "Attack in a circle",
	Knockout = "Ragdoll enemies whom got hit.",
	Trail = "When this value exists, the attack will have a trail.",
	RagdollTime = "The ragdoll duration of ragdolled enemies",
	IgnoreBlock = "Ignore blocking and hit normally",
	Sound = "Sound when the action is activated",
	HSound = "Hit sound",
	Dmg = "The damage dealt",
	Anim = "The animation.",
	Stumble = "Hit lock the enemy (Stuns for a small amount of time)",
	CounterAttack = "When existing, the action can only be used during an enemies attack.",
	Invulnerable = "Gives you invulnerablity during the attack.",
	HSize = "The size of the hitbox in Studs, (circle)",
	ComboAt = "The amount of time until you can start the next attack",
	Cancelable = "Enemies can cancel your attack by fighting back.",
	NoKnockback = 'This attack can not deal any knockback.',
	RushSet = "This attack inside of a rush set (Inside of a combo folder)",
	TauntSound = "This allows the action to play the taunt sound.",
	ForceSound = "This makes it so it can play a sound whenever.",
	NoDmg = "When existing, this attack can not deal any damage to enemies.",
	RagdollHeight = "How many studs high will the ragdolled opponent go after the heat action.",
	NeedAbility = "You need the ablity to use this action.",
	NoBosses = "When existing, this ablity can not be used on bosses. (Can be used on mini-bosses)",
	GiveHeat = 'Gives the player heat after using this heat action.',
	WhenAttacking = "Allows you to use this action whenever the enemy is attacking (The red flash does not need to show up.)",
	LockedDirection = "You can only use this while locked on a enemy, Or it will auto lock.",
	CanBeEvaded = "Allows the enemies or you to dodge this attack.",
	IgnoreResist = 'Will ignore brute blocking when this action is peformed.',
	Stun = "Stun enemies who got hit by this action.",
	SF = 'Delay before move forward or any other movers will be active.',
	FixedCF = "Fixed CFrame, your character and your enemey will have a set positon.",
	DuringAttack = "This heat action can be used while the enemy is attacking.",
	RotateDeez = "This is used by the game to know what to do when your camera's angle changes to be above or below this value.",
	CorpseIncluded = "This allows you to use the action when a battle ends or after the battle ends.",
	ShieldBreak = "Breaks the enemies shield when hit.",
	Prop = "This action can only be used when wielding a weapon.",
	NoShieldBreak = "You can not do anything at all to break an enemies shield when you use this action.",
	CanUseWeapon = "You can use a weapon with this action.",
	WhileEvading = "You need to be in a evading state to peform this action.",
	NeedBlunt = "You need a blunt weapon to use this action.",
	SuperArmor = "You are given super armor during this attack (You can not take knockback during this attack).",
	IgnoreDmg = "You can not take damage during this action.",
	OvercomeWeapon = "When the action is peformed, any props beingpairs() wielded will be broken.",
	ThrowProp = "When this action is peformend, any wielded props will be thrown.",
	InstantTurn = "Will turn the player instantly to a locked target when the action is peformed.",
	KnockoutDistance = "How far a enemy is punted away in studs.",
	delayqte = "The delay before a new QTE is done after a action.",
	addqte = "The delay after doing a QTE for a new one.",
	Warp = "Teleports the person doing the action to the correct position.",
	Grabber = "The enemy will be grabbed instead of damaged when damage is supposed to be dealt.",

	-- Requirements

	UseWeapon = "When this is placed, you have to have the weapon out to use this action. E.G: Pistols, SMGS, etc",
	AdminOnly = "This action is restricted to Administrators only. Oh how sad.",
	DuringRagdoll = "You can only use this while you are ragdolled.",
	YouNeed = "X amount of victims until this heat action can be peformed.",
	Victim1 = "The first victim affected by the heat action",
	Victim2 = "The second victim affected by the heat action",
	Victim3 = "The third victim affected by the heat action",
	Victim4 = "The fourth victim affected by the heat action",

	KF1 = "The stats of the first victim affected by the heat action",
	KF2 = "The stats of the second victim affected by the heat action",
	KF3 = "The stats of the third victim affected by the heat action",
	KF4 = "The stats of the fourth victim affected by the heat action",
}

-- Setup, do not touch!

local ts = game:GetService("TweenService")

TooltipData = setmetatable(TooltipData, {
	__index = function()
		return "No documentation found."
	end,
})

local function ultra_sub(str, gsubs)
	local new = str

	for i,v in pairs(gsubs) do
		new = new:gsub(i, v)
	end

	return new
end

local conversions = {
	Animation = function(b)
		local ipath = "game."..b.Parent:GetFullName()
		local value = b.AnimationId
		local name = b.Name
		local class = b.ClassName

		return ultra_sub([[if objectpath_xoamg:FindFirstChild("objectname_xoamg") then
v = objectpath_xoamg["objectname_xoamg"]
else
v = Instance.new("objectclass_xoamg", objectpath_xoamg)
end

v.AnimationId = "objectvalue_xoamg"
v.Name = "objectname_xoamg"]], {objectpath_xoamg = ipath, objectname_xoamg = name, objectvalue_xoamg = value, objectclass_xoamg = class})
	end,

	Folder = function(b)
		local ipath = "game."..b.Parent:GetFullName()
		local name = b.Name
		local class = b.ClassName

		return ultra_sub([[if objectpath_xoamg:FindFirstChild("objectname_xoamg") then
v = objectpath_xoamg["objectname_xoamg"]
else
v = Instance.new("objectclass_xoamg", objectpath_xoamg)
end
v.Name = "objectname_xoamg"]], {objectpath_xoamg = ipath, objectname_xoamg = name, objectclass_xoamg = class})
	end,

	StringValue = function(b)
		local ipath = "game."..b.Parent:GetFullName()
		local value = b.Value
		local name = b.Name
		local class = b.ClassName

		return ultra_sub([[if objectpath_xoamg:FindFirstChild("objectname_xoamg") then
v = objectpath_xoamg["objectname_xoamg"]
else
v = Instance.new("objectclass_xoamg", objectpath_xoamg)
end
v.Value = 'objectvalue_xoamg'
v.Name = "objectname_xoamg"]], {objectpath_xoamg = ipath, objectname_xoamg = name, objectvalue_xoamg = value, objectclass_xoamg = class})
	end,

	NumberValue = function(b)
		local ipath = "game."..b.Parent:GetFullName()
		local value = b.Value
		local name = b.Name
		local class = b.ClassName

		return ultra_sub([[if objectpath_xoamg:FindFirstChild("objectname_xoamg") then
v = objectpath_xoamg["objectname_xoamg"]
else
v = Instance.new("objectclass_xoamg", objectpath_xoamg)
end
v.Value = objectvalue_xoamg
v.Name = "objectname_xoamg"]], {objectpath_xoamg = ipath, objectname_xoamg = name, objectvalue_xoamg = value, objectclass_xoamg = class})
	end,

	IntValue = function(b)
		local ipath = "game."..b.Parent:GetFullName()
		local value = b.Value
		local name = b.Name
		local class = b.ClassName

		return ultra_sub([[if objectpath_xoamg:FindFirstChild("objectname_xoamg") then
v = objectpath_xoamg["objectname_xoamg"]
else
v = Instance.new("objectclass_xoamg", objectpath_xoamg)
end
v.Value = objectvalue_xoamg
v.Name = "objectname_xoamg"]], {objectpath_xoamg = ipath, objectname_xoamg = name, objectvalue_xoamg = value, objectclass_xoamg = class})
	end,

	Color3Value = function(b)
		local ipath = "game."..b.Parent:GetFullName()
		local value = b.Value
		local name = b.Name
		local class = b.ClassName

		return ultra_sub([[if objectpath_xoamg:FindFirstChild("objectname_xoamg") then
v = objectpath_xoamg["objectname_xoamg"]
else
v = Instance.new("objectclass_xoamg", objectpath_xoamg)
end
v.Value = Color3.fromRGB(objectvalue_r_xoamg,objectvalue_g_xoamg,objectvalue_b_xoamg)
v.Name = "objectname_xoamg"]], {objectpath_xoamg = ipath, objectname_xoamg = name, objectvalue_r_xoamg = value.R * 255, objectvalue_g_xoamg = value.G * 255, objectvalue_b_xoamg = value.B * 255, objectclass_xoamg = class})
	end
}

local function convert(b:Instance)	
	if not conversions[b.ClassName] then
		error("datatype does not exist! "..b.ClassName)
		return
	end

	local result = conversions[b.ClassName](b)

	if result and typeof(result) == "string" then
		return result
	else
		warn("data")
		warn(result)
		warn("typedata")
		warn(typeof(result))
		warn("Broken datatype! "..b.ClassName)
	end
end

local plr = game.Players.LocalPlayer
local pgui = plr.PlayerGui
local interf = pgui.Interface
local bt = interf.Battle
local main = bt.Main

local function sendNotification(text, color)
	if not color then color = Color3.new(1, 1, 1) end
	pgui.Notify.Awards.ChildAdded:Once(function(c)
		if c.Text == text then
			c.TextColor3 = color
			coroutine.wrap(function()
				local con;
				con = game:GetService("RunService").RenderStepped:Connect(function()
					if not c then
						con:Disconnect()
						return
					end
					c.TextColor3 = color
				end)()
			end)()
		end
	end)
	pgui["नोटिफ"]:Fire(text)
end

-- Instances:

-- Gui to Lua
-- Version: 3.2

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextBox")
local ViewportFrame = Instance.new("ViewportFrame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local UIGradient = Instance.new("UIGradient")
local Frame_3 = Instance.new("Frame")
local UIGradient_2 = Instance.new("UIGradient")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local Search = Instance.new("TextBox")

--Properties:

local t = Instance.new("TextButton", Frame)
t.Transparency = 1
t.Modal = true

ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.259390414, 0, 0.217391238, 0)
Frame.Size = UDim2.new(0.480449498, 0, 0.0638587251, 0)
Frame.ZIndex = 2

local SearchBar = Instance.new("Frame", Frame_2)

SearchBar.Size = UDim2.fromScale(0.5, 0.1)
SearchBar.Position = UDim2.new(0.5, 0, 0.025, 0)
SearchBar.BackgroundColor3 = Color3.new(1,1,1)
SearchBar.BackgroundTransparency = 0.9
SearchBar.ZIndex = 3

Search.Size = UDim2.fromScale(1, 1)
Search.Position = UDim2.new(0, 0, 0, 0)
Search.BackgroundTransparency = Color3.new(0.7, 0.7, 0.7)
Search.BackgroundTransparency = 0
Search.ZIndex = 4
Search.PlaceholderText = "Search here"
Search.Text = ""
Search.ClearTextOnFocus = false
Search.TextScaled = true
Search.TextColor3 = Color3.new(1, 1, 1)
Search.Parent = SearchBar

local padding = Instance.new("UIPadding", SearchBar)
padding.PaddingTop = UDim.new(0, 8)
padding.PaddingBottom = UDim.new(0, 8)
padding.PaddingLeft = UDim.new(0, 8)
padding.PaddingRight = UDim.new(0, 8)

local padding = Instance.new("UIPadding", Search)
padding.PaddingTop = UDim.new(0, 2)
padding.PaddingBottom = UDim.new(0, 2)
padding.PaddingLeft = UDim.new(0, 2)
padding.PaddingRight = UDim.new(0, 2)

local corner = Instance.new("UICorner", Search)
Search.BackgroundTransparency = 0.75

Frame_2.Parent = Frame
Frame_2.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.00884408504, 0, 0.9816432, 0)
Frame_2.Size = UDim2.new(0.983145714, 0, 7.45732832, 0)
Frame_2.ZIndex = 0

local UIGradient = Instance.new("UIGradient")


Instance.new("UICorner", ViewportFrame)

--Properties:

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(0.37, Color3.fromRGB(244, 244, 244)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(170, 170, 170))}
UIGradient.Rotation = 90
UIGradient.Parent = Frame_3

ScrollingFrame.Parent = Frame_2
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.BackgroundTransparency = 0.900
ScrollingFrame.Position = UDim2.new(0.5, 0, 1-0.875, 0)
ScrollingFrame.Size = UDim2.new(0.5, 0, 0.875, 0)
ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScrollingFrame.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
ScrollingFrame.ClipsDescendants = true

local padding = Instance.new("UIPadding", ScrollingFrame)
padding.PaddingTop = UDim.new(0, 6)

TextLabel.Name = "TextLabel"
TextLabel.Parent = Frame_2
TextLabel.Active = false
TextLabel.TextEditable = false
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0169449076, 0, 0.0586978942, 0)
TextLabel.Selectable = false
TextLabel.Size = UDim2.new(0.465519071, 0, 0.0974802077, 0)
TextLabel.ZIndex = 4
TextLabel.ClearTextOnFocus = false
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.PlaceholderText = "id"
TextLabel.Text = ""
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ViewportFrame.BackgroundTransparency = 0.7
ViewportFrame.AnchorPoint = Vector2.new(0.5, 0)
ViewportFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ViewportFrame.Parent = Frame_2
ViewportFrame.Position = UDim2.new(0.237909153, 0, 0.262771815, 0)
ViewportFrame.Size = UDim2.fromScale(0.434, 0.643)

UIAspectRatioConstraint.Parent = ViewportFrame

UIGradient.Rotation = 90
UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.78, 0.16), NumberSequenceKeypoint.new(1.00, 0.29)}
UIGradient.Parent = ViewportFrame

Frame_3.Parent = Frame
Frame_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.00884403568, 0, 0.430648267, 0)
Frame_3.Size = UDim2.new(0.991155982, 0, 0.99999994, 0)

UIGradient_2.Rotation = 90
UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.58), NumberSequenceKeypoint.new(1.00, 1.00)}
UIGradient_2.Parent = Frame_3

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.0256328117, 0, 0.212765858, 0)
TextLabel_2.Rotation = 1.000
TextLabel_2.Size = UDim2.new(0.259852558, 0, 0.574468195, 0)
TextLabel_2.ZIndex = 4
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Animation List"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0, 0, 0.212765858, 0)
TextLabel_3.Rotation = 2.000
TextLabel_3.Size = UDim2.new(0.4, 0, 0.768877447, 0)
TextLabel_3.ZIndex = 3
TextLabel_3.Font = Enum.Font.SourceSansBold
TextLabel_3.Text = "Animation List"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextTransparency = 0.500
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.722524881, 0, 0.212765872, 0)
TextLabel_4.Rotation = -1.000
TextLabel_4.Size = UDim2.new(0.259852558, 0, 0.574468195, 0)
TextLabel_4.ZIndex = 4
TextLabel_4.Font = Enum.Font.SourceSansBold
TextLabel_4.Text = "By MadnessMyth"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Right

TextLabel_5.Parent = Frame
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.Position = UDim2.new(0.749759793, 0, 0.106382929, 0)
TextLabel_5.Rotation = -2.000
TextLabel_5.Size = UDim2.new(0.242229998, 0, 0.768877447, 0)
TextLabel_5.ZIndex = 3
TextLabel_5.Font = Enum.Font.SourceSansBold
TextLabel_5.Text = "By MadnessMyth"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextTransparency = 0.500
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Right

local worldmodel = Instance.new("WorldModel", ViewportFrame)
local distance = 7

local character = game:GetService('Players').LocalPlayer.Character
character.Archivable = true
local clone = character:Clone()
character.Archivable = false
for i,v in pairs(clone:GetDescendants()) do
	if v.ClassName:lower():find("script") then
		v:Destroy()
	end
end
clone.Parent = worldmodel
clone:PivotTo(CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, 0, distance)))
local hum = clone:WaitForChild("Humanoid")

local function stopallanim()
	for i,v in pairs(hum:GetPlayingAnimationTracks()) do
		v:Stop()
		v:Destroy()
	end
end

local function getnumbers(x)
	local n = ""

	for i=1,#x do
		local l = x:sub(i, i)
		if tostring(tonumber(l)) == l then
			n = n .. l
		end
	end

	return tonumber(n)
end

local function playanimid(id, chum)
	local a = Instance.new("Animation")
	a.AnimationId = "rbxassetid://"..getnumbers(tostring(id))
	local v = (chum or hum):LoadAnimation(a)
	v.Looped = true

	v:Play()
	v.Destroying:Once(function()
		a:Destroy()
	end)

	return v
end

local camera = Instance.new("Camera", ViewportFrame)
ViewportFrame.CurrentCamera = camera
ViewportFrame.ZIndex = 8

camera.CFrame = CFrame.new(
	Vector3.new(0, 0, distance), Vector3.new(0, 0, 0)
)

local uis = game:GetService("UserInputService")

local padding = 3
local cursor = Instance.new("Frame", ScreenGui)
cursor.ZIndex = 100
cursor.Active = false
cursor.Size = UDim2.fromOffset(8, 8)
cursor.AnchorPoint = Vector2.new(1, 1) * 0.5

local b2 = game:GetService("RunService").Heartbeat:Connect(function(d)
	local p = uis:GetMouseLocation()
	cursor.Position = UDim2.fromOffset(p.X, p.Y)

	-- stop the character from going off screen
	--local cp = Vector3.new(0, 0, distance)
	--for i,v in pairs(clone:GetDescendants()) do
	--	if v:IsA("Part") and v.Transparency == 1 then
	--		local p = v.Position + Vector3.new(0, 0, padding)

	--		if math.max(p.Z, p.Y, p.Z) > cp.Z then
	--			cp = Vector3.new(0, 0, math.max(p.Z, p.Y, p.Z))
	--		end
	--	end
	--end
	local diff = CFrame.new(clone:GetPivot().Position + Vector3.new(0, 1, distance), Vector3.new(0, 0, 0))

	local v= Vector3.new(0, 1, distance)
	local l = CFrame.new(v + Vector3.new(0, 0, (v - diff.Position).Magnitude), Vector3.new(0, 0, 0))
	camera.CFrame = camera.CFrame:Lerp(l, math.clamp(d*4, 0, 1))
end)

local b = Frame.InputBegan:Connect(function(i)
	if i.KeyCode == Enum.KeyCode.X then
		ScreenGui:Destroy()
		--uis.MouseBehavior = Enum.MouseBehavior.LockCenter
	end
end)

local b3 = uis.InputBegan:Connect(function(i,g)
	if i.UserInputType == Enum.UserInputType.MouseButton3 then
		ScreenGui.Enabled = not ScreenGui.Enabled
	end
end)


local function makebutton()
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	task.wait()
	local TextButton = Instance.new("TextButton")

	--Properties:

	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 0.800
	TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextButton.Size = UDim2.new(0.5, 0, 0, 24)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextWrapped = true
	TextButton.RichText = true

	TextButton.Changed:Connect(function(v)
		if v == "Text" then
			for i=1,3 do
				task.wait()
			end
			TextButton.AutomaticSize = Enum.AutomaticSize.X
			task.wait()

			if TextButton.Parent == nil then
				pcall(function()
					TextButton:Destroy()
				end)
				return
			end

			local Size = TextButton.AbsoluteSize
			TextButton.AutomaticSize = Enum.AutomaticSize.None
			TextButton.Size = UDim2.new(Size.X / TextButton.Parent.AbsoluteSize.X, 0, 0, 24)
		end
	end)

	Instance.new("UICorner", TextButton)

	local uistroke = Instance.new("UIStroke", TextButton)
	uistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	uistroke.LineJoinMode = Enum.LineJoinMode.Round
	uistroke.Thickness = 2
	uistroke.Transparency = 0
	uistroke.Color = Color3.fromRGB(255, 255, 255)

	local x = Instance.new("UIPadding", TextButton)
	x.PaddingLeft = UDim.new(0, 6)
	x.PaddingRight = UDim.new(0, 6)

	return TextButton
end

local function makelistitem()
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Frame = Instance.new("Frame")

	--Properties:

	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1
	Frame.BorderColor3 = Color3.fromRGB(27, 42, 53)
	Frame.Size = UDim2.new(1, 0, 0, 24)
	Frame.AutomaticSize = Enum.AutomaticSize.Y

	local TextButton = Instance.new("TextButton")

	TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.BackgroundTransparency = 0.8
	TextButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
	TextButton.Size = UDim2.new(1, 0, 0, 24)
	TextButton.Font = Enum.Font.SourceSans
	TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextButton.TextScaled = true
	TextButton.TextWrapped = true
	TextButton.Parent = Frame

	local Scroll = Instance.new("Frame", Frame)
	local layout = Instance.new("UIListLayout", Scroll)
	layout.Padding = UDim.new(0, 2)
	layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

	Scroll.Size = UDim2.fromScale(1, 0)
	Scroll.AutomaticSize = Enum.AutomaticSize.Y
	Scroll.Position = UDim2.new(0, 0, 0, 24)
	Scroll.Name = "List"
	Scroll.BackgroundTransparency = 1

	return Frame
end

--warn("319-3891203euyhj89ewrhfjsdrugfvnd")
--local function makelist(name, data)
--	local list = makelistitem()
--	list.TextButton.Text = name

--	print(name)

--	for i,v in pairs(data) do
--		print(v, v.ClassName)

--		if not v:IsA('StringValue') then
--			continue
--		end

--		warn(v.Value)

--		local id = v.Value
--		local n = v.Name

--		local button = makebutton()
--		button.Text = n .. " / " .. tostring(id)

--		button.Visible = false
--		button.Parent = list.List
--		button.Size = UDim2.new(0.5, 0, 0, 22)
--		button.Position = UDim2.fromScale(0.5, 0)
--		button.AnchorPoint = Vector2.new(0.5, 0)

--		button.Activated:Connect(function()
--			stopallanim()
--			playanimid(id)
--			TextLabel.Text = id
--		end)

--		list.TextButton.Activated:Connect(function()
--			button.Visible = not button.Visible
--		end)
--	end

--	return list
--end

--for i,v in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
--	if v:IsA"Animation" then
--		local parent1 = v.Parent
--		local parent2 = parent1.Parent
--		local parent3 = parent2.Parent

--		print(v)
--		print(parent1, parent2, parent3)
--		break
--	end
--end

local actiontree = Instance.new("ScrollingFrame", ViewportFrame)
actiontree.Visible = false
actiontree.Size = UDim2.fromScale(1, 1)
actiontree.BackgroundTransparency = 1

local list = Instance.new("UIListLayout", actiontree)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

Search:GetPropertyChangedSignal("Text"):Connect(function()
	if Search.Text == "" then
		for i,v in pairs(ScrollingFrame:GetDescendants()) do
			if v:IsA("TextButton") then
				v.Visible = true
			end
		end
	else
		--for i,v in pairs(actiontree:GetChildren()) do
		--	v.Visible = (not not (v.Name:lower():find(Search.Name:lower()))) or v.Name == tostring(Search.Text)
		--end

		for i,v in pairs(ScrollingFrame:GetDescendants()) do
			if v:IsA("TextButton") then
				v.Visible = (not not (v.Text:lower():find(Search.Text:lower()))) or v.Name == tostring(Search.Text)
			end
		end
	end
end)

local function x(t)
	TextLabel_3.Text = t
	TextLabel_2.Text = t
end

local function h(f)
	f.Size = UDim2.fromScale(1, 0)
	f.AutomaticSize = Enum.AutomaticSize.Y
	f.BackgroundTransparency = 1
end

x("Action animations")

local Actions = Instance.new("Frame", ScrollingFrame)
h(Actions)
local list = Instance.new("UIListLayout", Actions)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center
list.SortOrder = Enum.SortOrder.LayoutOrder

local BattleFeedback = Instance.new("Frame", ScrollingFrame)
BattleFeedback.Visible = false
local list = Instance.new("UIListLayout", BattleFeedback)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(BattleFeedback)

local Gestures = Instance.new("Frame", ScrollingFrame)
Gestures.Visible = false
local list = Instance.new("UIListLayout", Gestures)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(Gestures)

local StyleAnimations = Instance.new("Frame", ScrollingFrame)
StyleAnimations.Visible = false
local list = Instance.new("UIListLayout", StyleAnimations)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(StyleAnimations)

local Sounds = Instance.new("Frame", ScrollingFrame)
Sounds.Visible = false
local list = Instance.new("UIListLayout", Sounds)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(Sounds)

local Bots = Instance.new("Frame", ScrollingFrame)
Bots.Visible = false
local list = Instance.new("UIListLayout", Bots)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(Bots)

local Bots2 = Instance.new("Frame", ScrollingFrame)
Bots2.Visible = false
local list = Instance.new("UIListLayout", Bots2)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(Bots2)

local DungeonViewer = Instance.new("Frame", ScrollingFrame)
DungeonViewer.Visible = false
local list = Instance.new("UIListLayout", DungeonViewer)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(DungeonViewer)

local Prompts = Instance.new("Frame", ScrollingFrame)
Prompts.Visible = false
local list = Instance.new("UIListLayout", Prompts)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(Prompts)

local Styles = Instance.new("Frame", ScrollingFrame)
Styles.Visible = false
local list = Instance.new("UIListLayout", Styles)
list.Padding = UDim.new(0, 8)
list.HorizontalAlignment = Enum.HorizontalAlignment.Center

h(Styles)

local function clear()
	for i,v in pairs(ScrollingFrame:GetChildren()) do
		if v:IsA("Frame") then
			v.Visible = false
		end
	end
end

local b4 = uis.InputBegan:Connect(function(i, g)
	if uis:GetFocusedTextBox() then
		return
	end

	if not ScreenGui.Enabled then
		return
	end

	if i.KeyCode == Enum.KeyCode.One then

		clear()

		Actions.Visible = true
		x("Action animations")
	elseif i.KeyCode == Enum.KeyCode.Two then
		clear()

		BattleFeedback.Visible = true
		x("Battle feedback animations")
	elseif i.KeyCode == Enum.KeyCode.Three then
		clear()

		Gestures.Visible = true
		x("Gesture animations")
	elseif i.KeyCode == Enum.KeyCode.Four then
		clear()

		StyleAnimations.Visible = true
		x("Style animations")
	elseif i.KeyCode == Enum.KeyCode.Five then
		clear()

		Sounds.Visible = true
		x("Sound effects")
	elseif i.KeyCode == Enum.KeyCode.Six then
		clear()

		Bots.Visible = true
		x("Unplayed battles")
	elseif i.KeyCode == Enum.KeyCode.Seven then
		clear()

		Bots2.Visible = true
		x("Ongoing battles")
	elseif i.KeyCode == Enum.KeyCode.Eight then
		clear()

		DungeonViewer.Visible = true
		x("Dungeons")
	elseif i.KeyCode == Enum.KeyCode.Nine then
		clear()

		Prompts.Visible = true
		x("Prompt")
	elseif i.KeyCode == Enum.KeyCode.Zero then
		clear()

		Styles.Visible = true
		x("Styles")
	end
end)

local function get_battlestarter(bot)
	local z = bot:WaitForChild("MyArena", 5)

	if (not z or not z.Value) or not z.Value:FindFirstChild("BattleStarter") then
		return nil
	end

	local MyArena = z.Value
	local BattleStarter = MyArena.BattleStarter.Value

	return BattleStarter
end

local function CanJoinPlayer(Player)
	local self = game.Players.LocalPlayer

	local PartyUsers = Player.Status.Parties:GetChildren()

	for i,v in pairs(PartyUsers) do
		if v.Name == Player.Name then
			return true
		end
	end

	return not Player.Status.Settings.PreventJoin.Value
end

local function LVL(Player)
	local status = Player.Status

	if status.Resets.Value ~= 0 then
		return 100
	end

	return status.Level.Value
end

local function handle_ongoingbattles(button, bot)
	button.Visible = false
	local BattleStarter = get_battlestarter(bot)

	if not BattleStarter then
		button:Destroy()
		return
	else
		button.Visible = true
	end

	local Status = BattleStarter.Status
	local Settings = Status.Settings

	if not CanJoinPlayer(BattleStarter) then
		button.BackgroundColor3 = Color3.new(1, 0.5, 0.5)
		button.BackgroundTransparency = 0.5
	end

	local function update()
		if not CanJoinPlayer(BattleStarter) then
			button.BackgroundColor3 = Color3.new(1, 0.5, 0.5)
			button.BackgroundTransparency = 0.5
		else
			button.BackgroundColor3 = Color3.new(1, 1, 1)
			button.BackgroundTransparency = 0.8
		end
	end

	local b1 = Status.Parties.ChildAdded:Connect(update)
	local b2 = Status.Parties.ChildRemoved:Connect(update)

	local b3 = Settings.PreventJoin.Changed:Connect(update)

	button.Destroying:Once(function()
		b1:Disconnect()
		b2:Disconnect()
		b3:Disconnect()
	end)
end

local function bot_added(v)
	local button = makebutton()

	button.Text = v.Name
	button.Name = v.Name
	button.Parent = Bots

	button.InputBegan:Connect(function(i)
		if i.UserInputType == Enum.UserInputType.MouseButton2 or i.UserInputType == Enum.UserInputType.MouseButton1 then
			local oldpivot = character:GetPivot()
			character:PivotTo(v:GetPivot())
			if not v:FindFirstChild"InBattle" then
				task.wait()
				character:PivotTo(oldpivot)
			end
		end
	end)

	if v:FindFirstChild("InBattle") and button.Parent ~= nil then
		button.Parent = Bots2

		if get_battlestarter(v) then
			button.Text = v.Name .. " Begun by "..get_battlestarter(v).DisplayName.." LV "..LVL(get_battlestarter(v)).." AT "..get_battlestarter(v).Status.Location.Value
		end
		handle_ongoingbattles(button, v)
	else
		v.ChildAdded:Connect(function(newinstance)
			if newinstance.Name == "InBattle" then
				button.Parent = Bots2

				if get_battlestarter(v) then
					button.Text = v.Name .. " Begun by "..get_battlestarter(v).DisplayName.." LV "..LVL(get_battlestarter(v)).." AT "..get_battlestarter(v).Status.Location.Value
				end
				handle_ongoingbattles(button, v)
			end
		end)
	end

	v.Destroying:Once(function()
		button:Destroy()
	end)
end

local b6
task.spawn(function()
	b6 = game:GetService("RunService").Heartbeat:Connect(function()
		local same_category = {
			Bots2 = {

			},

			Bots = {

			}
		}

		local function add(self, x)
			if not self[x.Name] then
				self[x.Name] = {}
			else
				table.insert(self[x.Name], x)
			end
		end

		for i,v in pairs(Bots2:GetChildren()) do
			if v:IsA("TextButton") then
				add(same_category.Bots2, v)
			end
		end

		for i,v in pairs(Bots:GetChildren()) do
			if v:IsA("TextButton") then
				add(same_category.Bots, v)
			end
		end

		for i,v in pairs(same_category) do
			for i,v in pairs(v) do
				for i,v in pairs(v) do
					v.Visible = false
				end

				v.Visible = true
			end
		end
	end)

	for i,v in pairs(workspace.Bots.AI:GetChildren()) do
		bot_added(v)
	end
end)

local function changestyle(newstyle)
	-- Script generated by SimpleSpy - credits to exx#9394

	local args = {
		[1] = {
			[1] = "changestyle",
			[2] = newstyle
		}
	}

	game:GetService("ReplicatedStorage").Events.ME:FireServer(unpack(args))
end

task.spawn(function()

	for i,v in pairs(workspace.Map.MiniQuests:GetChildren()) do
		if v:IsA("Model") then
			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame

			local prompt = v.HumanoidRootPart:FindFirstChild("DungeonPrompt")

			if not prompt then
				continue
			end

			local button = makebutton()
			button.Text = v.Name
			button.Name = v.Name

			button.Parent = Prompts

			button.InputBegan:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton2 then
					fireproximityprompt(prompt)
				end
			end)

			button.Activated:Connect(function()
				fireproximityprompt(prompt)
			end)
		end
	end
end)

local b5 = workspace.Bots.AI.ChildAdded:Connect(bot_added)
task.spawn(function()

	for i,v in pairs(workspace.Map.Dungeons:GetChildren()) do
		if v:IsA("Folder") then
			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame

			local button = makebutton()
			button.Text = v.Name
			button.Name = v.Name

			button.Parent = DungeonViewer

			button.InputBegan:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton2 then
					fireproximityprompt(v.Prompt.DungeonPrompt)
				end
			end)

			button.Activated:Connect(function()
				fireproximityprompt(v.Prompt.DungeonPrompt)
			end)
		end
	end
end)
task.spawn(function()

	for i,v in pairs(game:GetService("ReplicatedStorage").Sounds:GetChildren()) do
		if v:IsA("StringValue") then
			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame

			local id = v.Value

			local button = makebutton()
			button.Text = v.Name .. " " .. '<font transparency="0.5">'..tostring(id).."</font>"
			button.Name = id

			button.Parent = Sounds
			--button.Size = UDim2.new(0.5, 0, 0, 22)
			--button.Position = UDim2.fromScale(0.5, 0)
			--button.AnchorPoint = Vector2.new(0.5, 0)

			button.InputBegan:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton2 then
					game.ReplicatedStorage.ScriptEvents.rplaysound:Fire(v.Name)
					TextLabel.Text = v.Name .. " / "..tostring(id)
				end
			end)

			local sfx = Instance.new("Sound", nil)

			sfx.SoundId = id

			for i,v in pairs(v:GetChildren()) do
				sfx[v.Name] = v.Value
			end

			button.Activated:Connect(function()
				game.SoundService:PlayLocalSound(sfx)
				TextLabel.Text = v.Name .. " / "..tostring(id)
			end)
		end
	end
end)
task.spawn(function()

	for i,v in pairs(game:GetService("ReplicatedStorage").BattleFeedback:GetDescendants()) do
		if v:IsA("Animation") then
			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame

			local id = v.AnimationId
			local n = v.Parent.Name

			local button = makebutton()
			button.Text = v.Name .. " " .. '<font transparency="0.5">'..tostring(id).."</font>"
			button.Name = id

			button.Parent = BattleFeedback
			--button.Size = UDim2.new(0.5, 0, 0, 22)
			--button.Position = UDim2.fromScale(0.5, 0)
			--button.AnchorPoint = Vector2.new(0.5, 0)

			button.InputBegan:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton2 then
					local v = playanimid(id, character.Humanoid)
					v.Looped = false
				end
			end)

			button.Activated:Connect(function()
				stopallanim()
				playanimid(id)
				TextLabel.Text = v.Name .. " / "..tostring(id)
			end)
		end
	end
end)
task.spawn(function()

	for i,v in pairs(game:GetService("ReplicatedStorage").Gestures:GetDescendants()) do
		if v:IsA("Animation") then
			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame

			local id = v.AnimationId
			local n = v.Parent.Name

			local button = makebutton()
			button.Text = v.Name .. " " .. '<font transparency="0.5">'..tostring(id).."</font>"
			button.Name = id

			button.Parent = Gestures
			--button.Size = UDim2.new(0.5, 0, 0, 22)
			--button.Position = UDim2.fromScale(0.5, 0)
			--button.AnchorPoint = Vector2.new(0.5, 0)

			button.InputBegan:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton2 then
					local v = playanimid(id, character.Humanoid)
					v.Looped = false
				end
			end)

			button.Activated:Connect(function()
				stopallanim()
				playanimid(id)
				TextLabel.Text = v.Name .. " / "..tostring(id)
			end)
		end
	end
end)

task.spawn(function()
	for i,v in pairs(game:GetService("ReplicatedStorage").Styles:GetDescendants()) do
		if v:IsA("Animation") then
			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame

			local id = v.AnimationId
			local n = v.Parent.Name

			local button = makebutton()
			button.Text = v.Name .. " " .. '<font transparency="0.5">'..tostring(id).."</font>"
			button.Name = id

			button.Parent = StyleAnimations
			--button.Size = UDim2.new(0.5, 0, 0, 22)
			--button.Position = UDim2.fromScale(0.5, 0)
			--button.AnchorPoint = Vector2.new(0.5, 0)

			button.InputBegan:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton2 then
					local v = playanimid(id, character.Humanoid)
					v.Looped = false
				end
			end)

			button.Activated:Connect(function()
				stopallanim()
				playanimid(id)
				TextLabel.Text = v.Name .. " / "..tostring(id)
			end)
		end
	end
end)

-- Gui to Lua
-- Version: 3.2

-- Instances:

local TextBox = Instance.new("TextBox")

--Properties:
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.BackgroundTransparency = 1.000
TextBox.Size = UDim2.new(1, 0, 0, 32)
TextBox.ClearTextOnFocus = false
TextBox.Font = Enum.Font.SourceSansBold
TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TextBox.TextScaled = true
TextBox.TextSize = 14.000
TextBox.TextWrapped = true
TextBox.TextXAlignment = Enum.TextXAlignment.Left
TextBox.ZIndex = 12

-- Gui to Lua
-- Version: 3.2

-- Instances:

local UIListLayout = Instance.new("UIListLayout")

--Properties:

ViewportFrame.InputBegan:Connect(function(i)
	if i.UserInputType == Enum.UserInputType.MouseButton2 then
		actiontree.Visible = not actiontree.Visible
	end
end)

actiontree.Parent = ViewportFrame
actiontree.ZIndex = 10
actiontree.Active = true
actiontree.Visible = false
actiontree.BackgroundColor3 = Color3.fromRGB(66, 66, 66)
actiontree.BackgroundTransparency = 0
actiontree.BorderSizePixel = 2
actiontree.Size = UDim2.new(1, 0, 1, 0)
actiontree.CanvasSize = UDim2.new(0, 0, 0, 0)
actiontree.HorizontalScrollBarInset = Enum.ScrollBarInset.ScrollBar
actiontree.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
actiontree.AutomaticCanvasSize = Enum.AutomaticSize.Y

UIListLayout.Parent = actiontree
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

local tooltip = Instance.new("TextLabel", ScreenGui)
tooltip.BackgroundTransparency = 0.75
tooltip.BackgroundColor3 = Color3.new(0, 0, 0)
tooltip.TextColor3 = Color3.new(1,1,1)
tooltip.TextStrokeTransparency = 1
tooltip.TextScaled = true
tooltip.Size = UDim2.fromScale(0.2, 0.2)
tooltip.ZIndex = 360
tooltip.Visible = false

local ti = TweenInfo.new(0.3, Enum.EasingStyle.Quad)
local fadeout = ts:Create(tooltip, ti, {TextTransparency = 1, BackgroundTransparency = 1})
local fadein = ts:Create(tooltip, ti, {TextTransparency = 0, BackgroundTransparency = 0.75})

Instance.new("UIAspectRatioConstraint", tooltip).AspectRatio = 6

local function create_tab(v, Func, ...)

	local Title = v.Name
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local Frame = Instance.new("Frame")
	local TextBox = Instance.new("TextBox")
	local Items = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local TextBox_2 = Instance.new("TextBox")
	local TextButton = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UIPadding = Instance.new("UIPadding")
	local UIPadding_2 = Instance.new("UIPadding")

	--Properties:

	Frame.ZIndex = 300
	Frame.Size = UDim2.new(1, 0, 0, 32)
	Frame.BackgroundTransparency = 1
	Frame.AutomaticSize = Enum.AutomaticSize.Y

	TextBox.Parent = Frame
	TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BackgroundTransparency = 0.8
	TextBox.Size = UDim2.new(1, 0, 0, 32)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.SourceSansBold
	TextBox.Text = Title
	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextSize = 32.000
	TextBox.TextWrapped = true
	TextBox.TextEditable = true
	TextBox.TextXAlignment = Enum.TextXAlignment.Left
	TextBox.TextYAlignment = Enum.TextYAlignment.Center
	TextBox.ZIndex = 300

	TextBox.FocusLost:Connect(function()
		pcall(function()
			v.Name = TextBox.Text
		end)

		TextBox.Text = v.Name
	end)

	TextBox.MouseEnter:Connect(function()
		tooltip.Visible = true

		task.wait()
		fadein:Play()

		tooltip.Text = TooltipData[Title]
		tooltip.Name = Title
	end)

	TextBox.MouseLeave:Connect(function()
		fadeout:Play()
	end)	
	Instance.new("UICorner", TextBox)

	Items.Name = "Items"
	Items.Parent = nil
	Items.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	Items.BackgroundTransparency = 1
	Items.Position = UDim2.new(0, 12, 0, 32)
	Items.Size = UDim2.new(1, -12, 0, 0)
	Items.ZIndex = 300
	Items.Visible = false

	UIListLayout.Parent = Items
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	TextButton.Parent = Frame
	TextButton.AnchorPoint = Vector2.new(1, 0)
	TextButton.BackgroundColor3 = Color3.fromRGB(113, 107, 124)
	TextButton.Position = UDim2.new(1, -12, 0, 4)
	TextButton.Size = UDim2.new(0.300000012, 0, 0, 32-8)
	TextButton.Font = Enum.Font.ArialBold
	TextButton.Text = "OPEN"
	TextButton.TextColor3 = Color3.fromRGB(231, 231, 231)
	TextButton.TextScaled = true
	TextButton.TextSize = 14.000
	TextButton.TextStrokeTransparency = 0.000
	TextButton.TextWrapped = true
	TextButton.ZIndex = 300

	Frame.Destroying:Once(function()
		Items:Destroy()
	end)

	TextButton.Activated:Connect(function()
		--local success = false
		--for i,v in pairs(Items:GetChildren()) do
		--	if v:IsA("TextBox") then
		--		success = true
		--		break
		--	end
		--end

		--if not success then
		--	return
		--end

		if Items.Visible then
			Items.Parent = nil
			Items.Visible = false

			TextButton.Text = "OPEN"
		else
			Items.Parent = Frame
			Items.Visible = true

			local y = 0
			for i,v in pairs(Items:GetChildren()) do
				if v:IsA("TextBox") then
					y = y + v.AbsoluteSize.Y
				end
			end

			Items.Size = UDim2.new(1, -12, 0, y)

			TextButton.Text = "CLOSE"
		end
	end)

	UICorner.Parent = TextButton

	UIPadding.Parent = TextButton
	UIPadding.PaddingTop = UDim.new(0, 4)

	UIPadding_2.Parent = TextBox
	UIPadding_2.PaddingRight = UDim.new(0.200000003, 0)

	if Func then
		local x = Func(TextButton, ...)
		local poffset_scale = 0
		local poffset_offset = 0
		for i,x in pairs(x) do
			x.Position = UDim2.new(1 - x.Size.X.Scale + poffset_scale, -12 - (x.Size.X.Offset + (4+poffset_offset)), 0, 4)
			x.Parent = TextButton.Parent
			poffset_scale = poffset_scale - x.Size.X.Scale
			poffset_offset = poffset_offset + 4
		end
	end

	return Frame, Items
end

local label = Instance.new("TextLabel", ViewportFrame)

label.Visible = false
label.Size = UDim2.fromScale(1, 0.15)
label.Position = UDim2.fromScale(0.5, 0.5)
label.AnchorPoint = Vector2.new(0.5, 0.5)
label.Text = "Right click to view heat action stats"
label.BackgroundTransparency = 1
label.TextScaled = true
label.ZIndex = ViewportFrame.ZIndex + 1
label.TextColor3 = Color3.new(1, 1, 1)

Actions:GetPropertyChangedSignal("Visible"):Connect(function()
	if not Actions.Visible then
		actiontree.Visible = false
		label.Text = ""	
	else
		label.Text = "Right click to view heat action stats"
	end
end)

ViewportFrame.MouseEnter:Connect(function()
	label.Visible = true
end)

ViewportFrame.MouseLeave:Connect(function()
	label.Visible = false
end)

--task.spawn(function()
--	for i,v in pairs(game:GetService("ReplicatedStorage").Moves:GetDescendants()) do
--		if v:IsA("Animation") then
--			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame

--			local id = v.AnimationId
--			local n = v.Parent.Name

--			local button = makebutton()
--			button.Text = n .. " " .. '<font transparency="0.5">'..tostring(id).."</font>"
--			button.Name = id

--			--<font transparency="0.5">50% transparency</font>

--			button.Parent = Actions
--			--button.Size = UDim2.new(0.5, 0, 0, 22)
--			--button.Position = UDim2.fromScale(0.5, 0)
--			--button.AnchorPoint = Vector2.new(0.5, 0)

--			button.InputBegan:Connect(function(i)
--				if i.UserInputType == Enum.UserInputType.MouseButton2 then
--					local v = playanimid(id, character.Humanoid)
--					v.Looped = false
--				end
--			end)

--			button.Activated:Connect(function()
--				stopallanim()
--				playanimid(id)

--				TextLabel.Text = n .. " / "..tostring(id)

--				for i,v in pairs(ScrollingFrame:GetChildren()) do
--					if not v:IsA"UIListLayout" then
--						v:Destroy()
--					end
--				end

--				local data = {
--					value = "Value",
--					animation = "AnimationId",
--				}

--				local function iterate(v, p)
--					for i,v in pairs(v:GetChildren()) do
--						if #v:GetChildren() > 0 then
--							local t, items = create_tab(v.Name)
--							t.Parent = p or ScrollingFrame

--							iterate(v, items)
--						elseif v:IsA("Folder") then
--							local box = TextBox:Clone()
--							box.Parent = p or ScrollingFrame
--							box.Text = " * "..v.Name
--						else
--							local box = TextBox:Clone()
--							box.Parent = p or ScrollingFrame
--							box.Text = v.Name

--							for indpairs(ex,p) in data do
--								if v.ClassName:lower():find(index) then
--									box.Text = v.Name ..": "..v[p]
--								end
--							end
--						end
--					end
--				end

--				iterate(v.Parent)
--			end)
--		end
--	end
--end)

-- Gui to Lua
-- Version: 3.2

-- Instances:

local Frame2 = Instance.new("Frame")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Shadow = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local UIPadding = Instance.new("UIPadding")
local TextLabel = Instance.new("TextLabel")
local UIPadding_2 = Instance.new("UIPadding")
local Class = Instance.new("TextBox")
local UIPadding_3 = Instance.new("UIPadding")
local OK = Instance.new("TextButton")
local Cancel = Instance.new("TextButton")
local X = Instance.new("ImageButton")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")

--Properties:

Frame2.Parent = ScreenGui
Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame2.BackgroundColor3 = Color3.fromRGB(229, 229, 229)
Frame2.BorderSizePixel = 0
Frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame2.Size = UDim2.new(0.400000006, 0, 0.200000003, 0)
Frame2.ZIndex = 400
Frame2.Visible = false

UIAspectRatioConstraint.Parent = Frame2
UIAspectRatioConstraint.AspectRatio = 4.000

Shadow.Name = "Shadow"
Shadow.Parent = Frame2
Shadow.AnchorPoint = Vector2.new(0.5, 0.5)
Shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Shadow.BackgroundTransparency = 1.000
Shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
Shadow.Size = UDim2.new(1, 16, 1, 16)
Shadow.ZIndex = 399
Shadow.Image = "rbxasset://textures/StudioUIEditor/resizeHandleDropShadow.png"
Shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
Shadow.ImageTransparency = 0.500
Shadow.ScaleType = Enum.ScaleType.Slice
Shadow.SliceCenter = Rect.new(4, 2, 12, 14)

Title.Name = "Title"
Title.Parent = Frame2
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(1, 0, 0, 24)
Title.ZIndex = 401
Title.Font = Enum.Font.Arial
Title.Text = "Dialog"
Title.TextColor3 = Color3.fromRGB(0, 0, 0)
Title.TextSize = 20.000
Title.TextXAlignment = Enum.TextXAlignment.Left

UIPadding.Parent = Title
UIPadding.PaddingBottom = UDim.new(0, 2)
UIPadding.PaddingLeft = UDim.new(0, 4)
UIPadding.PaddingTop = UDim.new(0, 2)

TextLabel.Parent = Frame2
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0400101095, 0, 0.395889521, -2)
TextLabel.Size = UDim2.new(0.157681853, 0, 0, 24)
TextLabel.ZIndex = 401
TextLabel.Font = Enum.Font.Arial
TextLabel.Text = "Class:"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 18.000
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

UIPadding_2.Parent = TextLabel
UIPadding_2.PaddingBottom = UDim.new(0, 4)
UIPadding_2.PaddingLeft = UDim.new(0, 4)

Class.Name = "Class"
Class.Parent = Frame2
Class.Active = false
Class.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Class.BorderSizePixel = 0
Class.Position = UDim2.new(0.19794476, 0, 0.395889521, 0)
Class.Selectable = false
Class.Size = UDim2.new(0.513561308, 0, 0, 24)
Class.ZIndex = 401
Class.ClearTextOnFocus = false
Class.Font = Enum.Font.Arial
Class.Text = "Part"
Class.TextColor3 = Color3.fromRGB(0, 0, 0)
Class.TextSize = 20.000
Class.TextXAlignment = Enum.TextXAlignment.Left

UIPadding_3.Parent = Class
UIPadding_3.PaddingBottom = UDim.new(0, 2)
UIPadding_3.PaddingLeft = UDim.new(0, 4)
UIPadding_3.PaddingTop = UDim.new(0, 2)

OK.Name = "OK"
OK.Parent = Frame2
OK.Active = true
OK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OK.BorderSizePixel = 0
OK.Position = UDim2.new(0.762297869, 0, 0.395889521, -2)
OK.Selectable = false
OK.Size = UDim2.new(0.166105032, 0, 0, 24)
OK.ZIndex = 401
OK.Font = Enum.Font.Arial
OK.Text = "OK"
OK.TextColor3 = Color3.fromRGB(0, 0, 0)
OK.TextSize = 18.000

Cancel.Name = "Cancel"
Cancel.Parent = Frame2
Cancel.Active = true
Cancel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cancel.BorderSizePixel = 0
Cancel.Position = UDim2.new(0.762000024, 0, 0.690700829, -2)
Cancel.Selectable = false
Cancel.Size = UDim2.new(0.166105032, 0, 0, 24)
Cancel.ZIndex = 401
Cancel.Font = Enum.Font.Arial
Cancel.Text = "Cancel"
Cancel.TextColor3 = Color3.fromRGB(0, 0, 0)
Cancel.TextSize = 18.000

X.Name = "X"
X.Parent = Frame2
X.Active = true
X.AnchorPoint = Vector2.new(1, 0)
X.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
X.BackgroundTransparency = 1.000
X.BorderSizePixel = 0
X.Position = UDim2.new(1, -6, 0, 6)
X.Selectable = false
X.Size = UDim2.new(0.0715970472, 0, 0, 12)
X.ZIndex = 401
X.Image = "rbxasset://textures/ui/InspectMenu/x.png"
X.ImageColor3 = Color3.fromRGB(0, 0, 0)
X.ScaleType = Enum.ScaleType.Fit

UIAspectRatioConstraint_2.Parent = X

-- attributes

X:SetAttribute("Animation", 'FadeIn')
Title:SetAttribute("Animation", 'FadeIn')
Shadow:SetAttribute("Animation", 'FadeIn')

local function darken(color, strength)
	local h,s,v = color:ToHSV()

	return Color3.fromHSV(h, s, math.clamp(v * (1-strength), 0, 1))
end

local function get_screensize()
	return workspace.CurrentCamera.ViewportSize
end

local data = {
	FadeIn = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut),
	ComingIn = TweenInfo.new(1.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
}

local animations = {
	FadeOut = function(v:Frame)
		local p = v.Position
		local BGTransparency = v.BackgroundTransparency
		local Color = v.BackgroundColor3

		local propertites = {BackgroundColor3 = darken(v.BackgroundColor3, 0.1), Position = UDim2.new(v.Position.X.Scale, v.Position.X.Offset, v.Position.Y.Scale, v.Position.Y.Offset - 8), BackgroundTransparency = 1}

		local j = v.ClassName:lower()

		local extra = {}

		if j:find("text") then
			propertites.TextTransparency = 1
			extra.TextTransparency = v.TextTransparency
		elseif j:find("image") then
			propertites.ImageTransparency = 1
			extra.ImageTransparency = v.ImageTransparency
		end

		local tween = ts:Create(v, data.FadeIn, propertites)

		tween:Play()

		tween.Completed:Once(function()
			v.Visible = false

			for i2,v2 in pairs(extra) do
				v[i2] = v2
			end

			v.Position = p
			v.BackgroundTransparency = BGTransparency
			v.BackgroundColor3 = Color
		end)

		return tween
	end,

	FadeIn = function(v:Frame)
		local p = v.Position
		local BGTransparency = v.BackgroundTransparency
		local Color = v.BackgroundColor3

		v.BackgroundTransparency = 1
		v.Position = UDim2.new(v.Position.X.Scale, v.Position.X.Offset, v.Position.Y.Scale, v.Position.Y.Offset - 8)
		v.BackgroundColor3 = darken(v.BackgroundColor3, 0.1)

		local propertites = {BackgroundColor3 = Color, Position = p, BackgroundTransparency = BGTransparency}

		local j = v.ClassName:lower()

		if j:find("text") then
			propertites.TextTransparency = v.TextTransparency
			v.TextTransparency = 1
		elseif j:find("image") then
			propertites.ImageTransparency = v.ImageTransparency
			v.ImageTransparency = 1
		end

		local tween = ts:Create(v, data.FadeIn, propertites)

		tween:Play()
		return tween
	end,

	FromRight = function(v)
		local p = v.Position
		local BGTransparency = v.BackgroundTransparency

		v.BackgroundTransparency = v.BackgroundTransparency + 0.3
		v.Position = UDim2.new(v.Position.X.Scale, v.Position.X.Offset + get_screensize().X, v.Position.Y.Scale, v.Position.Y.Offset)

		local tween = ts:Create(v, data.ComingIn, {Position = p, BackgroundTransparency = BGTransparency})

		tween:Play()
		return tween
	end,

	FromLeft = function(v)
		local p = v.Position
		local BGTransparency = v.BackgroundTransparency

		v.BackgroundTransparency = v.BackgroundTransparency + 0.3
		v.Position = UDim2.new(v.Position.X.Scale, v.Position.X.Offset - get_screensize().X, v.Position.Y.Scale, v.Position.Y.Offset)

		local tween = ts:Create(v, data.ComingIn, {Position = p, BackgroundTransparency = BGTransparency})

		tween:Play()
		return tween
	end,

	FromUp = function(v)
		local p = v.Position
		local BGTransparency = v.BackgroundTransparency

		v.BackgroundTransparency = v.BackgroundTransparency + 0.3
		v.Position = UDim2.new(v.Position.X.Scale, v.Position.X.Offset, v.Position.Y.Scale, v.Position.Y.Offset - get_screensize().Y)

		local tween = ts:Create(v, data.ComingIn, {Position = p, BackgroundTransparency = BGTransparency})

		tween:Play()
		return tween
	end,

	FromDown = function(v)
		local p = v.Position
		local BGTransparency = v.BackgroundTransparency

		v.BackgroundTransparency = v.BackgroundTransparency + 0.3
		v.Position = UDim2.new(v.Position.X.Scale, v.Position.X.Offset, v.Position.Y.Scale, v.Position.Y.Offset + get_screensize().Y)

		local tween = ts:Create(v, data.ComingIn, {Position = p, BackgroundTransparency = BGTransparency})

		tween:Play()
		return tween
	end,
}

local function playanim(v)
	v.Visible = true
	animations.FadeIn(v)

	local random = {
		"Down",
		"Up",
		"Left",
		"Right"
	}

	local index = 1

	for i,v in pairs(v:GetDescendants()) do
		if v:IsA("GuiObject") then
			local at = v:GetAttribute("Animation")

			index = index + 1

			if index > 4 then
				index = 1
			end

			if at then
				animations[at](v)
			else
				local x = animations["From"..random[index]]

				x(v)
			end
		end
	end
end

local function hide()
	if Frame2.Visible then
		--animations.FadeOut(Frame2)

		--for i,v in pairs(Frame2:GetDescendants()) do
		--	if v:IsA("GuiObject") then
		--		animations.FadeOut(v)
		--	end
		--end

		Frame2.Visible = false
	end
end

local function show_objectinserter()
	playanim(Frame2)
	Class.Text = "Part"
end

local function does_classname_exist(classname)
	local d = Instance.new(classname)

	if d then
		d:Destroy()
		return true
	end

	return false
end

local class = Class.Text
local ObjectToSpawn
local function enable_instanceadder(Object)
	show_objectinserter()

	ObjectToSpawn = Object

	local c1 = Class:GetPropertyChangedSignal("Text"):Connect(function()
		local successful, result = pcall(function()
			return does_classname_exist(Class.Text)
		end)

		class = Class.Text

		if successful and result then
			Class.TextColor3 = Color3.new(0, 0, 0)
		else
			Class.TextColor3 = Color3.new(255, 0, 0)
		end
	end)


end

OK.Activated:Connect(function()
	Instance.new(class, ObjectToSpawn)
end)

Cancel.Activated:Connect(hide)
OK.Activated:Connect(hide)
X.Activated:Connect(hide)

fadeout.Completed:Connect(function(p)
	if p == Enum.PlaybackState.Completed then
		tooltip.Visible = false
	end
end)

local function modifable_item(Object, Property, ShowProperty)
	-- Gui to Lua
	-- Version: 3.2

	-- Instances:

	local TextBox = Instance.new("TextBox")
	local TextBox_2 = Instance.new("TextBox")

	--Properties:

	TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.BackgroundTransparency = 1.000
	TextBox.Size = UDim2.new(0, 0, 0, 32)
	TextBox.ClearTextOnFocus = false
	TextBox.Font = Enum.Font.SourceSansBold

	TextBox.MouseEnter:Connect(function()
		tooltip.Visible = true

		task.wait()
		fadein:Play()

		tooltip.Text = TooltipData[Object.Name]
		tooltip.Name = Object.Name
	end)

	TextBox.MouseLeave:Connect(function()
		fadeout:Play()
	end)

	if ShowProperty then
		TextBox.Text = Object.Name.."."..Property.." "

		TextBox.Focused:Connect(function()
			TextBox.Text = Object.Name
		end)

		TextBox.FocusLost:Connect(function(e)
			if e then
				Object.Name = TextBox.Text
			end
			TextBox.Text = Object.Name.."."..Property.." "
		end)
	else
		TextBox.Text = Object.Name..": "

		TextBox.Focused:Connect(function()
			TextBox.Text = Object.Name
		end)

		TextBox.FocusLost:Connect(function(e)
			if e then
				Object.Name = TextBox.Text
			end
			TextBox.Text = Object.Name..": "
		end)
	end

	TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox.TextScaled = true
	TextBox.TextSize = 14.000
	TextBox.TextWrapped = true
	TextBox.ZIndex = 300

	TextBox.TextXAlignment = Enum.TextXAlignment.Left

	local function display()
		if typeof(Object[Property]) == 'Color3' then
			local o = Object[Property]
			TextBox_2.Text = math.round(o.R * 255)..", "..math.round(o.G * 255)..", "..math.round(o.B * 255)
		else
			TextBox_2.Text = tostring(Object[Property])
		end
	end

	TextBox_2.Parent = TextBox
	TextBox_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextBox_2.BackgroundTransparency = 1.000
	TextBox_2.Position = UDim2.new(1, 0, 0, 0)
	TextBox_2.Size = UDim2.new(3, 0, 0, 32)
	TextBox_2.ClearTextOnFocus = false
	TextBox_2.Font = Enum.Font.SourceSans
	TextBox_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextBox_2.TextSize = 30.000
	TextBox_2.TextWrapped = true
	TextBox_2.TextXAlignment = Enum.TextXAlignment.Left
	TextBox_2.ZIndex = 300

	TextBox.AutomaticSize = Enum.AutomaticSize.X
	TextBox_2.AutomaticSize = Enum.AutomaticSize.X

	TextBox_2.FocusLost:Connect(function()
		pcall(function()
			if typeof(Object[Property]) == "Color3" then
				local text = TextBox_2.Text
				local spilts = text:split(",")

				for i,v in pairs(spilts) do
					v = v:gsub(" ", "")
				end

				local color = Color3.fromRGB(unpack(spilts))

				Object[Property] = color
			elseif typeof(Object[Property]) == "number" then
				Object[Property] = tonumber(TextBox_2.Text)
			else
				Object[Property] = TextBox_2.Text
			end
		end)

		--TextBox_2.Text = tostring(Object[Property])
		display()
	end)

	display()

	Object:GetPropertyChangedSignal(Property):Connect(display)

	return TextBox
end

local globalscale = 0.5

local function add_button(button, object, scale)
	button.Size = UDim2.new(
		button.Size.X.Scale * (scale or 1) * globalscale,
		button.Size.X.Offset,
		button.Size.Y.Scale,
		button.Size.Y.Offset
	)

	local c = button:Clone()

	c.Text = 'ADD'
	c.Activated:Connect(function()
		enable_instanceadder(object)
	end)

	local c2 = button:Clone()

	c2.Text = 'SAVE'
	c2.Activated:Connect(function()
		sendNotification("Copied to clipboard!")

		-- Compile all styles

		local data = [[]]

		local styles = {
			game.ReplicatedStorage.Styles.Brawler,
			game.ReplicatedStorage.Styles.Rush,
			game.ReplicatedStorage.Styles.Beast
		}


		local tab = [[

]]

		local newcode = convert(object)
		data = data .. newcode .. tab

		for i,v in pairs(object:GetDescendants()) do
			local newcode = convert(v)
			data = data .. newcode .. tab
		end

		setclipboard(data)
	end)

	return {c, c2}
end

local function tree(v, p, scale)
	local tab, list = create_tab(v, add_button, v, scale)
	tab.Parent = p
	tab.Name = v.Name			

	local function iterate(object, parent)
		local function new(v)
			if v.ClassName:lower():find("value") then
				local box = modifable_item(v, "Value")

				box.Name = v.Name
				box.Parent = parent or list
			elseif v.ClassName:lower():find("anim") then
				local box = modifable_item(v, "AnimationId")

				box.Name = v.Name
				box.Parent = parent or list
			else
				if #v:GetChildren() > 0 then
					local tab2, list2 = create_tab(v, add_button, v, scale)
					tab2.Parent = parent or list
					tab2.Name = v.Name

					iterate(v, list2)
				else
					local tab2, list2 = create_tab(v, add_button, v, scale)
					tab2.Parent = parent or list
					tab2.Name = v.Name

					--tab2.BackgroundTransparency = 1
					--list2:Destroy()
					tab2.TextButton.Transparency = 0.5

					object.ChildRemoved:Connect(function()
						if #object:GetChildren() == 0 then
							tab2.TextButton.Transparency = 0.5
						end
					end)

					object.ChildAdded:Connect(function()
						tab2.TextButton.Transparency = 0
					end)
				end
			end
		end

		object.ChildAdded:Connect(new)

		for i,v in pairs(object:GetChildren()) do					
			new(v)
		end
	end

	iterate(v)

	return tab
end

task.spawn(function()
	for i,v in pairs(game:GetService("ReplicatedStorage").Styles:GetChildren()) do
		if v:IsA("Folder") then
			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame
			tree(v, Styles)
		end
	end
end)

local b7 = game:GetService("RunService").RenderStepped:Connect(function()
	if ScreenGui.Enabled or Frame2.Visible then
		uis.MouseIconEnabled = true
	end

	if tooltip.Visible then
		local msloc = uis:GetMouseLocation()
		tooltip.Position = UDim2.fromOffset(msloc.X, msloc.Y)
	end
end)

local x

task.spawn(function()
	for i,v in pairs(game:GetService("ReplicatedStorage").Moves:GetDescendants()) do
		if v:IsA("Animation") then
			--makelist(v.Name, v:GetChildren()).Parent = ScrollingFrame

			local id = v.AnimationId
			local n = v.Parent.Name

			local button = makebutton()
			button.Text = n .. " " .. '<font transparency="0.5">'..tostring(id).."</font>"

			--<font transparency="0.5">50% transparency</font>

			button.Parent = Actions

			local dmg = 0

			for i,v in pairs(v.Parent:GetDescendants()) do
				if v.Name == "Dmg" then
					dmg = dmg + v.Value
				end
			end


			button.LayoutOrder = -dmg

			--button.Size = UDim2.new(0.5, 0, 0, 22)
			--button.Position = UDim2.fromScale(0.5, 0)
			--button.AnchorPoint = Vector2.new(0.5, 0)

			button.InputBegan:Connect(function(i)
				if i.UserInputType == Enum.UserInputType.MouseButton2 then
					local v = playanimid(id, character.Humanoid)
					v.Looped = false
				end
			end)

			button.Activated:Connect(function()
				stopallanim()
				playanimid(id)

				if x then
					x:Destroy()
				end

				x = tree(v.Parent, actiontree, 0.5)

				TextLabel.Text = n .. " / "..tostring(id)
			end)
		end
	end
end)

Frame.Destroying:Once(function()
	b:Disconnect()
	b2:Disconnect()
	b3:Disconnect()
	b4:Disconnect()
	b5:Disconnect()
	b6:Disconnect()
	b7:Disconnect()
	ScreenGui:Destroy()
	for i,v in pairs(ScreenGui:GetDescendants()) do
		pcall(function()
			v:Destroy()
		end)
	end
end)