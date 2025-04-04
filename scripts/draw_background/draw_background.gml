/**
	@description	Draw a background without colour blending or transparency
	@param			{real} back		The index of the background to draw.
	@param			{real} x		The x coordinate of where to draw the background.
	@param			{real} y		The y coordinate of where to draw the background.
	@returns		{undefined}
*/
function draw_background(back, x, y) {
	draw_sprite(back, 0, x, y);
}
