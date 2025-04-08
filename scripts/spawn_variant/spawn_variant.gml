/**
	@description		Spawns an instance that is related to the specified variant ID.
 	@param {real} x		X position on the tile grid
 	@param {real} y		Y position on the tile grid
	@param {real} id	Variant ID to search
 	@returns {Id.Instance}
*/
function spawn_variant(x, y, id) {
	var instance = noone;
	switch (id) {
		case Variant.GROUND_NONE:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_ground).id;
			break;
		case Variant.GROUND_HILL:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_ground).id;
			instance.variant_id = 1;
			break;
		case Variant.GROUND_ROCKS:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_ground).id;
			instance.variant_id = 2;
			break;
		case Variant.GROUND_TREES:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_ground).id;
			instance.variant_id = 3;
			break;
		//case Variant.ISLAND:
		//case Variant.BRIDGE:
		case Variant.PATH_END:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_path_end).id;
			break;
		case Variant.PATH_STRAIGHT:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_path_straight).id;
			break;
		case Variant.PATH_SHARP_TURN:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_path_sharp_turn).id;
			break;
		case Variant.PATH_3WAY:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_path_3way).id;
			break;
		case Variant.PATH_ROUND_TURN:
			instance = instance_create_layer(x * 48, y * 48, "Tiles", obj_world_path_round_turn).id;
		case Variant.PIPE:
		case Variant.BONUS:
		case Variant.LEVEL:
		default:
			// TODO
			break;
	}
	with (instance) {
		gridx = x;
		gridy = y;
	}
	return instance;
}