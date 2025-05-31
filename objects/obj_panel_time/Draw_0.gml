draw_sprite_ext(sprite_index, image_index, ((camera_x + 6) - obj_cursor.anim_left), (camera_y + 109), 1, 1, 0, c_white, 1)
if (active == 1)
    draw_set_font(global.time_digits_white)
else
    draw_set_font(global.time_digits)
draw_text(((camera_x + 24) - obj_cursor.anim_left), (camera_y + 116), string_hash_to_newline(string_add_zeros(obj_levelmanager.leveltime, 3)))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(((camera_x + 6) - obj_cursor.anim_left), (camera_y + 109), anim, 0)
}

