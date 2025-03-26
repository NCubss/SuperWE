if (held == 0 && other.vspeed < 0 && kickme == 1)
{
    if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky"))
        vspeed = -1.8
    else
        vspeed = -3
    y--
    kickme = 0
    alarm[2] = 4
}
else if (held == 0 && other.vspeed < 0 && vspeed < 0)
    event_user(1)
