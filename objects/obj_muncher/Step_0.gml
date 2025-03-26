if (mebelow == noone)
{
    col_pokey = collision_point(x, (bbox_bottom + 8), obj_muncher, 0, 0)
    if position_meeting(x, (bbox_bottom + 8), obj_muncher)
    {
        mebelow = collision_point(x, (bbox_bottom + 8), obj_muncher, 0, 0)
        vspeed = 0
        gravity = 0
        alarm[0] = 10
    }
    else
    {
        if (gravity == 0)
            var valor = 0.1
        else
            valor = 0.015
        hspeed = (max(0, (abs(hspeed) - valor)) * sign(hspeed))
        if (abs(hspeed) < valor)
            hspeed = 0
        if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
            swimming = 1
        else
            swimming = 0
        event_user(3)
        event_user(4)
        offset = 0
        offsetnext = 0
        alarm[0] = -1
    }
}
else
{
    instance_activate_object(mebelow)
    if instance_exists(mebelow)
    {
        x = mebelow.x
        y = (mebelow.y - sprite_height)
    }
    else
        mebelow = noone
}
