if (wings == 0 && paracaidas == 0)
{
    vspeed = 0
    if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 0))
        path_start(pth_leafpath, -1.5, path_action_continue, 0)
    else
        path_start(pth_leafpath, 1.5, path_action_continue, 0)
    ready = 1
}

