function OnEvent(event, arg)
    --OutputLogMessage("event = %s, arg = %s\n", event, arg);

    -- G6で押している間だけ後方確認
    if (arg == 6) then
        if (event == "G_PRESSED") then
            PressAndReleaseKey("F5")
            PressAndReleaseKey("F5")
        elseif (event == "G_RELEASED") then
            PressAndReleaseKey("F5")
        end
    end
end
