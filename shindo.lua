loadstring(game:HttpGet("https://pastebin.com/raw/uuiUB7ce"))()

local player = game.Players.LocalPlayer
local mission = player.PlayerGui:WaitForChild("Main"):WaitForChild("ingame"):WaitForChild("Missionstory")
local menuplace = 4616652839
local forestplace = 5447073001
local rainplace = 5084678830
local trainingplace = 5431071837
local akatsukiplace = 5431069982
local worldxplace = 5943874201
local villageplace = game:GetService("Workspace"):FindFirstChild("rank")
local warplace = game:GetService("Workspace"):FindFirstChild("warmode")
function toTarget(pos, targetPos, targetCFrame)
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new((targetPos - pos).Magnitude/getgenv().speed, Enum.EasingStyle.Linear)
    local tween, err = pcall(function()
        local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = targetCFrame * CFrame.fromAxisAngle(Vector3.new(1,0,0), math.rad(90))})
        tween:Play()
    end)
    if not tween then return err end
end

local function farm()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg1.Head.CFrame
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg2.Head.CFrame
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg3.Head.CFrame
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg4.Head.CFrame
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg5.Head.CFrame
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg6.Head.CFrame
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg7.Head.CFrame
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg8.Head.CFrame
task.wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game:GetService("Workspace").EggEvent.eggs.egg9.Head.CFrame
task.wait(1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(21412.9297, 833.526489, -13286.4336, -0.0366161205, -1.56134821e-08, 0.999329388, 3.77630656e-08, 1, 1.70076238e-08, -0.999329388, 3.8360497e-08, -0.0366161205)
end 

local function SCROLLFARM()
    for i,v in pairs(game.workspace.GLOBALTIME:GetChildren()) do
        if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
            local scrollA = v.sh:FindFirstChild("invoke")
            print("SCROLL SPAWNED")
            pcall(function()
                toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
            end)
            scrollA:FireServer(game.Players.LocalPlayer)
            fireclickdetector(v.sh.ClickDetector)
        end
    end
end
local function SCROLLFARM1()
    for i,v in pairs(game.workspace:GetChildren()) do
        if v.ClassName == "Model" and v:FindFirstChild("sh") and v.sh.Position.Y > -1000 and v.sh.Position.Y < 2000 then
            local scrollA = v.sh:FindFirstChild("invoke")
            print("SCROLL SPAWNED in workspace")
            pcall(function()
                toTarget(game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position,v.sh.Position,CFrame.new(v.sh.Position))
                scrollA:FireServer(game.Players.LocalPlayer)
                fireclickdetector(v.sh.ClickDetector)
            end)
        end
    end
end

_G.gg = true
while _G.gg and task.wait(5) do
    farm()
    task.wait(1)
    SCROLLFARM()
    SCROLLFARM1()
end
