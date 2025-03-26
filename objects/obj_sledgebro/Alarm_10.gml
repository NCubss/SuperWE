if (hspeed == 0)
{
    if (paracaidas == 1)
        hspeed = -0.5
    else if ((!instance_exists(obj_mario)) || obj_mario.x < x)
    {
        if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1))
            hspeed = -0.3
        else
            hspeed = -0.4
    }
    else if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1))
        hspeed = 0.3
    else
        hspeed = 0.4
}

