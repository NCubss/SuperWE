/**
	@description		Draws the hover animation corners.
	@param {real} x		X position
	@param {real} y		Y position
	@param {real} anim	The "frame" of the animation to draw.
	@param {real} pos	The bottom right corner  will be moved to the top left using
						this value.
	@returns {undefined}
*/
function scr_anim_hover(x, y, anim, pos) {
	draw_sprite_ext(spr_nm_buttons_hover, anim, x, y, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_nm_buttons_hover, anim, (x + sprite_width), y, 1, 1, 270, c_white, 1)
	draw_sprite_ext(spr_nm_buttons_hover, anim, x, (y + (sprite_height - pos)), 1, 1, 90, c_white, 1)
	draw_sprite_ext(spr_nm_buttons_hover, anim, (x + sprite_width), (y + (sprite_height - pos)), 1, 1, 180, c_white, 1)
}
