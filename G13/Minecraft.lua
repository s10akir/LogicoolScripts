i = 0

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

    -- G21でホットバー1~4をスイッチ
    -- [剣][ピッケル][シャベル][オノ] とかにしとくと便利
    if (arg == 21) then
        if (event == "G_PRESSED") then
            PressAndReleaseKey(tostring(i))
            i = i + 1
            if (4 < i) then
                i = 1
            end
        end
    end
end
