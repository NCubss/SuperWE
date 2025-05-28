if (pressed) {
	draw_set_color(c_white);
	image_index = 1 + (real(!obj_nm_browser.official) * 2);
} else {
	image_index = real(!obj_nm_browser.official) * 2;
	if (obj_nm_browser.official) {
		draw_set_color(#007F55);
	} else {
		draw_set_color(#EE145B);
	}
}
draw_sprite_part(sprite_index, image_index, 0, 0, sprite_width, (sprite_height - 4) + yoffset, x, y - yoffset);
draw_set_halign(fa_center);
var text;
switch (type) {
	case NMTab.FEATURED:
		text = lang().online.tabs.featured;
		sprite_index = spr_nm_tabs;
		break;
	case NMTab.POPULAR:
		text = lang().online.tabs.popular;
		sprite_index = spr_nm_tabs;
		break;
	case NMTab.NEWEST:
		text = lang().online.tabs.newest;
		sprite_index = spr_nm_tabs;
		break;
	case NMTab.SEARCH:
		text = lang().online.tabs.search;
		sprite_index = spr_nm_tabs;
		break;
	case NMTab.STARRED:
		text = -1;
		sprite_index = spr_nm_tabs_small;
		break;
	case NMTab.MY:
		text = -2;
		sprite_index = spr_nm_tabs_small;
		break;
}
if (is_string(text)) {
	draw_text(x + (sprite_width / 2), y - (yoffset / 2), text);
} else if (text == -1) {
	draw_sprite_ext(
		spr_nm_card_icons, 7,
		x + 5,
		y + 3 - (yoffset / 2),
		1, 1, 0, draw_get_color(), 1
	);
} else if (text == -2) {
	draw_sprite_ext(
		spr_nm_card_icons, 0,
		x + 5,
		y + 3 - (yoffset / 2),
		1, 1, 0, draw_get_color(), 1
	);
}
draw_set_halign(fa_left);