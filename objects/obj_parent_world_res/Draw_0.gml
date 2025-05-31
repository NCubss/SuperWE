normal_depth = ((room_height - y) div 48) + 601;
if (object_index == obj_world_start || object_index == obj_world_end) {
	normal_depth--;
	grabbed_depth--;
}
if (grabbing || dragging) {
	depth = grabbed_depth;
} else {
	depth = normal_depth;
}
// check if cursor is inside the object
if (position_meeting(mouse_x, mouse_y, id) && obj_worldmanager.edit) {
	// draw the mask behind the actual sprite
	draw_sprite(spr_grid_selected_48x48, maskidx, maskx, masky);
}
draw_self();