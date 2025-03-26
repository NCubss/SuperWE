event_inherited()
if (wings == 0)
{
    if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1))
    {
        if (hspeed > 1)
        {
            hspeed -= 0.08
            if (hspeed <= 1)
                hspeed = 1
        }
        else if (hspeed < -1)
        {
            hspeed += 0.08
            if (hspeed >= -1)
                hspeed = -1
        }
    }
    else if (hspeed > 1.1)
    {
        hspeed -= 0.08
        if (hspeed <= 1.1)
            hspeed = 1.1
    }
    else if (hspeed < -1.1)
    {
        hspeed += 0.08
        if (hspeed >= -1.1)
            hspeed = -1.1
    }
}

