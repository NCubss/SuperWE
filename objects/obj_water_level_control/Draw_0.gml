var offsetx, text;
draw_sprite_ext(
	sprite_index, 1,
	camera_get_view_x(view_get_camera(0)),
	camera_get_view_y(view_get_camera(0)),
	(camera_get_view_width(view_get_camera(0)) / 16),
	(camera_get_view_height(view_get_camera(0)) / 16),
	0, c_white, 1
);
if (global.language == Language.ENGLISH) {
	offsetx = (string_width(lang().editor.tabs.water_level) - 28);
} else if (global.language == Language.PORTUGUESE) {
	offsetx = (string_width(lang().editor.tabs.water_level) - 30);
} else if (global.language == Language.ITALIAN) {
	offsetx = 1;
} else if (global.language == Language.CHINESE) {
	offsetx = (string_width(lang().editor.tabs.water_level) - 27);
} else {
	offsetx = (string_width(lang().editor.tabs.water_level) - 30);
}
if (global.theme == "forest" || global.theme == "beach") {
    draw_sprite(
		spr_minitabs_en, 1,
		camera_get_view_x(view_get_camera(0)),
		camera_get_view_y(view_get_camera(0))
	);
	text = lang().editor.tabs.water_level;
} else {
    draw_sprite
		(spr_minitabs_en, 2,
		camera_get_view_x(view_get_camera(0)),
		camera_get_view_y(view_get_camera(0))
	);
	text = lang().editor.tabs.lava_level;
}
draw_set_font(global.font_google);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(
	((camera_get_view_x(view_get_camera(0))) + sprite_get_width(spr_minitabs_en)/2 - offsetx),
	((camera_get_view_y(view_get_camera(0)) - 1)),
	text
);
draw_set_halign(fa_left);