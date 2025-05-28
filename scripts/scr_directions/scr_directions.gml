/**
	@description		Returns the opposite direction.
	@param				{real} x	The Direction enum constant to flip.
	@returns			{real}
*/
function opposite_direction(x) {
	switch (x) {
		case Direction.UP:
			return Direction.DOWN;
		case Direction.RIGHT:
			return Direction.LEFT;
		case Direction.DOWN:
			return Direction.UP;
		case Direction.LEFT:
			return Direction.RIGHT;
	}
}

/**
 	@description		Returns the direction turned clockwise.
 	@param {real} x		The Direction enum constant to turn.
 	@returns {real}
*/
function clockwise(x) {
	return (x + 1) % 4;
}

/**
 	@description		Returns the direction turned counterclockwise.
 	@param {real} x		The Direction enum constant to turn.
 	@returns {real}
*/
function counterclockwise(x) {
	return (x - 1) % 4;
}