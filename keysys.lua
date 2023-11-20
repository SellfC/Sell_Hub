local keys = loadstring(game:HttpGet("https://raw.githubusercontent.com/SellfC/Sell_Hub/main/keys.lua"))()

for i,v in pairs(keys) do 
    if v == getgenv().key then 
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SellfC/Sell_Hub/main/scripthubbysell.lua"))()
    end
end
