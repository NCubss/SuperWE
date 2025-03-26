if (rotten == 1)
{
    draw_sprite_ext(spr_rotten, global.style, round((x + 8)), round((y + 16)), (xscale2 * direct), yscale2, 0, c_white, 1)
    if (wings == 1)
    {
        if (global.style > 1)
            draw_sprite(sprite_wings, wings_anim, x, y)
        else
            draw_sprite(sprite_wings, wings_anim, (x + 8), y)
    }
    if (paracaidas == 1)
        draw_sprite_ext(spr_parachute, global.style, (x + 8), y, 1, 1, image_angle, c_white, 1)
}
else
    event_inherited()

