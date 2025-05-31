draw_sprite_ext(sprite_index, image_index, (((camera_right) - 26) + obj_cursor.anim_right), (camera_y + 129), 1, 1, 0, c_white, 1)   
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover((((camera_right) - 26) + obj_cursor.anim_right), (camera_y + 129), anim, 2)
}


