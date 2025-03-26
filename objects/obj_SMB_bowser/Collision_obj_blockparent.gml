if (other.vspeed < 0 && bbox_bottom < (other.yprevious + 5))
{
    if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1))
        vspeed = -0.5
    else
        vspeed = -1
}

