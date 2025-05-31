draw_sprite_ext(sprite_index, image_index, ((camera_x + 6) - obj_cursor.anim_left), (camera_y + 133), 1, 1, 0, c_white, 1)
if (global.condiciones == 1)
    draw_sprite(spr_cond_iconspanel, global.condiciones_count, ((camera_x + 27) - obj_cursor.anim_left), (camera_y + 135))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(((camera_x + 6) - obj_cursor.anim_left), (camera_y + 133), anim, 0)
}

