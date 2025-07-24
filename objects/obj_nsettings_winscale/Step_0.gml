x = obj_new_settings.x + origx;
y = obj_new_settings.y + origy;
image_alpha = obj_new_settings.ui_alpha;
if (obj_coordinator.modo_android) {
	// disable if android
	image_index = 2;
} else {
	switch (type) {
		case NSWindowScale.X1:
			image_index = global.w_scale == 1;
			break;
		case NSWindowScale.X2:
			image_index = global.w_scale == 2;
			break;
		case NSWindowScale.X3:
			image_index = global.w_scale == 3;
			break;
		case NSWindowScale.X4:
			image_index = global.w_scale == 4;
			break;
		case NSWindowScale.FULLSCREEN:
			image_index = window_get_fullscreen();
			break;
	}
}