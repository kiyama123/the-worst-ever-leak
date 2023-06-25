local Parker = game:GetService("ReplicatedStorage").Styles["Brawler"]:Clone()
Parker.Speed.Value = 1.5
Parker.Color.Value = Color3.new(0, 1, 0)
Parker.Rush1.Value = "RPunch1"
Parker.Rush2.Value = "RPunch2"
Parker.Rush3.Value = "RPunch3"
Parker.Rush4.Value = "RPunch2"
Parker.Strike2.Value = "BStrike2"
Parker.Strike3.Value = "BStrike3"
Parker.Strike4.Value = "BStrike4"
Parker.Strike5.Value = "BStrike5"
Parker.VisualName.Value = "Parker"
Parker.Name = "fastidiot"
Parker.Parent = game:GetService("ReplicatedStorage").Styles



Parker.Strike1.Value = "BStrike1"
local styleToChange = "Rush" --Brawler = fisticuffs, Rush = frenzy, Beast = brute.  you MUST use one of these 3 or else you cannot use the custom style.
local styleToChangeTo = "fastidiot" --堂島の龍 is dragon style. you can find the styles at game.ReplicatedStorage.Styles

for i, v in pairs(game.ReplicatedStorage.Styles:FindFirstChild(styleToChange):GetChildren()) do

    v:Destroy()

end

for i, v in pairs(game.ReplicatedStorage.Styles:FindFirstChild(styleToChangeTo):GetChildren()) do
    v = v:Clone()
    v.Parent = game.ReplicatedStorage.Styles[styleToChange]

end

game.StarterGui:SetCore("SendNotification",{
    Title = styleToChangeTo.." style loaded!";
    Text = styleToChangeTo.." style has replaced "..styleToChange..".";
    Button1 = "OK!";
})