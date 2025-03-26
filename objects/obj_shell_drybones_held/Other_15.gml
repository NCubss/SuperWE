imheld = instance_create(x, (y - 2), obj_shell_drybones)
imheld.sprite_index = sprite_index
if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky") || (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.theme == "forest" && global.night == 0))
    imheld.vspeed = -1.8
else
    imheld.vspeed = -3
if ((other.bbox_left + (other.bbox_right / 2)) <= (bbox_left + (bbox_right / 2)))
    imheld.hspeed = 0.5
else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    imheld.hspeed = -0.5
instance_destroy()
