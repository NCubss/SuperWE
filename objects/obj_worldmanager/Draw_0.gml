if (edit) exit;
draw_set_font(global.fnt_big);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_alpha(hud_alpha);
draw_text_transformed(camera_x + 10 + hud_offsetx, camera_y + 10, string("World {0}", world_number), 1.5, 1.5, 0);
draw_set_alpha(1);