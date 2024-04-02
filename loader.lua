local repo = "https://raw.githubusercontent.com/SellfC/Sell_Hub/main/"
local Id = game.PlaceId
local GameId = game.GameId

local Games = {
	["BF"] = {
		FileName = "w-azure",
		PlaceId = { 2753915549, 4442272183, 7449423635 },
		GameName = "Blox Fruits",
	},
	["TTD"] = {
		FileName = "tiplet",
		PlaceId = { 13775256536, 14082129854 },
		GameName = "toilet tower defense",
	}
}

local function LoadScript(name)
	local data = Games[name]
	getgenv().GameName = data.GameName

	loadstring(game:HttpGet(repo .. data.FileName .. ".lua"))()
end

for name, data in next, Games do
	for _, v in next, data.PlaceId do
		if Id == v or GameId == v then LoadScript(name) end
	end
end
