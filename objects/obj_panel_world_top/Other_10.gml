/// @description	Close
animator(ac_world_expand_panel, 0, id, "yoffset", 0, 34, 6);
for (var i = 0; i < array_length(btns); i++) {
	animator(ac_world_expand_panel, 0, btns[i], "origy", btns[i].origy, btns[i].origy - 34, 6);
}
open = false;