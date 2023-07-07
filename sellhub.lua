-- Список разрешенных ключей
local whitelist = loadstring(game:HttpGet('https://raw.githubusercontent.com/SellfC/tablehub/main/keyssellhubobfus.lua'))()

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
