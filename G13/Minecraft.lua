viewFront = true
toolCnt = 1 -- switchTools用のカウンタ


function OnEvent(event, arg)
    --OutputLogMessage("event = %s, arg = %s\n", event, arg);

    -- G6
    if (arg == 6) then
        if (event == "G_PRESSED") then
            viewBehinde()
        elseif (event == "G_RELEASED") then
            viewBehinde()
        end
    elseif (arg == 21) then
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

--[[
一回呼び出しで後ろを見る
二回目で正面に戻る
]]
function viewBehinde()
    if (viewFront) then
        PressAndReleaseKey("F5")
        PressAndReleaseKey("F5")
        viewFront = false
    else
        PressAndReleaseKey("F5")
        viewFront = true
    end
end
