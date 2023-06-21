Config = {
    Framework = 'qbcore', -- Choose 'qbcore' or 'esx' as per your preference
    Tracks = {
        {
            TrackID = 0,
            SpawnFrequency = 2 * 60 * 1000,
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
            SpawnFrequency = 5 * 60 * 1000,
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
    -- Add more options here as per your AI knowledge
    -- Example: MaxSpeed = 100, NumPassengers = 50, etc.
}
