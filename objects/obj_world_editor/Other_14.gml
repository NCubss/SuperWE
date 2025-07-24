/// @description	Save world
global.world_path = "Mundos/fart.sww";
var buffer = buffer_create(0, buffer_grow, 1);
buffer_write(buffer, buffer_string, global.world_header);
buffer_write(buffer, buffer_u32, obj_worldmanager.style);
buffer_write(buffer, buffer_u32, obj_worldmanager.theme);
buffer_write(buffer, buffer_string, global.world_settings.name);
buffer_write(buffer, buffer_string, global.world_settings.description);
with (obj_parent_world_res) {
	buffer_write(buffer, buffer_string, object_get_name(object_index));
	save(buffer);
}
buffer_save(buffer, global.world_path);
buffer_delete(buffer);
scr_toast(0, lang().messages.positive.saved);