local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Sell_Hub",
   LoadingTitle = "loading script...",
   LoadingSubtitle = "by sell.fr",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = workspace, -- Create a custom folder for your hub/game
      FileName = "Garou_Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "https://discord.gg/n3VwNex35a", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Garou_Hub",
      Subtitle = "Key System",
      Note = "you can find the key in our discord server https://discord.gg/n3VwNex35a",
      FileName = "key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"test"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

Rayfield:Notify({
   Title = "santar1us furry",
   Content = "maks ytopit bandaya rano ili pozdno",
   Duration = 6.5,
   Image = 4483362458,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("The user tapped Okay!")
      end
   },
},
})

local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Section = Tab:CreateSection("AutoFarm")

local Toggle = Tab:CreateToggle({
   Name = "Win",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.Win = enabled
      local wins = {
    [1] = "Area3",
    [2] = 1
}
while _G.Win and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FightOver"):FireServer(unpack(wins))
       end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "WinSell",
   CurrentValue = false,
   Flag = "Toggle2", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.WinSell = enabled
      local sell = {
    [1] = "Area4",
    [2] = 4
}
while _G.WinSell and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FightOver"):FireServer(unpack(sell))
       end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "WinVitalik",
   CurrentValue = false,
   Flag = "Toggle3", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.WinSell = enabled
      local vit = {
    [1] = "Area4",
    [2] = 3
}
while _G.WinSell and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("FightOver"):FireServer(unpack(vit))
       end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "AutoEventEgg",
   CurrentValue = false,
   Flag = "Toggle4", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.EventEgg = enabled
      local eg = {
    [1] = 1,
    [2] = {}
}
local craft = {
    [1] = "CraftAll"
}
while _G.EventEgg and task.wait() do
game:GetService("ReplicatedStorage"):WaitForChild("PetSystem"):WaitForChild("PetInventoryHandler"):FireServer(unpack(craft))
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EggEvent1"):FireServer(unpack(eg))
       end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "AutoKatana",
   CurrentValue = false,
   Flag = "Toggle5", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.katana = enabled
      while _G.katana and task.wait() do
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DoAction"):FireServer()
      end
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "AutoPunchSell",
   CurrentValue = false,
   Flag = "Toggle6", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(enabled)
      _G.punch = enabled
      local p = {
    [1] = "Area5",
    [2] = "PunchingBag",
    [3] = 7
}
      while _G.punch and task.wait() do
         game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DoAction"):FireServer(unpack(p))
      end
   end,
})

local Button = Tab:CreateButton({
   Name = "KatanaLastLocation",
   Callback = function()
      local args = {
    [1] = "Area5",
    [2] = "Katana",
    [3] = 1
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("EquipAndUnequipTool"):FireServer(unpack(args))
   end,
})

local Tab = Window:CreateTab("other", 4483362458) -- Title, Image

local Section = Tab:CreateSection("functions")

local Button = Tab:CreateButton({
   Name = "Destroy Script",
   Callback = function()
      Rayfield:Destroy()
   end,
})

getgenv().Executed = true
while getgenv().Executed and task.wait(210) do 
   print("s")
end
