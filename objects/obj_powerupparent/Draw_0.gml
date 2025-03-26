draw_sprite_ext(sprite_index, image_index, round(x), y, 1, 1, 0, c_white, 1)
if (wings == 1)
{
    if (global.style > 1 || object_index == obj_megamushroom)
        draw_sprite(sprite_wings, wings_anim, x, y)
    else
        draw_sprite(sprite_wings, wings_anim, (x + 8), y)
}
if (paracaidas == 1)
{
    if (object_index == obj_megamushroom)
        draw_sprite_ext(spr_parachute, global.style, x, (y - 16), 1, 1, image_angle, c_white, 1)
    else
        draw_sprite_ext(spr_parachute, global.style, (x + 8), y, 1, 1, image_angle, c_white, 1)
}
