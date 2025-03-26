if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky") || (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.theme == "forest" && global.night == 0))
    vspeed = -2.125
else
    vspeed = -4.125
if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
    hspeed = 0.5
else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    hspeed = -0.5
