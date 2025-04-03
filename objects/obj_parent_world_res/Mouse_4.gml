if (obj_world_editor.pause) exit;
// tap sound effect
audio_play_sound(snd_ground_bomb, 1, false);
// spawn the ripple effect
with (instance_create(mouse_x, mouse_y, obj_effect_touch)) {
	// place it higher in depth order
	depth = other.grabbed_depth - 1;
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