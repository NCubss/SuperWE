if (!global.shadows || global.style == GameStyle.NSMBU) exit;
depth = 1000;
if (!surface_exists(shadow_surf)) {
	shadow_surf = surface_create((camera_width * 2), (camera_height * 2));
}
surface_set_target(shadow_surf);
draw_clear_alpha(c_white, 0);
var _matrix = matrix_get(matrix_world);
matrix_set(matrix_world, matrix_build(
	(-camera_x + 3) * 2, (-camera_y + 3) * 2, 0,
	0, 0, 0,
	2, 2, 1
));
with (obj_has_shadow) {
	if (visible && !object_is_ancestor(object_index, obj_decoracion_parent)) {
		event_perform(ev_draw, ev_draw_normal);
	}
}
matrix_set(matrix_world, _matrix);
surface_reset_target();
draw_surface_ext(shadow_surf, camera_x, camera_y, 0.5, 0.5, 0, c_black, 0.3);