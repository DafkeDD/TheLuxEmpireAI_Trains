local trainStations = {
    { x = 100.0, y = 200.0, z = 300.0 }, -- Example train station coordinates
    { x = 400.0, y = 500.0, z = 600.0 }  -- Add more train station coordinates as needed
}

Citizen.CreateThread(function()
    if Config.Framework == 'qbcore' then
        QBcore.Functions.TriggerCallback('luxempire:getTrainConfig', function(config)
            StartTrainSpawning(config)
        end)
    elseif Config.Framework == 'esx' then
        ESX.TriggerServerCallback('luxempire:getTrainConfig', function(config)
            StartTrainSpawning(config)
        end)
    end
end)

function StartTrainSpawning(config)
    for _, track in ipairs(config.Tracks) do
        SetTrainTrack(track.TrackID, true)
        SetTrainTrackSpawnFrequency(track.TrackID, config.SpawnFrequency)
        SetRandomTrains(track.TrackID, config.NumRandomTrains)
        SetTrainsForceDoorsOpen(track.TrackID, config.ForceDoorsOpen)

        for i, trainData in ipairs(track.Trains) do
            for j = 1, trainData.Count do
                local train = CreateMissionTrain(trainData.Name, trainStations[i].x, trainStations[i].y, trainStations[i].z, true, true)
                TaskMissionTrainToStation(train, 0, trainStations[i].x, trainStations[i].y, trainStations[i].z)
                Citizen.Wait(track.TimeDifference)
            end
            Citizen.Wait(10 * 60 * 1000) -- 10 minutes in milliseconds
        end
    end
end
