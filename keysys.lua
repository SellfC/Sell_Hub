local keys = loadstring(game:HttpGet("https://raw.githubusercontent.com/SellfC/Sell_Hub/main/keys.lua"))()
local player = game.Players.LocalPlayer

for i,v in pairs(keys) do 
    if v == getgenv().key then 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SellfC/Sell_Hub/main/scripthubbysell.lua"))()
    else
        player:Kick("Not" .. "whitelisted")
    end
end
