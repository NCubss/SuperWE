if (anim_idx > 6) {
	alarm[2] = -1;
	room_goto(rm_editor);
	exit;
}
animator(ac_logo, 0, id, "anim", 0, 216, 15, Accessor.ARRAY, anim_idx);
alarm[2] = anim_idx == 6 ? 30 : 7;
anim_idx++;