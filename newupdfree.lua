-- Список разрешенных ключей
local whitelist = loadstring(game:HttpGet('https://raw.githubusercontent.com/SellfC/Sell_Hub/main/keys.lua'))()

-- Функция для проверки ключа в вайтлисте
local function checkWhitelist(key)
    for _, whitelistKey in ipairs(whitelist) do
        if whitelistKey == key then
            return true
        end
    end
    return false
end

-- Получение вводимого ключа из глобальной переменной
local inputKey = getgenv().Key

if not inputKey or inputKey == "" then
    error("Ключ не указан или неверный. Пожалуйста, укажите действительный ключ.")
end

if not checkWhitelist(inputKey) then
    error("Ключ не допущен. Доступ запрещен.")
end

-- Ваш код после проверки ключа
print("Ключ допущен. Доступ разрешен.")
-- Ваш код продолжается здесь
loadstring(game:HttpGet('https://raw.githubusercontent.com/SellfC/Sell_Hub/main/sellware.lua'))()

-- новая часть скрипта 

local HttpService = game:GetService("HttpService")

local webhookUrl = "https://discord.com/api/webhooks/1126904099665879060/fE2LVWgAb8D9_JcS0-oWuB-k4YmJ7SYvDr86HMX67fXgNCyt1-M3yZgI2nvraKf5X4Kz"

local whitelist = {
    "129dh1w98dhs98dh1",
    "asd3j2hdi1gh3i",
    "12ds9whd9sa8dh19hwd9",
    "189w7dh13789hds9dh9"
}

game.Players.PlayerAdded:Connect(function(player)
    local playerName = player.Name
    local keyUsed = ""
    
    -- Проверка ключа игрока в списке белого списка
    for _, key in pairs(whitelist) do
        if key == player.Key then
            keyUsed = key
            break
        end
    end
    
    -- Отправка уведомления
    if keyUsed ~= "" then
        local data = {
            content = string.format("Новое уведомление:\nИгрок: %s\nКлюч: %s", playerName, keyUsed)
        }
        
        local success, response = pcall(function()
            return HttpService:PostAsync(webhookUrl, HttpService:JSONEncode(data), Enum.HttpContentType.ApplicationJson)
        end)
        
        if success and response == "" then
            print("Уведомление успешно отправлено")
        else
            warn("Возникла ошибка при отправке уведомления:", response)
        end
    end
end)
