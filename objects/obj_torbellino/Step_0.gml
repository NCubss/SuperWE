if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1) || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
if (bortice != obj_lighting)
{
    if instance_exists(bortice)
    {
        bortice.x = x
        bortice.y = y
    }
}
event_user(6)
event_user(3)
event_user(4)

