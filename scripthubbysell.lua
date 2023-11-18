local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local Sellhubver = " v2"

local Window = Fluent:CreateWindow({
    Title = "Sell_Hub" .. Sellhubver,
    SubTitle = "by sell.fr",
    TabWidth = 160,
    Size = UDim2.fromOffset(480, 360),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

--Fluent provides Lucide Icons https://lucide.dev/icons/ for the tabs, icons are optional
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "apple" }),
	Credits = Window:AddTab({ Title = "Credits", Icon = "bomb" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do
    Fluent:Notify({
        Title = "Notification",
        Content = "Thank for useing my script!",
        SubContent = "._.", -- Optional
        Duration = 5 -- Set to nil to make the notification not disappear
    })

    Tabs.Credits:AddParagraph({
        Title = "Information",
        Content = "This script made by Sell.fr!!!!!.\nif you want, you can log in to our discord server (the button below)!"
    })

    Tabs.Credits:AddButton({
        Title = "Click copy link discord server",
        Description = "",
        Callback = function()
            setclipboard("https://discord.gg/gnDtRn7wbn")
            Fluent:Notify({
                Title = "Notification;)",
                Content = "link was successfully copied",
                SubContent = "TYSM", -- Optional
                Duration = 5 -- Set to nil to make the notification not disappear
            })
        end
    })

    Tabs.Main:AddButton({
        Title = "w-azure",
        Description = "execute another script",
        Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/SellfC/Sell_Hub/main/w-azure.lua"))()
		end
    })

	Tabs.Main:AddButton({
        Title = "Mtriet Hub",
        Description = "execute another script",
        Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/MTriet-Hub.lua"))()
		end
    })

	Tabs.Main:AddButton({
        Title = "Sea Hub",
        Description = "execute another script",
        Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/AltsegoD/script/master/loader.lua"))()
		end
    })

	Tabs.Main:AddButton({
        Title = "Fai-Fao",
        Description = "execute another script",
        Callback = function()
			loadstring(game:HttpGet"https://raw.githubusercontent.com/PNguyen0199/Script/main/Fai-Fao.lua")() 
		end
    })

	Tabs.Main:AddButton({
        Title = "xDepressionx",
        Description = "execute another script",
        Callback = function()
			loadstring(game:HttpGet"https://raw.githubusercontent.com/xDepressionx/Free-Script/main/AllScript.lua")() 
		end
    })

	Tabs.Main:AddButton({
        Title = "Dragon-Hub",
        Description = "execute another script",
        Callback = function()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/ahmadsgamer2/Dragon-Hub/main/Script-Execute.lua"))() 
		end
    })

	Tabs.Main:AddButton({
        Title = "LS-Zee-Hub-VIP",
        Description = "execute another script",
        Callback = function()
			loadstring(game:HttpGet("https://link.trwxz.com/LS-Zee-Hub-VIP"))() 
		end
    })
end
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
    Title = "Fluent",
    Content = "The script has been loaded.",
    Duration = 8
})

-- You can use the SaveManager:LoadAutoloadConfig() to load a config
-- which has been marked to be one that auto loads!
SaveManager:LoadAutoloadConfig()
