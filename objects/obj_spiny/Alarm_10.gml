event_inherited()
if (wings == 1 && inup == 0)
{
    if (global.style == 3)
    {
        sprite_index = spr_NSMBU_spiny_wings
        image_index = 0.9
    }
    else
    {
        sprite_index = spr_spiny_wings
        image_index = global.style
        image_speed = 0
    }
    alarm[0] = 126
}

