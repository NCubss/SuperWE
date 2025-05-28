if (GM_build_type != "run") {
	instance_destroy();
}
in_cheat_mode = false;
cheat_mode_surf = 0;
output = "";
monitor = [];
monitor_ext = [];

function error(text) {
	keyboard_string = "";
	output = text;
}