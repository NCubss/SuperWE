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
var icecoin = collision_rectangle((bbox_left - 2), (bbox_top - 2), (bbox_right + 2), (bbox_bottom + 2), obj_icecoin, 0, 0)
if icecoin
{
    with (icecoin)
        event_user(1)
    event_user(0)
}
if (hspeed != prevhspeed)
    event_user(0)
if outside_view()
    instance_destroy()
if (gravity == 0 && (!instance_exists(obj_deadmario)))
{
    vspeed = -2.2
    y--
}


