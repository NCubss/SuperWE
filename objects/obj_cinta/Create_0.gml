sprite = 0
if (global.style == 0)
{
    if (global.theme == "castle")
    {
        sprite1 = spr_SMB_cinta_left_dark
        sprite2 = spr_SMB_cinta_middle_dark
        sprite3 = spr_SMB_cinta_right_dark
    }
    else if ((global.theme == "underground") || ((global.theme == "ghost") || (global.night == 1)))
    {
        sprite1 = spr_SMB_cinta_left_night
        sprite2 = spr_SMB_cinta_middle_night
        sprite3 = spr_SMB_cinta_right_night
    }
    else
    {
        sprite1 = spr_SMB_cinta_left
        sprite2 = spr_SMB_cinta_middle
        sprite3 = spr_SMB_cinta_right
    }
}
else if (global.style == 1)
{
    if (global.theme == "castle")
    {
        sprite1 = spr_SMB3_cinta_left_dark
        sprite2 = spr_SMB3_cinta_middle_dark
        sprite3 = spr_SMB3_cinta_right_dark
    }
    else if ((global.theme == "underground") || ((global.theme == "ghost") || (global.night == 1)))
    {
        sprite1 = spr_SMB3_cinta_left_night
        sprite2 = spr_SMB3_cinta_middle_night
        sprite3 = spr_SMB3_cinta_right_night
    }
    else
    {
        sprite1 = spr_SMB3_cinta_left
        sprite2 = spr_SMB3_cinta_middle
        sprite3 = spr_SMB3_cinta_right
    }
}
else if (global.style == 2)
{
    sprite1 = spr_cinta_left
    sprite2 = spr_cinta_middle
    sprite3 = spr_cinta_right
}
else
{
    sprite1 = spr_NSMBU_cinta_left
    sprite2 = spr_NSMBU_cinta_middle
    sprite3 = spr_NSMBU_cinta_right
}
size_x = 4
velocidad = 0
image_speed = 0
direct_t = 0
stop = 0

