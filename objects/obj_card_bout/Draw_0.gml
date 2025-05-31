draw_sprite_ext(sprite_index, image_index, ((camera_x + 29) - obj_cursor.anim_left), (camera_y + 65), 1, 1, 0, c_white, 1)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover(((camera_x + 29) - obj_cursor.anim_left), (camera_y + 65), anim, 1)
}

