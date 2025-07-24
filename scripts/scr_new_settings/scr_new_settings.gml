/**
	@description	Generates a New Settings page.
	@self			obj_new_settings
	@param			{real} new_page		The page that should be generated
	@param			{bool} back_btn		Whether the back button should be generated (if the page contains it). An exit button will be created instead.
	@returns		{undefined}
*/
function ns_generate_page(new_page, back_btn) {
	ns_delete_all();
	if (back_btn && new_page != NSPage.HOME) {
		instance_create_depth(5, 5, -2.5, obj_nsettings_back);
	} else {
		close_btn = instance_create_depth(width - sprite_get_width(object_get_sprite(obj_close_dialog)) - 5, 5, -1, obj_close_dialog, { dialog: id });
	}
	switch (new_page) {
		case NSPage.HOME:
			instance_create_depth(37, 32, -3, obj_nsettings_tab, { image_index: 0 });
			instance_create_depth(164, 32, -4, obj_nsettings_tab, { image_index: 1 });
			instance_create_depth(37, 100, -5, obj_nsettings_tab, { image_index: 2 });
			instance_create_depth(164, 100, -6, obj_nsettings_tab, { image_index: 3 });
			break;
		case NSPage.VIDEO:
			instance_create_depth(16, 48, -3, obj_nsettings_winscale, { type: NSWindowScale.X1 });
			instance_create_depth(45, 48, -4, obj_nsettings_winscale, { type: NSWindowScale.X2 });
			instance_create_depth(74, 48, -5, obj_nsettings_winscale, { type: NSWindowScale.X3 });
			instance_create_depth(103, 48, -6, obj_nsettings_winscale, { type: NSWindowScale.X4 });
			instance_create_depth(138, 48, -7, obj_nsettings_winscale, { type: NSWindowScale.FULLSCREEN });
			instance_create_depth(16, 77, -8, obj_nsettings_shadows);
			break;
		case NSPage.CONTROLS:
			break;
		case NSPage.MISCELLANEOUS:
			break;
		case NSPage.ABOUT:
			break;
		case NSPage.DISCLAIMER:
			break;
		default:
			throw "Unknown New Settings page!";
	}
}

/**
	@description	Deletes all buttons on the New Settings modal.
	@self			obj_new_settings
	@returns		{undefined}
*/
function ns_delete_all() {
	with (obj_close_dialog) {
		if (dialog == obj_new_settings.id) {
			instance_destroy();
		}
	}
	instance_destroy(obj_nsettings_tab);
	instance_destroy(obj_nsettings_back);
	instance_destroy(obj_nsettings_winscale);
	instance_destroy(obj_nsettings_shadows);
}