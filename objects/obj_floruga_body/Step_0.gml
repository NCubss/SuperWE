if (global.theme == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= obj_lava_water.y) || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 0))
    swimming = 1
else
    swimming = 0
if instance_exists(prevsegment)
{
    if (direct == 1 && x > prevsegment.x)
        direct = -1
    else if (direct == -1 && x < prevsegment.x)
        direct = 1
}
event_user(4)
