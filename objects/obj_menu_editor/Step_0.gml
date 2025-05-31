x = camera_right - 26 + obj_cursor.anim_right;
y = camera_y + 43;

if (position_meeting(mouse_x, mouse_y, id) && !mouse_in) {
	if ((instance_exists(obj_editormanager) && obj_editormanager.expand_open == 0) || global.in_world_editor) {
    	if (!mouse_in) {
        	audio_stop_sound(snd_panel_right_move);
        	audio_play_sound(snd_panel_right_move, 0, false);
    	}
		mouse_in = true;
	}
} else if (!position_meeting(mouse_x, mouse_y, id) && mouse_in) {
	mouse_in = false;
}