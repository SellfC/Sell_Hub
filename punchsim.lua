
local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()

local Window = ArrayField:CreateWindow({
   Name = "ArrayField Example Window",
   LoadingTitle = "ArrayField Interface Suite",
   LoadingSubtitle = "by Arrays",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = sellhub, -- Create a custom folder for your hub/game
      FileName = "ArrayField"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
      Actions = {
            [1] = {
                Text = 'Click here to copy the key link <--',
                OnPress = function()
                    print('Pressed')
                end,
                }
            },
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Window:Prompt({
    Title = 'Interface Prompt',
    SubTitle = 'SubTitle',
    Content = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
    Actions = {
        Accept = {
            Name = 'Accept',
            Callback = function()
                print('Pressed')
            end,
        }
    }
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image

local Section = Tab:CreateSection("Section Example",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Toggle = Tab:CreateToggle({
   Name = "Auto Punch",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.pun = enabled
      while _G.pun and task.wait() do 
         game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("DamageIncreaseOnClickEvent"):FireServer()
      end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Skip Fight",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.skip = enabled
      local args = {
            [1] = true
         }
         while _G.skip and task.wait() do
         game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PushEvent"):FireServer(unpack(args))
      end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Hide EggAnimation",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.hide = enabled
      while _G.hide and task.wait() do 
         if workspace.Camera:FindFirstChild("EggOpenMap") then
        workspace.Camera:FindFirstChild("EggOpenMap"):Destroy()
     end
  end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.ugc1 = enabled
      local args = {
         [1] = "LegendaryHatchEvent"
     }
     while _G.ugc1 and task.wait(10) do
     game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("NewUGCEvents"):WaitForChild("ClickedEventClaimButton"):FireServer(unpack(args))
  end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      _G.ugc2 = enabled
      while _G.ugc2 and task.wait(10) do
         game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("ClickedAxolotlEventClaimButton"):FireServer()
      end
   end,
})


local Section = Tab:CreateSection("Auto Egss",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.forest = enabled
      local args = {
        [1] = "1"  
      }
      while _G.forest and task.wait() do
      game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("PlayerPressedKeyOnEgg"):FireServer(unpack(args))
   end
   end,
})

local Section = Tab:CreateSection("Auto Boss (killfarm)",false) -- The 2nd argument is to tell if its only a Title and doesnt contain element

local Toggle = Tab:CreateToggle({
   Name = "Toggle Example",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
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
   end,
})
ArrayField:LoadConfiguration()

getgenv().Executed = true
while getgenv().Executed and task.wait(210) do 
   print("s")
end
