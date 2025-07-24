switch (image_index) {
	case 0:
		// warning button
		audio_play_sound(snd_aceptar, 0, false);
		instance_create_depth(0, 0, 0, obj_new_settings, {
			page: NSPage.DISCLAIMER,
			make_back_btn: false
		});
		break;
	case 1:
		// logout button
		audio_play_sound(snd_wrong, 0, false);
		break;
	case 2:
		// settings button
		audio_play_sound(snd_niveles_mundiales, 0, false);
		instance_create_depth(0, 0, 0, obj_new_settings);
		break;
	case 3:
		// exit to title button
		audio_play_sound(snd_inventory, 0, false);
		room = rm_title;
		break;
	case 4:
		// help button
		audio_play_sound(snd_aceptar, 0, false);
		instance_create_depth(0, 0, 0, obj_new_settings, {
			page: NSPage.ABOUT,
			make_back_btn: false
		});
		break;
}