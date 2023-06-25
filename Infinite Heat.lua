getfenv().Activated = true

local function FillHeat()
    local Event = game:GetService("ReplicatedStorage").Events.ME

    for i=1,6 do
        local A_1 =  {
            [1] = "heat", 
            [2] = game:GetService("ReplicatedStorage").Moves.Taunt
        }
        Event:FireServer(A_1)
    end
end

spawn(function()
    while true do
        task.wait()
        if not Activated then break end
        FillHeat()
    end
end)