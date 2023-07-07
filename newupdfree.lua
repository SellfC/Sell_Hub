-- Подключение модуля для работы с HTTP-запросами
local HttpService = game:GetService("HttpService")

-- URL вашего вебхука
local webhookUrl = "https://discord.com/api/webhooks/1126904099665879060/fE2LVWgAb8D9_JcS0-oWuB-k4YmJ7SYvDr86HMX67fXgNCyt1-M3yZgI2nvraKf5X4Kz"

-- Функция для отправки уведомления на вебхук
local function sendWebhookNotification(playerName, keyUsed)
    -- Формирование данных для отправки
    local data = {
        content = "Использован допустимый ключ:",
        embeds = {{
            title = "Детали:",
            fields = {
                {name = "Игрок:", value = playerName},
                {name = "Используемый ключ:", value = keyUsed}
            },
            color = 16744192 -- Цвет в формате RGB (в данном случае - оранжевый)
        }}
    }

    -- Кодирование данных в JSON
    local encodedData = HttpService:JSONEncode(data)

    -- Отправка HTTP-запроса на вебхук
    HttpService:PostAsync(webhookUrl, encodedData)
end

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

-- Получение ника игрока
local playerName = game.Players.LocalPlayer.Name

-- Отправка уведомления на вебхук
sendWebhookNotification(playerName, inputKey)

-- Ваш код после проверки ключа
print("Ключ допущен. Доступ разрешен.")
-- Ваш код продолжается здесь
loadstring(game:HttpGet('https://raw.githubusercontent.com/SellfC/Sell_Hub/main/sellware.lua'))()
