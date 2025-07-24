/// @description	Load world
var buffer = buffer_load(global.world_path);

if (!buffer_exists(buffer)) {
	// default world
	with (instance_create_layer(15 * 48, 16 * 48, "map", obj_world_path_end)) {
		gridx = 15;
		gridy = 16;
	}
	with (instance_create_layer(17 * 48, 16 * 48, "map", obj_world_path_end)) {
		gridx = 17;
		gridy = 16;
	}
	with (instance_create_layer(15 * 48, 16 * 48, "map", obj_world_start)) {
		gridx = 15;
		gridy = 16;
	}
	with (instance_create_layer(17 * 48, 16 * 48, "map", obj_world_end)) {
		gridx = 17;
		gridy = 16;
	}
	exit;
}

buffer_read(buffer, buffer_string);
obj_worldmanager.style = buffer_read(buffer, buffer_u32);
obj_worldmanager.theme = buffer_read(buffer, buffer_u32);
global.world_settings.name = buffer_read(buffer, buffer_string);
global.world_settings.description = buffer_read(buffer, buffer_string);
while (buffer_tell(buffer) != buffer_get_size(buffer)) {
	var obj = asset_get_index(buffer_read(buffer, buffer_string));
	if (
		!object_exists(obj)
		|| !object_is_ancestor(obj, obj_parent_world_res)
	) {
		room = rm_worldbot;
		scr_toast(1, lang().messages.negative.load_failed);
		exit;
	}
	with (instance_create_layer(0, 0, "map", obj)) {
		show_debug_message(object_get_name(object_index));
		load(buffer);
	}
}
buffer_delete(buffer);