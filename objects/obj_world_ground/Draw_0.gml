event_inherited();

// draw sides when it is being dragged
if (dragging) {
	// top left corner
	draw_sprite(spr_world_tile, 45, x - 48, y - 48);
	// top side
	draw_sprite(spr_world_tile, 23, x, y - 48);
	// top right corner
	draw_sprite(spr_world_tile, 47, x + 48, y - 48);
	// right side
	draw_sprite(spr_world_tile, 29, x + 48, y);
	// bottom right corner
	draw_sprite(spr_world_tile, 33, x + 48, y + 48);
	// bottom side
	draw_sprite(spr_world_tile, 2, x, y + 48);
	// bottom left corner
	draw_sprite(spr_world_tile, 41, x - 48, y + 48);
	// left side
	draw_sprite(spr_world_tile, 15, x - 48, y);
}