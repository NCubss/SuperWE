if (obj_levelmanager.editor == 0)
    exit
if (drag == 1)
    draw_sprite_ext(grid_selected, drop_lock, x, y, 1, 1, 0, c_white, 1)
else if (mouse_up == 1 && global.cursor == 0)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)
if (paracaidas == 1)
    draw_sprite(spr_parachute_editor, global.style, (x_draw + para_x), (y_draw - para_y))
if (wings == 1)
    draw_sprite(w_sprite, global.style, (x_draw + wings_x), (y_draw - wings_y))
draw_sprite_ext(sprite_index, image_index, x_draw, y_draw, s_scalex, s_scaley, 0, c_white, 1)
if (mouse_up == 1 && drag == 0 && global.cursor == 2)
    draw_sprite_ext(grid_selected, 0, x, y, 1, 1, 0, c_white, 1)

