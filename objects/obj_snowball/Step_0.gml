prevhspeed = hspeed
if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
if (!instance_exists(obj_deadmario))
{
    event_user(3)
    event_user(4)
}
else
{
    speed = 0
    gravity = 0
}
if (hspeed != prevhspeed)
    event_user(0)
if outside_view()
    instance_destroy()
if (gravity == 0 && vspeed == 0)
{
    if (cont == 1)
        event_user(0)
    else
    {
        cont++
        vspeed = -4.225
        y--
    }
}
