if (global.cursor == 2) {
	exit;
}
var xx = camera_right - 37;
var yy = camera_top + 114;
var w = 6;
var h = 24;
if (point_in_rectangle(mouse_x, mouse_y, xx + xoffset, yy, xx+w + xoffset, yy+h)) {
	audio_play_sound(snd_close_palette2, 0, false);
	event_user(!open);
}