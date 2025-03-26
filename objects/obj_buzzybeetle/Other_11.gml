if (wings == 1)
    exit
with (instance_create(x, y, obj_shell))
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        var dark = 1
    else
        dark = 0
    switch global.style
    {
        case 0:
            if (dark == 1)
                sprite_index = spr_SMB_shell_buzzy_night
            else
                sprite_index = spr_SMB_shell_buzzy
            break
        case 1:
            if (dark == 1)
                sprite_index = spr_SMB3_shell_buzzy_night
            else
                sprite_index = spr_SMB3_shell_buzzy
            break
        case 2:
            sprite_index = spr_shell_buzzy
            break
        case 3:
            sprite_index = spr_NSMBU_shell_buzzy
            break
    }

    direct = other.direct
    koopainside = -1
    hardness = 100
    if (other.inup == 1)
        flip = 1
    alarm[3] = 540
    alarm[4] = 640
}
instance_destroy()
