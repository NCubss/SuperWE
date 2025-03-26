var vel;
if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky"))
    vel = 0.6
else
    vel = 1
switch direct_t
{
    case 1:
        hspeed = (-vel)
        break
    case 2:
        vspeed = vel
        break
    case 3:
        hspeed = vel
        break
    case 4:
        vspeed = (-vel)
        break
}


