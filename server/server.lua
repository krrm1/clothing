RegisterNetEvent("Save:PlayerSkin", function (data)
    local src = source
    local id = GetPlayerIdentifierByType(src, "license")
    
    MySQL.query('DELETE FROM playerskins WHERE identifier = ?', { id }, function()
        MySQL.insert('INSERT INTO playerskins (identifier, model, skin) VALUES (?, ?, ?)', {
            id,
            data.model,
            json.encode(data),
        })
    end)
end)

RegisterNetEvent('Load:PlayerSkin', function()
    local src = source
    local id = GetPlayerIdentifierByType(src, "license")

    MySQL.query('SELECT `model`, `skin` FROM `playerskins` WHERE `identifier` = ?', {
        id
    }, function(data)
        if data then
            for i = 1, #data do
                TriggerClientEvent('SetPlayerSkin', src, json.decode(data[i].skin))
            end
        end
    end)
end)