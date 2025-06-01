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
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_ground).id;
			break;
		case Variant.GROUND_HILL:
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_ground).id;
			instance.variant_id = 1;
			break;
		case Variant.GROUND_ROCKS:
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_ground).id;
			instance.variant_id = 2;
			break;
		case Variant.GROUND_TREES:
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_ground).id;
			instance.variant_id = 3;
			break;
		//case Variant.ISLAND:
		//case Variant.BRIDGE:
		case Variant.PATH_END:
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_path_end).id;
			break;
		case Variant.PATH_STRAIGHT:
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_path_straight).id;
			break;
		case Variant.PATH_SHARP_TURN:
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_path_sharp_turn).id;
			break;
		case Variant.PATH_3WAY:
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_path_3way).id;
			break;
		case Variant.PATH_ROUND_TURN:
			instance = instance_create_layer(x * 48, y * 48, "map", obj_world_path_round_turn).id;
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

/**
	@description				Creates a struct with a boolean for each direction from the
								given world path instance.
	@param {Id.Instance} obj	The instance to grab the data from.
	@returns {struct}
*/
function world_path_to_data(obj) {
	if (obj == noone) {
		return { up: false, right: false, down: false, left: false };
	}
	switch (obj.object_index) {
		case obj_world_path_end:
			return {
				up: obj.rotation == Direction.UP,
				right: obj.rotation == Direction.RIGHT,
				down: obj.rotation == Direction.DOWN,
				left: obj.rotation == Direction.LEFT
			};
		case obj_world_path_straight:
			return {
				up: obj.rotation == Direction.UP || obj.rotation == Direction.DOWN,
				right: obj.rotation == Direction.LEFT || obj.rotation == Direction.RIGHT,
				down: obj.rotation == Direction.UP || obj.rotation == Direction.DOWN,
				left: obj.rotation == Direction.LEFT || obj.rotation == Direction.RIGHT,
			};
		case obj_world_path_3way:
			return {
				up: obj.rotation != Direction.DOWN,
				right: obj.rotation != Direction.LEFT,
				down: obj.rotation != Direction.UP,
				left: obj.rotation != Direction.RIGHT
			};
		case obj_world_path_sharp_turn:
		case obj_world_path_round_turn:
			show_debug_message("skffwlfekfewl");
			return {
				up: obj.rotation == Direction.UP || obj.rotation == Direction.RIGHT,
				right: obj.rotation == Direction.RIGHT || obj.rotation == Direction.DOWN,
				down: obj.rotation == Direction.DOWN || obj.rotation == Direction.LEFT,
				left: obj.rotation = Direction.LEFT || obj.rotation == Direction.UP
			};
			
		default:
			throw "Script world_path_to_data: Specified object is not a valid path tile!";
			return {
				up: false,
				right: false,
				down: false,
				left: false
			}
	}
}

/**
	@description	Returns whether if the player/pathfinder can move to this tile.
	@param			{Id.Instance} current	The ID for the tile that the player/pathfinder is
 * 											currently on.
	@param			{Id.Instance} next		The ID for the tile that the player/pathfinder is
											moving to.
	@param			{real} direction		The direction the player/pathfiner is moving in.
	@returns		{bool}
*/
function world_can_move_here(current, next, direction) {
	var data_current = world_path_to_data(current);
	var data_next = world_path_to_data(next);
	switch (direction) {
		case Direction.UP:
			return data_current.up && data_next.down;
		case Direction.RIGHT:
			return data_current.right && data_next.left;
		case Direction.DOWN:
			return data_current.down && data_next.up;
		case Direction.LEFT:
			return data_current.left && data_next.right;
		default:
			throw "Function world_can_move_here: Invalid direction!";
	}
}

/**
	@description	Returns whether this direction is valid on a world path tile.
	@param			{Id.Instance} obj	The object to check.
	@param			{real} direction	The direction to check.
	@returns		{bool}
*/
function world_path_direction_exists(obj, direction) {
	var data = world_path_to_data(obj);
	switch (direction) {
		case Direction.UP:
			return data.up;
		case Direction.RIGHT:
			return data.right;
		case Direction.DOWN:
			return data.down;
		case Direction.LEFT:
			return data.left;
		default:
			throw "Function world_path_direction_exists: Invalid direction!";
	}
}

/**
	@description	Returns the music that fits this WorldStyle and WorldTheme.
	@param			{real} style	The world's game style.
	@param			{real} theme	The world's theme.
	@returns		{Asset.GMSound}
*/
function get_world_music(style, theme) {
	switch (style) {
		case WorldStyle.SMW:
			switch (theme) {
				case WorldTheme.Overworld:
					return snd_world_overworld;
				default:
					throw "Function get_world_music: Invalid world theme!"
			}
		default:
			throw "Function get_world_music: Invalid world style!";
	}
}

/**
	@description	Returns the editor music that fits this WorldStyle and WorldTheme.
	@param			{real} style	The world's game style.
	@param			{real} theme	The world's theme.
	@returns		{Asset.GMSound}
*/
function get_world_editor_music(style, theme) {
	switch (style) {
		case WorldStyle.SMW:
			switch (theme) {
				case WorldTheme.Overworld:
					return snd_world_editor_overworld;
				default:
					throw "Script get_world_editor_music: Invalid world theme!";
			}
		default:
			throw "Script get_world_editor_music: Invalid world style!";
	}
}

/**
	@description	Checks if the mouse is currently on a UI object (e.g. panel or clapperboard).
	@returns		{bool}
*/
function world_mouse_on_ui() {
	return position_meeting(mouse_x, mouse_y, [
		obj_panel_world_left,
		obj_panel_world_top,
		obj_panel_world_right,
		obj_world_clapperboard
	]);
}