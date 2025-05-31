draw_sprite(spr_cartels_bg, active, (camera_x + x_pos), (camera_y + y_pos))
draw_sprite_ext(sprite_index, image_index, (camera_x + x_pos), (camera_y + y_pos), 1, 1, 0, c_white, image_alpha)
if (active == 1)
{
    anim += 0.3
    scr_anim_hover((camera_x) + x_pos, (camera_y) + y_pos, anim, 0)
}


