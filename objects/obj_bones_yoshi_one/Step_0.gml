if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 14) && global.theme == "forest") || global.theme == "beach")
    image_angle -= (6 * sign(hspeed))
else
    image_angle -= (12 * sign(hspeed))
if (x < (camera_x - 32) || x > ((camera_right) + 32) || y > ((camera_bottom) + 32))
    instance_destroy()

