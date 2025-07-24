// Is the cursor grabbing this tile?
grabbing = false;
// Mouse grab position
grabx = 0;
graby = 0;
// Original position before grabbing
origx = x;
origy = y;
// The amounts the mouse position is off by the tile position
offsetx = 0;
offsety = 0;
// Is the cursor dragging this tile?
dragging = false;
// This tile's location on the grid. (-1 if not on the grid)
gridx = -1;
gridy = -1;
// Mask position (drawn under the sprite on hover)
maskx = (x div 48) * 48;
masky = (y div 48) * 48;
// Mask image index (valid or invalid new position)
maskidx = 0;
// Draw terrain edges?
show_edges = true;
// All variants
variants = [];
// Variant ID of this object
variant_id = undefined;
/**
	@description	Saves object data to a world save file
	@param			{Id.Buffer} buffer	The buffer to save to
	@returns		{undefined}
*/
save = function(buffer) {
	buffer_write(buffer, buffer_u8, gridx);
	buffer_write(buffer, buffer_u8, gridy);
	if (array_length(variants) != 0) {
		buffer_write(buffer, buffer_u32, variant_id);
	}
}
/**
	@description	Loads object data from a world save file
	@param			{Id.Buffer} buffer	The buffer to load from
	@returns		{undefined}
*/
load = function(buffer) {
	gridx = buffer_read(buffer, buffer_u8);
	gridy = buffer_read(buffer, buffer_u8);
	x = gridx * 48;
	y = gridy * 48;
	if (array_length(variants) != 0) {
		variant_id = buffer_read(buffer, buffer_u32);
	}
}
/**
	@description	Checks if this object can be put here
	@pure
	@param			{real} x	The X position of the space in the room
	@param			{real} y	The Y position of the space in the room
	@returns		{bool}
*/
can_put_here = function(xx, yy) {
	return collision_rectangle((xx * 48) + 1, (yy * 48) + 1, (xx * 48) + 47, (yy * 48) + 47, obj_parent_world_res, true, true) == noone;
}
normal_depth = depth;