if (!in_cheat_mode) exit;
output = "";
var split = string_split(keyboard_string, " ", true);
if (array_length(split) != 0) switch (split[0]) {
	case "spawn":
		if (array_length(split) != 4) {
			error("'spawn' requests for precisely 4 parameters");
			exit;
		}
		// prevent gamemaker yelling at me	
		var obj = obj_coordinator;
		obj = asset_get_index(split[1]);
		if (obj == -1) {
			error($"Object {split[1]} does not exist");
			exit;
		}
		var xx;
		var yy;
		try {
			xx = real(split[2]);
		} catch (e) {
			error("x is not a number");
			exit;
		}
		try {
			yy = real(split[3]);
		} catch (e) {
			error("y is not a number");
			exit;
		}
		instance_create(xx, yy, obj);
		break;
	case "room":
		if (array_length(split) != 2) {
			error("'room' requests for precisely 2 arguments");
			exit;
		}
		var rm = rm_logo;
		rm = asset_get_index(split[1]);
		if (rm == -1) {
			error($"Room {split[1]} does not exist");
			exit;
		}
		room = rm;
		break;
	case "delete":
		if (array_length(split) != 2) {
			error("'delete' requests for precisely 2 arguments");
			exit;
		}
		var obj = obj_coordinator;
		obj = asset_get_index(split[1]);
		if (obj == -1) {
			error($"Object {split[1]} does not exist");
			exit;
		}
		instance_destroy(obj);
		break;
	case "?":
	case "cmds":
	case "help":
		error("List of commands:\n    spawn <obj> <x> <y> - Spawns an object\n    delete <obj> - Deletes all instances of an object\n    room <rm> - Switch to a different room\n    playsound <snd> <loop> - Play sound\n    stopsound <snd> - Stop sound\n    setglobal <name> <value> - Set a global variable (supports only JSON values)");
		exit;
	case "playsound":
		if (array_length(split) != 3) {
			error("'playsound' requests for precisely 3 arguments");
			exit;
		}
		var snd = snd_1up;
		snd = asset_get_index(split[1]);
		if (snd == -1) {
			error($"Sound {split[1]} does not exist");
			exit;
		}
		var loop = false;
		switch (split[2]) {
			case "1":
			case "true":
				loop = true;
				break;
			case "0":
			case "false":
				loop = false;
				break;
			default:
				error("loop is not a valid boolean value");
				exit;
		}
		audio_play_sound(snd, 0, loop);
		break;
	case "stopsound":
		if (array_length(split) != 2) {
			error("'stopsound' requests for precisely 2 arguments");
			exit;
		}
		var snd = snd_1up;
		snd = asset_get_index(split[1]);
		if (snd == -1) {
			error($"Sound {split[1]} does not exist");
			exit;
		}
		audio_stop_sound(snd);
		break;
	case "setglobal":
		if (array_length(split) != 3) {
			error("'setglobal' requests for precisely 3 arguments");
			exit;
		}
		if (split[2] == "") {
			delete global[$ split[1]];
			exit;
		}
		var type = typeof(global[$ split[1]]);
		var foo = json_parse(split[2]);
		if (typeof(foo) != type) {
			error($"Expected {type}, got {typeof(foo)}");
			exit;
		}
		global[$ split[1]] = foo;
		break;
	case "getglobal":
		if (array_length(split) != 2) {
			error("'getglobal' requires precisely 2 arguments");
			exit;
		}
		error(string(global[$ split[1]]));
		break;
	case "monitor":
		if (array_length(split) != 3) {
			error("'monitor' requires precisely 3 arguments");
			exit;
		}
		var path = string_split(split[2], ".");
		switch (split[1]) {
			case "add":
				array_push(monitor, split[2]);
				break;
			case "remove":
				var idx = array_get_index(monitor, split[2]);
				if (idx == -1) break;
				array_delete(monitor, idx, 1);
				break;
			default:
				error($"Invalid subcommand '{split[1]}'");
				exit;
		}
		break;
	case "worldpathdata":
		var data = world_path_to_data(instance_find(obj_world_path_sharp_turn, 1));
		error($"Up: {data.up}, Down: {data.down}, Left: {data.left}, Right: {data.right}");
		exit;
	default:
		error($"Command {split[0]} does not exist");
		exit;
}
in_cheat_mode = false;
instance_activate_all();