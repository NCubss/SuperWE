/**
	@description	Draws the animated hover effect.
					This is a reimplementation of scr_anim_hover.
	@param			{real} x		The X position of the hovered area
	@param			{real} y		The Y position of the hovered area
	@param			{real} w		The width of the hovered area
	@param			{real} h		The height of the hovered area
	@param			{real} [anim]	The frame of the hover animation. If this parameter isn't given, then it will determine it by a global anim variable.
	@returns		{undefined}
*/
function draw_hover_anim(x, y, w, h, anim) {
	if (is_undefined(anim)) {
		anim = global.anim;
		global.anim += 0.3;
	}
	draw_sprite_ext(spr_nm_buttons_hover, anim, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_nm_buttons_hover, anim, x + w, y, -1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_nm_buttons_hover, anim, x, y + h, 1, -1, 0, c_white, 1);
	draw_sprite_ext(spr_nm_buttons_hover, anim, x + w, y + h, -1, -1, 0, c_white, 1);
}