if (active == 0)
    draw_sprite(spr_cartels_bg, 0, ((camera_x + 6) - obj_cursor.anim_left), (camera_y + 41))
draw_sprite_ext(sprite_index, image_index, ((camera_x + 6) - obj_cursor.anim_left), (camera_y + 41), 1, 1, 0, c_white, 1)
if (effect_hover == 1)
{
    anim += 0.3
    scr_anim_hover((((camera_x) + 6) - obj_cursor.anim_left), ((camera_y) + 41), anim, 0)
}


