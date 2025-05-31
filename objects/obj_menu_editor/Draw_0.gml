draw_sprite_ext(sprite_index, image_index, (((camera_x + camera_width) - 26) + obj_cursor.anim_right), (camera_y + 43), 1, 1, 0, c_white, 1)
if (effect_hover == 1) {
    draw_hover_anim(x, y, sprite_width - 1, sprite_height - 2);
}

