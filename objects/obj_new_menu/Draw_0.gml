gpu_set_blendenable(false);
draw_sprite_stretched(screen, 0, camera_x, camera_y, camera_width, camera_height);
gpu_set_blendenable(true);
draw_set_color(make_color_rgb(dark, dark, dark));
gpu_set_blendmode(bm_subtract);
draw_rectangle(camera_left, camera_top, camera_right, camera_bottom, false);
gpu_set_blendmode(bm_normal);
draw_set_color(c_white);

draw_surface_ext(bg.target, x, y, 0.5, 0.5, 0, c_white, 1);
//draw_set_halign(fa_center);
//draw_set_font(global.fnt_big);
//draw_text(x + 91.5, y + 12, title);
//draw_set_font(global.font_google);
//draw_set_halign(fa_left);
draw_big_text(x + 91.5, y + 12, title, fa_center);