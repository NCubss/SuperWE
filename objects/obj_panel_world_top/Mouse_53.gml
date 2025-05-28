var xx = camera_left + 180;
var yy = camera_top + 34;
var w = 24;
var h = 6;
if (point_in_rectangle(mouse_x, mouse_y, xx, yy - yoffset, xx+w, yy+h - yoffset)) {
	audio_play_sound(snd_close_palette2, 0, false);
	event_user(!open);
}