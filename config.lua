-- config.lua

Config = {}

-- Choose 'qbcore' or 'esx' as per your preference
Config.Framework = 'qbcore'

-- Define the tracks and their configurations
Config.Tracks = {
    {
        TrackID = 0,
        SpawnFrequency = 2 * 60 * 1000, -- 2 minutes in milliseconds
        Trains = {
            { Name = 'freight', Count = 1 },
            { Name = 'freightcar', Count = 2 },
            { Name = 'freightcont1', Count = 1 },
        },
        TimeDifference = 10 * 60 * 1000, -- 10 minutes in milliseconds
        ForceDoorsOpen = true
    },
    {
        TrackID = 3,
        SpawnFrequency = 5 * 60 * 1000, -- 5 minutes in milliseconds
        Trains = {
            { Name = 'metrotrain', Count = 1 },
            { Name = 'tankercar', Count = 1 },
            { Name = 'freightgrain', Count = 1 },
        },
        TimeDifference = 10 * 60 * 1000, -- 10 minutes in milliseconds
        ForceDoorsOpen = false
    },
    -- Add more tracks as needed
}
