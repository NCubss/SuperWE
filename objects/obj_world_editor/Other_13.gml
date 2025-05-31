var inst = instance_position(mouse_x, mouse_y, obj_parent_world_res);
if (
	point_in_rectangle(mouse_x, mouse_y, camera_x + 36, camera_y + 36, camera_x + 350, camera_y + 216)
	&& inst != noone
	&& (
		mouse_x div 48 != start_x
		|| mouse_y div 48 != start_y
	) && (
		mouse_x div 48 != end_x
		|| mouse_y div 48 != end_y
	)
	&& inst.object_index != obj_world_start
	&& inst.object_index != obj_world_end
) {
	audio_play_sound(snd_erase_clean, 1, false);
	instance_destroy(inst);
}