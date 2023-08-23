_G.egg = true
while _G.egg == true do 
wait() 
local args = {
    [1] = 1,
    [2] = {}
}

game:GetService("ReplicatedStorage").Remotes.EggEvent1:FireServer(unpack(args))

wait() 
local args = {
    [1] = "CraftAll"
}

game:GetService("ReplicatedStorage").PetSystem.PetInventoryHandler:FireServer(unpack(args))

wait() 
end
