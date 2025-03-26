/**
	@function		__background_get_internal(prop, bind, backinfo)
	@description	Unknown
	@param			{real} prop			Unknown
	@param			{Array} bind		Unknown
	@param			{Array} back_info	Unknown
	@returns		{real}
*/
function __background_get_internal(prop, bind, back_info) {
	if (
		back_info[0] == -1
		|| (layer_sprite_exists(back_info[1], back_info[0]) == false)
		// this can happen when we change between backgrounds and foregrounds (because layers and elements get destroyed)
	) {
		// Try getting the background info again from the bind index
		back_info = __background_get_element(bind);
		if (back_info[0] == -1) {
			return -1; // erm
		}
	}
	var res = -1;
	var back_id = back_info[0];
	var layer_id = back_info[1];
	var is_fore = back_info[2];

	switch (prop) {
		case e__BG.Visible: res = layer_get_visible(layer_id); break;
		case e__BG.Foreground: res = is_fore; break;
		case e__BG.Index: res = layer_background_get_sprite(back_id)  break;
		case e__BG.X: res = layer_get_x(layer_id); break;
		case e__BG.Y: res = layer_get_y(layer_id); break;
		case e__BG.Width: res = sprite_get_width(layer_background_get_index(back_id)); break;
		case e__BG.Height: res = sprite_get_height(layer_background_get_index(back_id)); break;
		case e__BG.HTiled: res = layer_background_get_htiled(back_id); break;
		case e__BG.VTiled: res = layer_background_get_vtiled(back_id); break;
		case e__BG.XScale: res = layer_background_get_xscale(back_id); break;
		case e__BG.YScale: res = layer_background_get_yscale(back_id); break;
		case e__BG.HSpeed: res = layer_get_hspeed(layer_id); break;
		case e__BG.VSpeed: res = layer_get_vspeed(layer_id); break;
		case e__BG.Blend: res = layer_background_get_blend(back_id); break;
		case e__BG.Alpha: res = layer_background_get_alpha(back_id); break;
		default: break;
	}
	return res;
}
