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
// Returns a struct to include in the world's save file
function save() {
	return {
		obj: object_index,
		gx: gridx,
		gy: gridy
	};
}

normal_depth = depth;
if (instance_exists(obj_grid)) {
	grabbed_depth = obj_grid.depth - 1;
} else {
	grabbed_depth = depth - 1;
}
