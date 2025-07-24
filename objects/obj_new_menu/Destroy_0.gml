audio_resume_all();
//event_perform_object(obj_button_close_menu, ev_mouse, ev_left_press);
instance_destroy(obj_nmenu_close);
instance_destroy(obj_nmenu_page);
instance_destroy(obj_nmenu_yamamura);
instance_destroy(obj_nmenu_settings);
instance_destroy(bg);
for (var i = 0; i < array_length(active_instances); i++) {
	instance_activate_object(active_instances[i]);
}
sprite_delete(screen);