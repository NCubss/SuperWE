/**
	@description	Creates a background by copying an area from a surface.
					Returns the resource name for the new background.
	@param			{Id.Surface} index		The index of the surface to create from.
	@param			{real} x				The x position to copy from.
	@param			{real} y				The y position to copy from.
	@param			{real} w				The width of the area to be copied (from the x position).
	@param			{real} h				The height of the area to be copied (from the y position).
	@param			{bool} remove_back		Indicates whether to make all pixels with the same colour (left-bottom pixel) transparent.
	@param			{bool} smooth			Indicates whether to smooth the edges.
	@returns		{Asset.GMSprite}
*/
function background_create_from_surface(index, x, y, w, h, remove_back, smooth) {
	return sprite_create_from_surface(index, x, y, w, h, remove_back, smooth, 0, 0);
}
