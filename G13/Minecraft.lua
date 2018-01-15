toolCnt = 1 -- switchTools用のカウンタ


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

    -- G21
    if (arg == 21) then
        if (event == "G_PRESSED") then
            switchTools()
        end
    end
end

--[[
ホットバー1~4をスイッチ
[剣][ピッケル][シャベル][オノ] とかにしとくと便利
]]
function switchTools()
    PressAndReleaseKey(tostring(toolCnt))
    toolCnt = toolCnt + 1
    if (4 < toolCnt) then
        toolCnt = 1
    end
end
