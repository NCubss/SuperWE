surface_set_target(obj_new_settings.back.target);
gpu_surface_blend();
draw_sprite_ext(sprite_index, image_index, origx * 2, origy * 2, image_xscale * 2, image_yscale * 2, image_angle, image_blend, image_alpha);
gpu_set_blendmode(bm_normal);
surface_reset_target();
