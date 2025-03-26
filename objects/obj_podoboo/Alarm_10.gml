if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky") || (instance_exists(obj_lava_water) && y >= obj_lava_water.y && global.theme == "forest" && global.night == 0))
    gravity = 0.1
else
    gravity = 0.2
