local styleToChange = "Beast" --Brawler = fisticuffs, Rush = frenzy, Beast = brute.  you MUST use one of these 3 or else you cannot use the custom style.
local styleToChangeTo = "नागराज" --堂島の龍 is dragon style. you can find the styles at game.ReplicatedStorage.Styles

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