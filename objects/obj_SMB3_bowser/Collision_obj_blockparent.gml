if (other.vspeed < 0 && groundpount == 0 && groundpount_cont == 0)
{
    if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1))
        vspeed = -0.5
    else
        vspeed = -1.5
}

