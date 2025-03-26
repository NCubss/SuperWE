var dark;
event_inherited()
hardness = 100
if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    dark = 1
else
    dark = 0
switch global.style
{
    case 0:
        if (dark == 1)
            sprite_index = spr_SMB_shell_empty_night
        else
            sprite_index = spr_SMB_shell_empty
        break
    case 1:
        if (dark == 1)
            sprite_index = spr_SMB3_shell_empty_night
        else
            sprite_index = spr_SMB3_shell_empty
        break
    case 2:
        sprite_index = spr_shell_buzzy_empty
        break
    case 3:
        sprite_index = spr_NSMBU_shell_buzzy_empty
        direct = -1
        break
}


