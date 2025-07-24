image_speed = 0;
image_index = image_number - 1;
anim_done = true;
if (instance_number(obj_world_btn_save_load) == 0 && !destroying) {
	for (var i = 0; i < 3; i++) {
		instance_create_layer(0, 0, "ui_front", obj_world_btn_save_load, { type: i });
	}
}