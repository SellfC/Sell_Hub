local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")

local LocalPlayer = Players.LocalPlayer

getgenv().Settings = {
    Win = false,
    Egg = false,
    Punch = false,
}

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/uBu9Vp35", true))()
local Window = Library:CreateWindow("Sell")

Window:Section("Mikoto norm chel")

Window:Toggle("Auto Win", {}, function(state)
    task.spawn(function()
        Settings.Win = state
        while true do
            if not Settings.Win then return end

            local args = {
    [1] = "Fight",
    [2] = 1,
    [3] = 4
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(args))
wait()
local args = {
    [1] = true
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PushEvent"):FireServer(unpack(args))
wait()
local args = {
    [1] = "Gems",
    [2] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(args))

        end
    end)
end)

Window:Toggle("Auto Egg", {}, function(state)
    task.spawn(function()
        Settings.Egg = state
        while true do
            if not Settings.Egg then return end

            local args = {
    [1] = "1"
}

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
wait()
        end
    end)
end)

Window:Toggle("Auto Punch", {}, function(state)
    task.spawn(function()
        Settings.Punch = state
        while true do
            if not Settings.Punch then return end

            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DamageIncreaseOnClickEvent"):FireServer()
            wait()

        end
    end)
end)

Window:Button("Vitalik lox", function()
    task.spawn(function()
        pcall(function()
            setclipboard("sosi xui")
        end)
    end)
end)

LocalPlayer.Idled:Connect(function()
    VirtualUser:Button2Down(Vector2.new(0,0), Workspace.CurrentCamera.CFrame)
    task.wait()
    VirtualUser:Button2Up(Vector2.new(0,0), Workspace.CurrentCamera.CFrame)
end)
