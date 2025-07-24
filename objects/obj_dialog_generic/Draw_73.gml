// Draw the screenshot
gpu_set_blendenable(false);
draw_sprite_stretched(screen, 0, camera_x, camera_y, camera_width, camera_height);
gpu_set_blendenable(true);

// Draw dark overlay
draw_set_color(make_color_rgb(dark, dark, dark));
gpu_set_blendmode(bm_subtract);
draw_rectangle(camera_left, camera_top, camera_right, camera_bottom, false);
gpu_set_blendmode(bm_normal);

// Erase space for the border
surface_set_target(back.target);
gpu_set_blendequation(bm_eq_subtract);
// GameMaker doesn't let me use scale with draw_sprite_stretched,
// so time to mess with matrices
var _matrix = matrix_get(matrix_world);
matrix_set(matrix_world, matrix_build(
	0, 0, 0,
	0, 0, 0,
	2, 2, 1
));
draw_sprite_stretched(sprite_index, 1, 0, 0, width, height);
matrix_set(matrix_world, _matrix);
gpu_set_blendequation(bm_eq_add);
surface_reset_target();

// Draw the background
draw_surface_ext(
	back.target,
	x, y,
	0.5, 0.5,
	0, c_white, 1
);

// Draw the border
draw_sprite_stretched(
	sprite_index, 0,
	x, y,
	width, height
);