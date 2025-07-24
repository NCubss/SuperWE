yoffset = 0;
subimg = 0;
fire_scale = 1;
surf_x = camera_x + 54;
surf_y = camera_y + 50;
surf_width = 276;
surf_height = 156;
surf = surface_create(surf_width, surf_height);
scroll = 0;
save_count = 10;
repeat (8) {
	var i = random_range(camera_top + 10, camera_bottom - 10);
	instance_create_layer(0, i, "clouds", obj_worldbot_cloud);
}
for (var i = 0; i < save_count; i++) {
	instance_create_layer(0, 0, "ui_front", obj_worldbot_card, {
		index: i,
		world_count: 123,
		level_count: 123
	});
}
alarm[0] = 5;
alarm[1] = 10;
alarm[2] = random_range(30, 60);
alarm[3] = 1;