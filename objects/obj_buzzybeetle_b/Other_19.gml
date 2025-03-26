imheld = instance_create(x, y, obj_shell)
if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    var dark = 1
else
    dark = 0
switch global.style
{
    case 0:
        if (dark == 1)
            imheld.sprite_index = spr_SMB_shell_buzzy_night_b
        else
            imheld.sprite_index = spr_SMB_shell_buzzy_b
        break
    case 1:
        if (dark == 1)
            imheld.sprite_index = spr_SMB3_shell_buzzy_night_b
        else
            imheld.sprite_index = spr_SMB3_shell_buzzy_b
        break
    case 2:
        imheld.sprite_index = spr_shell_buzzy_b
        break
    case 3:
        imheld.sprite_index = spr_NSMBU_shell_buzzy_b
        break
}

imheld.koopainside = -1
imheld.hardness = 100
imheld.flip = 1
imheld.alarm[3] = 540
imheld.alarm[4] = 600
instance_destroy()
