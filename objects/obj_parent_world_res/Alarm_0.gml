/// @description	Spawn variant window
with (instance_create_layer(mouse_x, mouse_y, "UI", obj_world_window)) {
	object = other.id;
}