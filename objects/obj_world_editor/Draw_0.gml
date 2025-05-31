if (global.cursor == 2) {
	draw_sprite(spr_bg_goma_de_borrar, 0, camera_x, camera_y);
	draw_sprite(spr_minitabs_en, 3, camera_x + 6 + (33 - obj_panel_world_left.xoffset), camera_y + 34 - obj_panel_world_top.yoffset);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(camera_x + 59 + (33 - obj_panel_world_left.xoffset), camera_y + 34 - obj_panel_world_top.yoffset, lang().editor.border.erase);
	draw_set_halign(fa_left);
}