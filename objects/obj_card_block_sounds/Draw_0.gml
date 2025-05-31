draw_sprite_ext(sprite_index, image_index, (camera_x + 6), ((camera_y + 5) - obj_cursor.anim_top), 1, 1, 0, c_white, 1)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover((camera_x + 6), ((camera_y + 5) - obj_cursor.anim_top), anim, 2)
}


