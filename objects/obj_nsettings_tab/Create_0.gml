mouse_in = false;
origx = x;
origy = y;
event_perform(ev_step, ev_step_normal);
switch (image_index) {
	// Graphics
	case 0:
		text = lang().new_settings.video.title;
		break;
	// Controls
	case 4:
	case 1:
		text = lang().new_settings.controls.title;
		break;
	// Miscellaneous
	case 2:
		text = lang().new_settings.miscellaneous.title;
		break;
	// About
	case 3:
		text = lang().new_settings.about.title;
}