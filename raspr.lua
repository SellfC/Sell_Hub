repeat wait() until game:IsLoaded() and game.Players.LocalPlayer 
setfpscap(150)
script_key="pvPebEybMszLyEHlAxlhkjnkKYMzhxYi";
loadstring(game:HttpGet("https://raw.githubusercontent.com/buang5516/buanghub/main/PremiumBuangHub.lua"))()
task.wait(10)
local args = {
    [1] = "mha_stain"
}

game:GetService("ReplicatedStorage"):WaitForChild("endpoints"):WaitForChild("client_to_server"):WaitForChild("request_matchmaking"):InvokeServer(unpack(args))
