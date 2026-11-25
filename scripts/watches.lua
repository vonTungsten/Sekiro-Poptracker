-- Archipelago:AddClearHandler("clear handler", onClear)
Archipelago:AddClearHandler("clear handler", onClearHandler)
Archipelago:AddItemHandler("item handler", onItem)
Archipelago:AddLocationHandler("location handler", onLocation)

Archipelago:AddSetReplyHandler("notify handler", OnNotify)
Archipelago:AddRetrievedHandler("notify launch handler", OnNotifyLaunch)

function UpdateMapsLayout()
    if not (string.find(Tracker.ActiveVariantUID, "map")) then
        return
    end
    if Tracker:FindObjectForCode("setting_goal_option").CurrentStage == 0 then
        Tracker:AddLayouts("layouts/maps/maps_full_game.json")
    else
        Tracker:AddLayouts("layouts/maps/maps_shura.json")
    end
end

function UpdateKeyItemLayout()
    local filepath = "layouts/items/item_arrays"
    if Tracker:FindObjectForCode("setting_goal_option").CurrentStage == 0 then
        filepath = filepath .. "_full_game"
    else
        filepath = filepath .. "_shura"
    end
    if Tracker:FindObjectForCode("setting_region_locks").Active then
        filepath = filepath .. "_ap_extras"
    end
    if Tracker:FindObjectForCode("setting_show_missable").Active then
        filepath = filepath .. "_missable"
    end
    filepath = filepath .. ".json"
    Tracker:AddLayouts(filepath)
end

ScriptHost:AddWatchForCode("shura-vs-full-game-maps-update", "setting_goal_option", UpdateMapsLayout)
ScriptHost:AddWatchForCode("shura-vs-full-game-item-update", "setting_goal_option", UpdateKeyItemLayout)
ScriptHost:AddWatchForCode("ap-extras-item-update", "setting_region_locks", UpdateKeyItemLayout)
ScriptHost:AddWatchForCode("missables-item-update", "setting_show_missable", UpdateKeyItemLayout)
