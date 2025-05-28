/// @description	Create variant buttons
for (var i = 0; i < array_length(object.variants); i++) {
	var btn = instance_create_layer(
		x - 42 - ((array_length(object.variants) - i - 1) * 25),
		y - 39,
		"variant_window", obj_world_window_button
	);
	btn.variant_id = object.variants[i];
	btn.selected = btn.variant_id == object.variant_id;
	btn.object = object.id;
	btn.depth = depth - 1;
}