local repo = "https://raw.githubusercontent.com/SellfC/Sell_Hub/main/"
local function LoadScript(ScriptName)
	pcall(function()
		t = 0
		repeat
			local s, r = pcall(function()
				loadstring(game:HttpGet(repo .. ScriptName))()
			end)
			if not s then
				spawn(function()
					error(r)
				end)
			end
			t = t + 1
			wait(60)
		until getgenv().Executed or t >= 30
	end)
end
local Id = game.PlaceId
local GameId = game.GameId
local PlaceIds = {
	["Ninjasim"] = { 13999740606 },
	["ps"] = { 14236123211 },
}
if table.find(PlaceIds["ps"], Id) then -- Anime Adventures
	if getgenv().BetaScript then
        LoadScript("newpunch.lua")
	else
	LoadScript("punchsim.lua")
	end
elseif table.find(PlaceIds["Ninjasim"], Id) then -- RoGhoul
	LoadScript("Ninja.lua")
end
