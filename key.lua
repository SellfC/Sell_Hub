local keys = "https://raw.githubusercontent.com/SellfC/Sell_Hub/main/keys.lua"

if getgenv().key == unpack(keys) then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/SellfC/Sell_Hub/main/scripthubbysell.lua"))()
else
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end
