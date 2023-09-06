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
	["Punchsim"] = { 14236123211 },
	["BF"] = { 2753915549, 4442272183, 7449423635 },
	["PJS"] = { 2142948266 },
        ["AFS"] = {6299805723, 9141645420},
	['AFSX'] = {4099570905},
	['PEROXIDE'] = {3419284255},
}
elseif table.find(PlaceIds["Ninjasim"], Id) then -- RoGhoul
	LoadScript("Ninja.lua")
elseif table.find(PlaceIds["Punchsim"], Id) then -- Blox Fruits
	LoadScript("punchsim.lua")
elseif table.find(PlaceIds["PJS"], GameId) then -- Project Slayer
	LoadScript("PJS.lua")
elseif table.find(PlaceIds["AFS"], Id) then -- Afs
	if getgenv().BetaScript then
	LoadScript("beta-afs.lua")
	else
	LoadScript("afsdupe.lua")
	end
elseif table.find(PlaceIds['PEROXIDE'], GameId) then -- AFSX
	LoadScript("Peroxide.lua")
elseif table.find(PlaceIds['AFSX'], GameId) then -- AFSX
	LoadScript("AFSX.lua")
else -- Astd
	LoadScript("Astd.lua")
end
