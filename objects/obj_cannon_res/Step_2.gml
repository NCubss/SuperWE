if (obj_levelmanager.editor == 1)
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        var dark = 1
    else
        dark = 0
    switch global.style
    {
        case 0:
            if (dark == 1)
                sprite_index = spr_SMB_cannon_night
            else
                sprite_index = spr_SMB_cannon
            break
        case 1:
            if (dark == 1)
                sprite_index = spr_SMB3_cannon_night
            else
                sprite_index = spr_SMB3_cannon
            break
        case 2:
            sprite_index = spr_cannon
            break
        case 3:
            sprite_index = spr_NSMBU_cannon
            break
    }

    image_index = direct
    if (drag == 1 || (mouse_up == 0 && ready == 1))
        event_user(15)
}
