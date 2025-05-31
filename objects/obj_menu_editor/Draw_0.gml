draw_sprite_ext(sprite_index, image_index, camera_right - 26 + obj_cursor.anim_right, camera_y + 43, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if (mouse_in) {
    draw_hover_anim(camera_right - 26 + obj_cursor.anim_right, camera_y + 43, sprite_width - 1, sprite_height - 2);
}