/**
	@function		draw_background_ext(back, x, y, x_scale, y_scale, rot, colour, alpha)
	@description	Draws a background at a given position, with customizable
					scaling, rotation, blend and alpha.
	@param			{real} back					The index of the background to
												draw.
	@param			{real} x					The x coordinate of where to
												draw the background.
	@param			{real} y					The y coordinate of where to
												draw the background.
	@param			{real} x_scale				The horizontal scaling of the
												background.
	@param			{real} y_scale				The vertical scaling of the
												background.
	@param			{real} rot					The rotation of the background.
	@param			{Constant.Color} colour		The colour with which to blend
												the background (use -1 or
												c_white to display it normally).
	@param			{real} alpha				The alpha of the background
												(from 0 to 1 where 0 is
												transparent and 1 opaque). 
	@returns		{undefined}
*/
function draw_background_ext(back, x, y, x_scale, y_scale, rot, colour, alpha) {
	draw_sprite_ext(back, 0, x, y, x_scale, y_scale, rot, colour, alpha);
}
