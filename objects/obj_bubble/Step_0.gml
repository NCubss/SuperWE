if ((instance_exists(obj_lava_water) && y <= (obj_lava_water.y + 8) && global.theme == "forest" && global.night == 0) || (global.theme != "underwater" && global.theme != "forest") || place_meeting(x, y, obj_solid))
    event_user(0)

