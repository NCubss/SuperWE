if (wings == 1 && paracaidas == 0)
{
    hspeed = (0.5 * direct)
    vspeed = -0.5
}
else if (paracaidas == 1)
    hspeed = -0.6
else if (paracaidas == 0)
{
    if (up == 1)
    {
        if (global.theme == "underwater" || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 0))
        {
            vspeed = -1
            swimming = 1
        }
        else
        {
            vspeed = -2
            swimming = 0
        }
    }
}

