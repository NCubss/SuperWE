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
// This tile's location in obj_world_editor.tile_data (-1 if not on grid)
gridx = -1;
gridy = -1;
// Mask position (drawn under the sprite on hover)
maskx = (x div 48) * 48;
masky = (y div 48) * 48;
// Mask image index (valid or invalid new position)
maskidx = 0;
// All variants (not implemented)
variants = [];
// Variant ID of this object
variant_id = undefined;

normal_depth = depth;
grabbed_depth = -depth;