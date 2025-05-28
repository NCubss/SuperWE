output = "";
if (!in_cheat_mode) {
	cheat_mode_surf = sprite_create_from_surface(application_surface, 0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false, false, 0, 0);
	instance_deactivate_all(true);
	instance_activate_object(obj_coordinator);
	visible = true;
	keyboard_string = "";
} else {
	instance_activate_all();
}
in_cheat_mode = !in_cheat_mode;