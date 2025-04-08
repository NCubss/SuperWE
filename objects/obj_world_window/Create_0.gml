object = 0;
destroying = false;
obj_world_editor.can_interact = false;
audio_play_sound(snd_open_windows, 0, false);

animator(ac_window, 0, id, "image_xscale", 0.5, 1, 8);
animator(ac_window, 0, id, "image_yscale", 0.5, 1, 8);
alarm[1] = 8;