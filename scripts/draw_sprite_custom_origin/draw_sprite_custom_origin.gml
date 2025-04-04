/**
	@description	Shorthand for drawing a sprite with a custom matrix
	@param			{Asset.GMSprite} sprite		Sprite to draw
	@param			{real} subimg				Subimg (frame) of sprite to draw
	@param			{real} x					X position
	@param			{real} y					Y position
	@param			{real} rot_x				X rotation
	@param			{real} rot_y				Y rotation
	@param			{real} x_scale				X scale
	@param			{real} y_scale				Y scale
	@param			{real} rot					Z rotation
	@param			{Constant.Color} col		Tint/modulate
	@param			{real} alpha				Alpha (0-1, 0 is invisible, 1 is 100% visible)
	@returns		{undefined}
*/
function draw_sprite_custom_origin(sprite, subimg, x, y, rot_x, rot_y, x_scale, y_scale, rot, col, alpha) {
	// If not necessary to build the matrix, draw normally
	if (rot == 0 && x_scale == 1 && y_scale == 1) {
		draw_sprite_ext(sprite, subimg, x, y, x_scale, y_scale, rot, col, alpha);
	// Otherwise, draw from the given axis
	} else {
		// Build & set the matrix
		matrix_set(
			matrix_world,
			matrix_build(
				x - sprite_get_xoffset(sprite_index) + rot_x,
				y - sprite_get_yoffset(sprite_index) + rot_y,
				0, 0, 0,
				rot * x_scale, x_scale, y_scale, 1
			)
		);
		// Draw sprite
		draw_sprite_ext(
			sprite, subimg,
			sprite_get_xoffset(sprite_index) - rot_x,
			sprite_get_yoffset(sprite_index) - rot_y,
			1, 1, 0, col, alpha
		);
		// Set back to normal
		matrix_set(matrix_world, matrix_build_identity());
	}
}