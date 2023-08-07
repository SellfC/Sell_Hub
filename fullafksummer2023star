print("executed")
game.ReplicatedStorage.Remote.EquipArtefact:FireServer("Luck",
"CurrentArtefact")
wait(0.1)
print("step1")
game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
    if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
        game:GetService("TeleportService"):Teleport(6299805723)
    end
end)
wait(0.1)
print("step2")
local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
wait(0.1)
print("step3")
game.ReplicatedStorage.Remote.AttemptTravel:InvokeServer("Summer2")
wait(0.1)
print("step4")
-- Get the character
local character = game.Players.LocalPlayer.Character
local humanoid = character:WaitForChild("Humanoid")

-- Define the start and end positions
local startPosition = Vector3.new(4385, -190, -5952)  -- Change to your desired start position
local endPosition = Vector3.new(4320, -186, -5946)    -- Change to your desired end position

-- Function to move the character to the destination
local function moveCharacter()
    humanoid:MoveTo(endPosition)
end

-- Function to teleport the character to the starting position
local function teleportToStart()
    character:SetPrimaryPartCFrame(CFrame.new(startPosition))
end

-- Call the functions
teleportToStart()
wait(1)  -- Wait for 1 second before moving
moveCharacter()
wait(0.1)
print("step5")
game.ReplicatedStorage.Remote.AttemptAvatarEquip:InvokeServer("YhwachBTYBW")
wait(0.1)
print("step6")
while wait(0.1) do
game.ReplicatedStorage.Remote.AttemptMultiOpen:FireServer("Summer2Egg")
game.ReplicatedStorage.Remote.OpenEgg:InvokeServer(game.Workspace.Worlds.Summer2.Summer2Egg,
8)
end
