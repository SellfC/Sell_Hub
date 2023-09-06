while task.wait() do
task.spawn(function()
for i=1,100 do
task.spawn(function()
local args = {
    [1] = game:GetService("Players").LocalPlayer
}

game:GetService("ReplicatedStorage"):WaitForChild("GameClient"):WaitForChild("Events"):WaitForChild("RemoteEvent"):WaitForChild("RestTimerDaliyChest"):FireServer(unpack(args))
end)
end
end)
end
