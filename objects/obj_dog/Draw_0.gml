draw_sprite(sprite_index, image_index, (((camera_right) - 26) + obj_cursor.anim_right), (camera_y + 159))
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover((((camera_right) - 26) + obj_cursor.anim_right), (camera_y + 160), anim, 2)
}

