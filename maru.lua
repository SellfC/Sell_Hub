repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players
repeat task.wait() until game.Players.LocalPlayer
repeat task.wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui")
repeat task.wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
_G.Team = "Pirate" -- Marine / Pirate
_G.KAITUN_SCRIPT = true
_G.LogsDes = {
    ["Enabled"] = true, -- _____________
    ["SendAlias"] = true, -- __________ Alias
    ["SendDescription"] = true, -- __________ Des
    ["DelaySend"] = 5 -- ______
}
_G.WebHook = {
    ["Enabled"] = false, -- _____________
    ["Url"] = "", -- _____________
    ["Delay"] = 60 -- ______
}
_G.MainSettings = {
        ["EnabledHOP"] = true, -- ____ HOP ( _______________________ )
        ['FPSBOOST'] = true, -- ______
        ["FPSLOCKAMOUNT"] = 10, -- _____ FPS
        ['WhiteScreen'] = true, -- _____
        ['CloseUI'] = true, -- ___ Ui
        ["NotifycationExPRemove"] = true, -- __ ExP ________________
        ['AFKCheck'] = 150, -- _________________________________
        ["LockFragments"] = 20000, -- ____________
        ["LockFruitsRaid"] = { -- ______________________
            [1] = "Dough-Dough",
            [2] = "Kitsune-Kitsune"
        }
    }
_G.Fruits_Settings = { -- _________
    ['Main_Fruits'] = {'Dough-Dough'}, -- ______ _________________________________________________
    ['Select_Fruits'] = {"Buddha-Buddha", "Magma-Magma", "Rumble-Rumble", "Ice-Ice"} -- _____________________
}
_G.Quests_Settings = { -- ________________
    ['Rainbow_Haki'] = true,
    ["MusketeerHat"] = true,
    ["PullLever"] = true,
    ['DoughQuests_Mirror'] = {
        ['Enabled'] = true,
        ['UseFruits'] = true
    }        
}
_G.Races_Settings = { -- ___________
    ['Race'] = {
        ['EnabledEvo'] = true,
        ["v2"] = true,
        ["v3"] = true,
        ["Races_Lock"] = {
            ["Races"] = { -- Select Races U want
                ["Mink"] = false,
                ["Human"] = false,
                ["Fishman"] = true
            },
            ["RerollsWhenFragments"] = 20000 
        }
    }
}
_G.Settings_Melee = { -- ___________
    ['Superhuman'] = true,
    ['DeathStep'] = true,
    ['SharkmanKarate'] = true,
    ['ElectricClaw'] = true,
    ['DragonTalon'] = true,
    ['Godhuman'] = true
}
_G.FarmMastery_Settings = {
    ['Melee'] = true,
    ['Sword'] = true,
    ['DevilFruits'] = true,
    ['Select_Swords'] = {
        ["AutoSettings"] = false, -- ______________________________________________________
        ["ManualSettings"] = { -- _______ AutoSettings ____ false ___________________________ ________________
            "Saber",
            "Cursed Dual Katana"
        }
    }
}
_G.SwordSettings = { -- __________
    ['Saber'] = true,
    ["Pole"] = true,
    ['MidnightBlade'] = true,
    ['Shisui'] = false,
    ['Saddi'] = false,
    ['Wando'] = false,
    ['Yama'] = true,
    ['Rengoku'] = true,
    ['Canvander'] = true,
    ['BuddySword'] = true,
    ['TwinHooks'] = true,
    ['HallowScryte'] = true,
    ['TrueTripleKatana'] = false,
    ['CursedDualKatana'] = true
}
_G.SharkAnchor_Settings = {
    ["Enabled_Farm"] = true,
}
_G.GunSettings = { -- __________
    ['Kabucha'] = true,
    ['SerpentBow'] = true,
    ['SoulGuitar'] = true
}
getgenv().Key = "MARU-J6CB3-79FB-RPL94-W1E7-ZLF6T"
getgenv().id = "952168231827812412"
getgenv().Script_Mode = "Kaitun_Script"
loadstring(game:HttpGet("https://raw.githubusercontent.com/xshiba/MaruBitkub/main/Mobile.lua"))()
