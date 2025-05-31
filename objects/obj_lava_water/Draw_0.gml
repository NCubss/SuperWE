var pos;
if (camera_y >= (y + 16))
    pos = camera_y
else
    pos = (y + 4)
if (global.style == 3 && global.theme == "forest" && global.night == 1)
{
    num_tile_ancho_d = 21
    num_tile_alto_d = 48
    num_ancho_d = ceil((room_width / num_tile_ancho_d))
    num_alto_d = ceil((240 / num_tile_alto_d))
    pos = (y + 18)
    for (i = 0; i < num_ancho_d; i++)
    {
        for (j = 0; j < num_alto_d; j++)
            draw_sprite_ext(spr_NSMBU_poison_down, anim_lava, (i * num_tile_ancho_d), (pos + (j * num_tile_alto_d)), 1, 1, 0, c_white, image_alpha)
    }
}
else
		draw_sprite_ext(img_sprite, global.style, camera_x, pos, ((camera_width + 16) / 16), ((camera_height + 16) / 16), 0, c_white, image_alpha)
if ((global.theme == "forest" && global.night == 0) || global.theme == "beach")
{
    if (global.style > 1)
        num_tile_ancho = 32
    else
        num_tile_ancho = 16
}
else if (global.style == 3)
    num_tile_ancho = 64
else
    num_tile_ancho = 16
num_ancho = ceil((room_width / num_tile_ancho))
if instance_exists(obj_water_move)
{
    for (i = 0; i < num_ancho; i++)
        draw_sprite_ext(sprite_index, image_index, (i * num_tile_ancho), obj_water_move.y, 1, 1, 0, c_white, image_alpha)
}
else
{
    for (i = 0; i < num_ancho; i++)
        draw_sprite_ext(sprite_index, image_index, (i * num_tile_ancho), (y - 12), 1, 1, 0, c_white, image_alpha)
}

