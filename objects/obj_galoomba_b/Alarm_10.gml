if (hspeed == 0)
{
    if (paracaidas == 1 || vspeed < 0 || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) || collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_physicssolid, 0, 0))
    {
        if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 0))
            hspeed = (0.6 * direct)
        else
            hspeed = (1 * direct)
    }
    else
        alarm[10] = 2
}
