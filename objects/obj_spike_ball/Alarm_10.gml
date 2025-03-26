if (spike_alone == 0)
{
    if (global.style == 2)
    {
        if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1) || (global.theme == "airship" && global.night == 1))
            vspeed = -1
        else
            vspeed = -2.5
    }
}
else if (paracaidas == 1)
{
    hspeed = -0.5
    ready = 1
    fisica = 1
}
else
{
    ready = 1
    fisica = 1
    alarm[0] = 10
}
