if (inup > 0)
{
    if (global.style == 3)
        sprite_index = spr_NSMBU_boo_stretch
    else
    {
        sprite_index = spr_boo_stretch
        image_index = global.style
    }
    hspeed = (1 * direct)
    alarm[0] = 180
}

