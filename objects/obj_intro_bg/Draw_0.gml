if (!surface_exists(target)) {
	target = target_is_app_surf ? application_surface : surface_create(target_width, target_height);
}
target_width = camera_width;
target_height = camera_height;
x += xspeed;
y += yspeed;
x %= sprite_width;
y %= sprite_height;
draw_rectangle_color(
	target_is_app_surf ? camera_x : 0,
	target_is_app_surf ? camera_y : 0,
	(target_is_app_surf ? camera_x : 0) + target_width,
	(target_is_app_surf ? camera_y : 0) + target_height,
	c1, c2, c3, c4, false
);
surface_set_target(target);
// get current matrix
var _matrix = matrix_get(matrix_world);
matrix_set(matrix_world, matrix_build(
	(target_is_app_surf ? camera_x : 0) + (target_width / 2),
	(target_is_app_surf ? camera_y : 0) + (target_height / 2),
	0,
	0, 0, image_angle,
	1, 1, 1
));
draw_sprite_tiled_area_ext(
	sprite_index, image_index,
	x, y,
	-size, -size, size, size,
	image_blend, image_alpha
);

surface_reset_target();
// set back to original matrix
matrix_set(matrix_world, _matrix);