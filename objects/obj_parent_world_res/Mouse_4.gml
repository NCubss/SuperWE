if (
	obj_world_editor.pause
	|| !obj_worldmanager.edit
	|| !obj_world_editor.can_interact
	|| world_mouse_on_ui()
	|| global.cursor == 2
	|| (
		object_index != obj_world_start
		&& object_index != obj_world_end
		&& (
			position_meeting(mouse_x, mouse_y, obj_world_start)
			|| position_meeting(mouse_x, mouse_y, obj_world_end)
		)
	)
) exit;
// tap sound effect
audio_play_sound(snd_ground_bomb, 1, false);
with (obj_parent_world_res) {
	if (id == other.id) continue;
	other.depth = min(depth, other.depth);
}
depth--;
// spawn the ripple effect
with (instance_create(mouse_x, mouse_y, obj_effect_touch)) {
	// place it higher in depth order
	depth = other.depth - 1;
}
// start window spawn alarm (0.5s) if there are any variants
if (array_length(variants) != 0) {
	alarm[0] = 30;
}
// set grab position to detect when to start dragging
grabbing = true;
obj_world_editor.can_interact = false;
maskx = x;
masky = y;
origx = x;
origy = y;
grabx = mouse_x;
graby = mouse_y;
offsetx = x - mouse_x;
offsety = y - mouse_y;