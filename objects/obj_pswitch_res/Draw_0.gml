if (obj_levelmanager.editor == 0)
	exit
if (drag == 1)
{
    if (drop_lock == 1)
        draw_sprite_ext(grid_selected, 1, (floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), 1, 1, 0, c_white, 1)
    else
        draw_sprite_ext(grid_selected, 0, (floor((mouse_x / 16)) * 16), (floor((mouse_y / 16)) * 16), 1, 1, 0, c_white, 1)
}
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
if (inup == 1)
    draw_sprite_ext(sprite_index, image_index, (x_draw + 16), (y_draw + 16), 1, 1, 180, c_white, m_alpha)
else
    draw_sprite_ext(sprite_index, image_index, x_draw, y_draw, image_xscale, 1, 0, c_white, m_alpha)
if wings = 1 and inup != 1
    draw_sprite_ext(w_sprite, global.style, (x_draw + wings_x), (y_draw - wings_y), s_scalex, s_scaley, 1, c_white, m_alpha)
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
