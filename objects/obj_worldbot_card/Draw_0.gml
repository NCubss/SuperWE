with (obj_worldbot) {
	if (!surface_exists(surf)) {
		surf = surface_create(surf_width, surf_height);
	}
}
surface_set_target(obj_worldbot.surf);
var xx = x - obj_worldbot.surf_x;
var yy = y - obj_worldbot.surf_y;
draw_sprite(sprite_index, image_index, xx, yy);
draw_set_color(#a8a8b6);
draw_set_halign(fa_center);
draw_text(xx + 10, yy + 14, string(index + 1));
draw_set_color(#58586e);
draw_set_halign(fa_right);
draw_text(xx + 120, yy + 28, string(level_count));
draw_text(xx + 120, yy + 16, string(world_count));
draw_set_color(c_white);
draw_set_halign(fa_left);
if (mouse_in) {
	draw_hover_anim(xx, yy);
}
surface_reset_target();