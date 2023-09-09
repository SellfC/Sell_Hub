local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "GarouV2" .. Fluent.Version,
    SubTitle = "by sell.fr",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService") 
local VirtualInputManager = game:GetService("VirtualInputManager")

local noobuser = Players.LocalPlayer

local parts = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12}

local function autoClick(enabled, interval)
  while enabled do
    local x, y = 420, 420
    VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, game, 0)
    VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, game, 0)
    
    wait(interval)
  end
end

local function fireEggs(count, delay, arg)
    local args = {
      [1] = tostring(arg) 
    }
  
    local remote = ReplicatedStorage.Events.PlayerPressedKeyOnEgg
  
    for i = 1, count do
      remote:FireServer(unpack(args))
      wait(delay) 
    end
end

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "mouse" }),
    eggs = Window:AddTab({ Title = "Eggs", Icon = "egg" }),
    boss = Window:AddTab({ Title = "Bosses", Icon = "minus-circle" }),
    script = Window:AddTab({ Title = "Another scripts", Icon = "code" }),
    Teleport = Window:AddTab({ Title = "Teleports Zone", Icon = "antenna" }),
    Beta = Window:AddTab({ Title = "Beta Functions pls dont use", Icon = "box" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}
    Fluent:Notify({
        Title = "Notification",
        Content = "This is a notification",
        SubContent = "SubContent", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

    Window:Dialog({
                Title = "GarouV2",
                Content = "thank you for using the script if you want, you can join to our discord server",
                Buttons = {
                    {
                        Title = "Copy Link",
                        Callback = function()
                            setclipboard("https://discord.gg/TuGKKAweW4")
                        end
                    },
                    {
                        Title = "Cancel",
                        Callback = function()
                            print("bruh")
                        end
                    }
                }
            })

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "HideAnimEgg", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.hide = enabled
      while _G.hide and task.wait() do 
         if workspace.Camera:FindFirstChild("EggOpenMap") then
        workspace.Camera:FindFirstChild("EggOpenMap"):Destroy()
     end
  end
    end)

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "AutoPunch", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.punch = enabled
        while _G.punch and task.wait() do
            game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DamageIncreaseOnClickEvent"):FireServer()
        end
    end)

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "SkipFight", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.skip = enabled
      local args = {
            [1] = true
         }
         while _G.skip and task.wait() do
         game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PushEvent"):FireServer(unpack(args))
      end
    end)

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "ugc1", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.ugc1 = enabled
      local args = {
         [1] = "LegendaryHatchEvent"
     }
     while _G.ugc1 and task.wait(10) do
     game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("NewUGCEvents"):WaitForChild("ClickedEventClaimButton"):FireServer(unpack(args))
  end
    end)

    local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "ugc2", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.ugc2 = enabled
      while _G.ugc2 and task.wait(10) do
         game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ClickedAxolotlEventClaimButton"):FireServer()
      end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Buff Noob", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 1,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Cowboy Noob", Default = false })

    Toggle:OnChanged(function(enabled)
      _G.BuffNoob = enabled
    local noobie = {
  [1] = "Fight",
  [2] = 2,
  [3] = 4
}
local gemsss = {
  [1] = "Gems",
  [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
  end)

  local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "TNT Guy", Default = false })

    Toggle:OnChanged(function(enabled)
      _G.BuffNoob = enabled
    local noobie = {
  [1] = "Fight",
  [2] = 3,
  [3] = 4
}
local gemsss = {
  [1] = "Gems",
  [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
  end)

  local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Shark Boss", Default = false })

    Toggle:OnChanged(function(enabled)
      _G.BuffNoob = enabled
    local noobie = {
  [1] = "Fight",
  [2] = 4,
  [3] = 4
}
local gemsss = {
  [1] = "Gems",
  [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
  end)

  local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Bunny Boss", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 5,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Boss Yeti", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 6,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Toy Boss", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 7,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Wanderer", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 8,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Yellow Hair Ninja", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 9,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Golden Asronaut Boss", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 10,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "IDK BOSS NAME LOCATION 11", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 11,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "IDK BOSS NAME LOCATION 12", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 12,
    [3] = 4
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.boss:AddToggle("MyToggle", {Title = "Sell(owner) function", Default = false })

    Toggle:OnChanged(function(enabled)
        _G.BuffNoob = enabled
      local noobie = {
    [1] = "Fight",
    [2] = 9,
    [3] = 1
}
local gemsss = {
    [1] = "Gems",
    [2] = 1
}
while _G.BuffNoob and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("AutoFight"):FireServer(unpack(noobie))
game:GetService("ReplicatedStorage"):WaitForChild("CollectedCurrency"):FireServer(unpack(gemsss))
end
    end)

    local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Gem Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakGemEgg = Value
    while autoBreakGemEgg and task.wait() do
		local args = {
			[1] = "VisitEgg"
		}

		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Forest Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "1"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Desert Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "2"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Cave Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "3"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Ocean Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "4"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Candy Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "5"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Snow Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "6"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Toy Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "7"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Farm Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "8"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Samurai Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "9"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Space Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "10"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)

local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch Magic Forest Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "11"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)


local Toggle = Tabs.eggs:AddToggle("MyToggle", {Title = "Auto Hatch IDK Egg", Default = false })

    Toggle:OnChanged(function(Value)
        autoBreakEgg1 = Value
    while autoBreakEgg1 and task.wait() do
      local args = {
        [1] = "12"  
      }
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
    end
end)
local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Off proximity", Default = false })

    Toggle:OnChanged(function(enabled)
      _G.proxi = enabled
      while _G.proxi and task.wait() do
      for _, v in next, workspace:GetDescendants() do
        if v:IsA("ProximityPrompt") then
        v.HoldDuration = 0
        end
        end
      end
end)

    Tabs.script:AddButton({
        Title = "ToraIsMe script",
        Description = "Very important button",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0PUNCH'))()
            print("button pressed")
        end
    })

    Tabs.script:AddButton({
        Title = "Redblue script",
        Description = "Very important button",
        Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/JustAP1ayer/PlayerHubOther/main/PlayerHubPunchingSimulator.lua'))()
            print("button pressed")
        end
    })

    Tabs.script:AddButton({
        Title = "AntiAfk script",
        Description = "Very important button",
        Callback = function()
wait(0.5)local ba=Instance.new("ScreenGui")
local ca=Instance.new("TextLabel")local da=Instance.new("Frame")
local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui
ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true
ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true
ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,370,0,52)
ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti AFK Script"ca.TextColor3=Color3.new(0,1,1)
ca.TextSize=22;da.Parent=ca
da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)
da.Size=UDim2.new(0,370,0,107)_b.Parent=da
_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)
_b.Size=UDim2.new(0,370,0,21)_b.Font=Enum.Font.Arial;_b.Text="."
_b.TextColor3=Color3.new(0,1,1)_b.TextSize=20;ab.Parent=da
ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377,0)
ab.Size=UDim2.new(0,370,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Active"
ab.TextColor3=Color3.new(0,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'
game:service'Players'.LocalPlayer.Idled:connect(function()
bb:CaptureController()bb:ClickButton2(Vector2.new())
ab.Text="Roblox tried to kick u but i kicked him instead"wait(2)ab.Text="Status : Active"end)
print("button pressed")
        end
    })

    -- Addons:
-- SaveManager (Allows you to have a configuration system)
-- InterfaceManager (Allows you to have a interface managment system)

-- Hand the library over to our managers
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

-- Ignore keys that are used by ThemeManager.
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings()

-- You can add indexes of elements the save manager should ignore
SaveManager:SetIgnoreIndexes({})

-- use case for doing it this way:
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)


Window:SelectTab(1)

Fluent:Notify({
    Title = "Script",
    Content = "The script has been loaded!",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()

getgenv().Executed = true
while getgenv().Executed and task.wait(1000000000000) do 
   print("s")
end
