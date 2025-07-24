draw_self();
draw_sprite(spr_bg_goma_de_borrar, 0, 0, 0);
draw_set_color(c_black);
draw_set_alpha(dark_alpha);
draw_rectangle(camera_x, camera_y, camera_width, camera_height, false);
draw_set_alpha(1);
draw_set_color(c_white);
