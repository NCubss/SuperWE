/**
	@description	Draws a repeated sprite image, tiled to fill a given region
					and with a given offset.
	@param			{Asset.GMSprite} sprite		Sprite to draw
	@param			{real} subimg				Sprite subimage to draw
	@param			{real} ox					Origin X offset
	@param			{real} oy					Origin Y offset
	@param			{real} x1					X position of top left corner of tiled
												area
	@param			{real} y1					Y position of top left corner of tiled
												area
	@param			{real} x2					X position of bottom right corner of
												tiled area
	@param			{real} y2					Y position of bottom right corner of
												tiled area
	@param			{real} color				Color blending
	@param			{real} alpha				Alpha blending
	@returns		{undefined}
*/
function draw_sprite_tiled_area_ext(sprite, subimg, ox, oy, x1, y1, x2, y2, color, alpha) {
	/// GMLscripts.com/license
	/// Modified by NCubs
	var sw, sh, i, j, jj, left, top, width, height, X, Y;
	var spr_width = sprite_get_width(sprite);
	var spr_height = sprite_get_height(sprite);
	i = x1 - (x1 % spr_width - ox % spr_width) - spr_width * (x1 % spr_width < x % spr_width);
	j = y1 - (y1 % spr_height - oy % spr_height) - spr_height * (y1 % spr_height < y % spr_height); 
	jj = j;
	for (; i <= x2; i += spr_width) {
		for (; j <= y2; j += spr_height) {
			if (i <= x1) {
				left = x1-i;
			} else {
				left = 0;
			}
	        X = i + left;
	        if (j <= y1) {
				top = y1 - j;
			} else {
				top = 0;
			}
			Y = j + top;
			if (x2 <= i + spr_width) {
				width = (spr_width - (i + spr_width - x2) + 1) - left;
			} else {
				width = spr_width - left;
			}
			if (y2 <= j + spr_height) {
				height = (spr_height - (j + spr_height - y2) + 1) - top;
			} else {
				height = spr_height - top;
			}
	        draw_sprite_part_ext(sprite, subimg, left, top, width, height, X, Y, 1, 1, color, alpha);
	    }
	    j = jj;
	}
}
