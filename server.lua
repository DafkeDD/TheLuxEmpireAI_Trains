local QBCore = exports['qb-core']:GetCoreObject()

if Config.Framework == 'qbcore' then
    QBCore.Functions.CreateCallback('luxempire:getTrainConfig', function(source, callback)
        callback(Config)
    end)
elseif Config.Framework == 'esx' then
    ESX.RegisterServerCallback('luxempire:getTrainConfig', function(source, callback)
        callback(Config)
    end)
end
