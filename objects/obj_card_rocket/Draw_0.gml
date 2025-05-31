draw_sprite(spr_rocket_draw, 0, (((camera_x + camera_width) - 26) + obj_cursor.anim_right), (camera_y + 184))
if (ready == 0)
    draw_sprite_ext(sprite_index, image_index, (((camera_x + camera_width) - 26) + obj_cursor.anim_right), (camera_y + 184), 1, 1, 0, c_white, 1)
else
    draw_sprite_ext(sprite_index, image_index, (camera_x + camera_width), (camera_y + 216), 1, 1, 0, c_white, 1)
if (counter_draw == 1)
    draw_sprite(spr_rocket_counter, counter_anim, (camera_x + 192), (camera_y + 108))