if (in_cheat_mode) {
	draw_sprite_ext(cheat_mode_surf, 0, camera_x, camera_y, 0.5, 0.5, 0, c_white, 1);
	draw_set_color(c_black);
	draw_set_alpha(0.25);
	draw_rectangle(camera_left, camera_top, camera_right, camera_bottom + 16, false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(camera_x + 5, camera_y, keyboard_string);
	draw_text(camera_x + 5, camera_y + 20, output);
}
if (array_length(monitor_ext) != 0) {
	var txt = "";
	txt += monitor_ext[0].text;
	for (var i = 1; i < array_length(monitor_ext); i++) {
		txt += $"\n{monitor_ext[i].text}";
	}
	draw_set_color(c_black);
	draw_set_alpha(0.25);
	draw_rectangle(camera_x, camera_y, camera_x + string_width(txt), camera_y + string_height(txt), false);
	draw_set_alpha(1);	
	for (var i = 0; i < array_length(monitor_ext); i++) {
		draw_set_halign(fa_left);
		draw_set_color(monitor_ext[i].color);
		draw_text(camera_x, camera_y + (string_height(txt) * i), monitor_ext[i].text);
	}
	draw_set_color(c_white);
}