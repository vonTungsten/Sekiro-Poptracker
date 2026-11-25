Tracker:AddLayouts("layouts/toplevel/settings_popup.json")
Tracker:AddLayouts("layouts/items/item_grids.json")
Tracker:AddLayouts("layouts/items/item_arrays_full_game_ap_extras_missable.json")

if (string.find(Tracker.ActiveVariantUID, "map")) then
    Tracker:AddLayouts("layouts/maps/maps_full_game.json")
end

if (string.find(Tracker.ActiveVariantUID, "vertical")) then
    Tracker:AddLayouts("layouts/toplevel/broadcast_vertical.json")
    Tracker:AddLayouts("layouts/toplevel/tracker_vertical.json")
else
    Tracker:AddLayouts("layouts/toplevel/broadcast_horizontal.json")
    Tracker:AddLayouts("layouts/toplevel/tracker_horizontal.json")
end
