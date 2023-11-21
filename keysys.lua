local keys = loadstring(game:HttpGet("https://pastebin.com/raw/Va6zmbPk"))()
local player = game.Players.LocalPlayer

for i,v in pairs(keys) do 
    if v == getgenv().key task.wait(10) then 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SellfC/Sell_Hub/main/scriptsloader.lua"))()-- your code
    else
        setclipboard("https://discord.gg/gnDtRn7wbn")
        player:Kick("Not" .. " whitelisted" .. " Key in Discord" .. " Link copied")
    end
end
