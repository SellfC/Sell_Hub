local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")

local LocalPlayer = Players.LocalPlayer

getgenv().Settings = {
    Win = false,
    Egg = false,
    Punch = false,
    PunchSell = false,
    WinSell = false,
}

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/uBu9Vp35", true))()
local Window = Library:CreateWindow("Sell")

Window:Section("Mikoto norm chel i kirill")

Window:Toggle("Auto Win", {}, function(state)
    task.spawn(function()
        Settings.Win = state
        while true do
            if not Settings.Win then return end

            local args = {
    [1] = "Area3",
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FightOver"):FireServer(unpack(args))
wait()
        end
    end)
end)

Window:Toggle("Auto WinSell", {}, function(state)
    task.spawn(function()
        Settings.WinSell = state
        while true do
            if not Settings.WinSell then return end

            local args = {
    [1] = "Area4",
    [2] = 4
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FightOver"):FireServer(unpack(args))
wait()
        end
    end)
end)

Window:Toggle("Auto EventEgg", {}, function(state)
    task.spawn(function()
        Settings.Egg = state
        while true do
            if not Settings.Egg then return end

            local args = {
    [1] = 1,
    [2] = {}
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EggEvent1"):FireServer(unpack(args))
wait()
local args = {
    [1] = "CraftAll"
}

game:GetService("ReplicatedStorage"):WaitForChild("PetSystem"):WaitForChild("PetInventoryHandler"):FireServer(unpack(args))
wait()
        end
    end)
end)

Window:Toggle("Auto Katana", {}, function(state)
    task.spawn(function()
        Settings.Punch = state
        while true do
            if not Settings.Punch then return end

            game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DoAction"):FireServer()
            wait()

        end
    end)
end)

Window:Toggle("Auto PunchSell", {}, function(state)
    task.spawn(function()
        Settings.PunchSell = state
        while true do
            if not Settings.PunchSell then return end

            local args = {
    [1] = "Area5",
    [2] = "PunchingBag",
    [3] = 7
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DoAction"):FireServer(unpack(args))
wait()
        end
    end)
end)

Window:Button("Katana last location", function()
    task.spawn(function()
        pcall(function()
            local args = {
    [1] = "Area5",
    [2] = "Katana",
    [3] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EquipAndUnequipTool"):FireServer(unpack(args))
wait()

        end)
    end)
end)

LocalPlayer.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0,0), Workspace.CurrentCamera.CFrame)
    task.wait()
    VirtualUser:Button2Up(Vector2.new(0,0), Workspace.CurrentCamera.CFrame)
end)
