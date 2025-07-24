if (image_index != NMMPage.ENDLESS) {
	audio_stop_all();
	with (obj_nmenu_page) {
		selected = false;
	}
	selected = true;
}
switch (image_index) {
	case NMMPage.COURSE_MAKER:
		audio_play_sound(snd_modo_historia, 0, false);
		room = rm_editor;
		break;
	// uhh,
	case NMMPage.ENDLESS:
		// no
		audio_play_sound(snd_wrong, 0, false);
		break;
	case NMMPage.COURSE_WORLD:
		audio_play_sound(snd_niveles_mundiales, 0, false);
		// for now (please don't tell me this is just going to stay here like those TWO other times)
		room = rm_course_world;
		break;
	case NMMPage.COURSEBOT:
		audio_play_sound(snd_modo_historia, 0, false);
		room = rm_guardabot;
		break;
	case NMMPage.WORLD_MAKER:
		audio_play_sound(snd_modo_historia, 0, false);
		room = rm_world_editor;
		break;
	case NMMPage.WORLDBOT:
		audio_play_sound(snd_modo_historia, 0, false);
		room = rm_worldbot;
		break;
}