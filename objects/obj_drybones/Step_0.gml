if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky") || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
if (wings == 0 || paracaidas == 1)
{
    event_inherited()
    event_user(6)
}
else if (wings == 1 && paracaidas == 0)
{
    wings_anim += 0.12
    if ((!instance_exists(obj_mario)) || obj_mario.x < x)
        direct = -1
    else
        direct = 1
    if (y > (ystart + 32))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.015
    }
    else if (y < (ystart - 32))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.015
    }
    if ((collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_block_pow_hold, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_block_pow_hold, 0, 0))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_muncher, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_muncher, 0, 0))) || (collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_pinchos, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_pinchos, 0, 0))))
    {
        if (vspeed > 0)
            vspeed = -0.4
    }
    else if (vspeed < 0 && (collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_solid, 1, 0) || collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)))
        vspeed = 0.4
}
if (paracaidas == 1)
{
    direct = -1
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity == 0)
    {
        instance_create((x + (3 * direct)), (y + para_y), obj_paracaidas_go)
        paracaidas = 0
        ystart = (y - 32)
        hspeed = 0
        alarm[10] = 10
    }
}

