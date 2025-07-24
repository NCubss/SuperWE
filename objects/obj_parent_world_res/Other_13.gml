/// @description	Start dragging
audio_play_sound(snd_drag, 0, false);
grabbing = false;
grabx = 0;
graby = 0;
dragging = true;
// stop variant window timer
alarm[0] = -1;
gridx = -1;
gridy = -1;
// depth stuff
with (obj_parent_world_res) {
	if (id == other.id) continue;
	other.depth = min(depth, other.depth);
}
depth--;