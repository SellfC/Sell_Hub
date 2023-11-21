local keys = loadstring(game:HttpGet("https://pastebin.com/raw/Va6zmbPk"))()
local player = game.Players.LocalPlayer

for i,v in pairs(keys) do 
    if v == getgenv().key then 
        loadstring(game:HttpGet("https://pastebin.com/raw/8g1CzD3z"))()-- your code
        print("scriploader true")
    else
        setclipboard("https://discord.gg/gnDtRn7wbn")
        player:Kick("Not" .. " whitelisted" .. " Key in Discord" .. " Link copied")
    end
end
