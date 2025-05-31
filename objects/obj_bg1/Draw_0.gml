draw_sprite(spr_cards_entorno_bg, active, (camera_x + x_pos), (camera_y + y_pos))
draw_sprite_ext(sprite_index, image_index, (camera_x + x_pos), (camera_y + y_pos), 1, 1, 0, c_white, 1)
if (active == 1)
{
    anim += 0.3
    scr_anim_hover(((camera_x + x_pos) + 1), ((camera_y + y_pos) + 1), anim, 0)
}

