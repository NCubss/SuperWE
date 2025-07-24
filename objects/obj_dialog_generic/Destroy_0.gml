// Resume all sounds
if (pause_sounds) {
	audio_resume_all();
}

// Destroy everything else
instance_destroy(close_btn);
instance_destroy(back);

// Don't risk memory leaks
sprite_delete(screen);

// Reenable deactivated instances
for (var i = 0; i < array_length(active_instances); i++) {
	instance_activate_object(active_instances[i]);
}