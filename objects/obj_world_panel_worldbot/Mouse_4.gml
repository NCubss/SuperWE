if (image_index == image_number - 1 && point_in_rectangle(
		mouse_x, mouse_y,
		x + 137, y + 39,
		x + 150, y + 52
	)
) {
	audio_play_sound(snd_close_guardabot, 0, false);
	event_user(0);
}