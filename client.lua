
local music_events = {

    "SUS1_EXIT",
    "SUS1_FAIL",
    "WNT4_START",
    "WNT4_START_2",
    "WNT4_STOP",
    "WNT4_TRAIN_JUMP",
    -- ADD MORE https://github.com/femga/rdr3_discoveries/blob/master/audio%2Fmusic_events%2Fmusic_events.lua#L6-L14
}


local currentlyPlaying = false

RegisterCommand("playmusic", function()
    if not currentlyPlaying then
        currentlyPlaying = true
        TriggerEvent("chatMessage", "SYSTEM", {255, 0, 0}, "Playing music events for 5 seconds each.")
        

        for _, event in ipairs(music_events) do
            TriggerEvent("chatMessage", "SYSTEM", {255, 0, 0}, "Music: "..event)
            Citizen.InvokeNative(0x1E5185B72EF5158A, event)  -- PREPARE_MUSIC_EVENT
            Citizen.InvokeNative(0x706D57B0F50DA710, event)  -- TRIGGER_MUSIC_EVENT
            Wait(15000)  -- Wait for 15 seconds
            Citizen.InvokeNative(0x1E5185B72EF5158A, event .. "_STOP")  -- PREPARE_MUSIC_EVENT_STOP
            Citizen.InvokeNative(0x706D57B0F50DA710, event .. "_STOP")  -- TRIGGER_MUSIC_EVENT_STOP
        end

        currentlyPlaying = false
    else
        TriggerEvent("chatMessage", "SYSTEM", {255, 0, 0}, "Music is already playing.")
    end
end, false)