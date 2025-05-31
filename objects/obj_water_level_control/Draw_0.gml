var offsetx, text;
draw_sprite_ext(
	sprite_index, 1,
	camera_x,
	camera_y,
	(camera_width / 16),
	(camera_height / 16),
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
		camera_x,
		camera_y
	);
	text = lang().editor.tabs.water_level;
} else {
    draw_sprite
		(spr_minitabs_en, 2,
		camera_x,
		camera_y
	);
	text = lang().editor.tabs.lava_level;
}
draw_set_font(global.font_google);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text(
	((camera_x) + sprite_get_width(spr_minitabs_en)/2 - offsetx),
	((camera_y - 1)),
	text
);
draw_set_halign(fa_left);