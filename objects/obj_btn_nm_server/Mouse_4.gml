if (disabled) exit;
transitioning = true;
mouse_in = false;
audio_stop_sound(snd_modo_historia);
audio_play_sound(snd_modo_historia, 0, false);
with (instance_create_layer((bool(type) ? -1 : 1) * camera_get_view_width(view_camera[0]), 0, "Browser", obj_nm_browser)) {
	official = other.type;
}
animator(ac_nm_page_move, 0, obj_nm_main, "camx", 0, (bool(type) ? -1 : 1) * camera_get_view_width(view_camera[0]), 90);
// color transition (you can't directly animate #000000 to #ffffff for example because it acts like one number)
if (bool(type)) {
	animator(ac_nm_page_move, 1, obj_nm_main, "c1r", obj_nm_main.c1r, 0x20, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c1g", obj_nm_main.c1g, 0xd6, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c1b", obj_nm_main.c1b, 0xc7, 90);
	
	animator(ac_nm_page_move, 1, obj_nm_main, "c2r", obj_nm_main.c2r, 0x28, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c2g", obj_nm_main.c2g, 0x5c, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c2b", obj_nm_main.c2b, 0xc4, 90);
	
	animator(ac_nm_page_move, 1, obj_nm_main, "c3r", obj_nm_main.c3r, 0x14, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c3g", obj_nm_main.c3g, 0x34, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c3b", obj_nm_main.c3b, 0x44, 90);
	
	animator(ac_nm_page_move, 1, obj_nm_main, "c4r", obj_nm_main.c4r, 0x23, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c4g", obj_nm_main.c4g, 0x67, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c4b", obj_nm_main.c4b, 0x4e, 90);
} else {
	animator(ac_nm_page_move, 1, obj_nm_main, "c1r", obj_nm_main.c1r, 0xbc, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c1g", obj_nm_main.c1g, 0x4a, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c1b", obj_nm_main.c1b, 0x9b, 90);
	
	animator(ac_nm_page_move, 1, obj_nm_main, "c2r", obj_nm_main.c2r, 0xc8, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c2g", obj_nm_main.c2g, 0x6a, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c2b", obj_nm_main.c2b, 0x73, 90);
	
	animator(ac_nm_page_move, 1, obj_nm_main, "c3r", obj_nm_main.c3r, 0xb4, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c3g", obj_nm_main.c3g, 0x20, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c3b", obj_nm_main.c3b, 0x2a, 90);
	
	animator(ac_nm_page_move, 1, obj_nm_main, "c4r", obj_nm_main.c4r, 0x79, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c4g", obj_nm_main.c4g, 0x3a, 90);
	animator(ac_nm_page_move, 1, obj_nm_main, "c4b", obj_nm_main.c4b, 0x80, 90);
}