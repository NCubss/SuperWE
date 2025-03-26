draw_self()
if (wings == 1)
{
    if (global.style == 2)
        draw_sprite(sprite_wings, wings_anim, (x - 8), y)
    else
        draw_sprite(sprite_wings, wings_anim, x, y)
}

