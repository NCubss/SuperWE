surface_set_target(dialog.back.target)
gpu_surface_blend();
draw_sprite_ext(sprite_index, image_index, (x - dialog.x) * 2, (y - dialog.y) * 2, image_xscale * 2, image_yscale * 2, image_angle, image_blend, image_alpha);
gpu_set_blendmode(bm_normal);
surface_reset_target();