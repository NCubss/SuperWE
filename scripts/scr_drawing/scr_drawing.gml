// Various functions related to drawing

/**
	@description	This function will draw the given sprite as in the function draw_sprite_ext() but with additional options to apply a custom origin.
	@param			{Asset.GMSprite} sprite		The sprite to draw.
	@param			{real} subimg				The subimg (frame) of the sprite to draw (image_index or -1 correlate to the current frame of animation in the object).
	@param			{real} x					The x coordinate of where to draw the sprite, assuming origin is top left.
	@param			{real} y					The y coordinate of where to draw the sprite, assuming origin is top left.
	@param			{real} xorigin				The new sprite origin's x coordinate.
	@param			{real} yorigin				The new sprite origin's y coordinate.
	@param			{real} xscale				The horizontal scaling of the sprite, as a multiplier: 1 = normal scaling, 0.5 is half etc...
	@param			{real} yscale				The vertical scaling of the sprite as a multiplier: 1 = normal scaling, 0.5 is half etc...
	@param			{real} rot					The rotation of the sprite. 0=right way up, 90=rotated 90 degrees counter-clockwise etc...
	@param			{Constant.Color} col		The colour with which to blend the sprite. c_white is to display it normally.
	@param			{real} alpha				The alpha of the sprite (from 0 to 1 where 0 is transparent and 1 opaque).
	@returns		{undefined}
*/
function draw_sprite_custom_origin(sprite, subimg, x, y, xorigin, yorigin, xscale, yscale, rot, col, alpha) {
	
	// If not necessary to build the matrix, draw normally
	if (rot == 0 && xscale == 1 && yscale == 1) {
		draw_sprite_ext(sprite, subimg, x, y, xscale, yscale, rot, col, alpha);
	// Otherwise, draw from the given axis
	} else {
		var matrix = matrix_get(matrix_world);
		// Build & set the matrix
		matrix_set(matrix_world, matrix_multiply(matrix_build(
			x - sprite_get_xoffset(sprite_index) + xorigin,
			y - sprite_get_yoffset(sprite_index) + yorigin,
			0, 0, 0,
			rot * xscale, xscale, yscale, 1
		), matrix));
		var _ = matrix_get(matrix_world);
		show_debug_message($"Pos: {_[0]} {_[1]}");
		show_debug_message($"ActualPos: {x} {y}");
		show_debug_message($"Scale: {_[8]} {_[9]}");
		show_debug_message($"ActualScale: {xscale} {yscale}");
		// Draw sprite
		draw_sprite_ext(
			sprite, subimg,
			sprite_get_xoffset(sprite_index) - xorigin,
			sprite_get_yoffset(sprite_index) - yorigin,
			1, 1, 0, col, alpha
		);
		// Set back to normal
		matrix_set(matrix_world, matrix);
	}
}

/**
	@description	This function will take a sprite and then repeatedly tile it across the defined region.
	@param			{Asset.GMSprite} sprite		The sprite to draw.
	@param			{real} subimg				The subimg (frame) of the sprite to draw (image_index or -1 correlate to the current frame of animation in the object).
	@param			{real} ox					Origin X offset
	@param			{real} oy					Origin Y offset
	@param			{real} x1					The x coordinate of the region's top left corner.
	@param			{real} y1					The y coordinate of the region's top left corner.
	@param			{real} x2					The x coordinate of the region's bottom right corner.
	@param			{real} y2					The y coordinate of the region's bottom right corner.
	@param			{real} color				The colour with which to blend the sprite. c_white is to display it normally.
	@param			{real} alpha				The alpha of the sprite (from 0 to 1 where 0 is transparent and 1 opaque).
	@returns		{undefined}
*/
function draw_sprite_tiled_area(sprite, subimg, ox, oy, x1, y1, x2, y2, color, alpha) {
	/// GMLscripts.com/license
	/// Modified by NCubs
	var i, j, jj, left, top, width, height, X, Y;
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

/**
	@description		Draws the hover animation corners.
	@param {real} x		X position
	@param {real} y		Y position
	@param {real} anim	The "frame" of the animation to draw.
	@param {real} pos	The amount of pixels to move the bottom right corner diagonally to the top left corner.
	@returns {undefined}
*/
function scr_anim_hover(x, y, anim, pos) {
	draw_sprite_ext(spr_nm_buttons_hover, anim, x, y, 1, 1, 0, c_white, 1)
	draw_sprite_ext(spr_nm_buttons_hover, anim, (x + sprite_width), y, 1, 1, 270, c_white, 1)
	draw_sprite_ext(spr_nm_buttons_hover, anim, x, (y + (sprite_height - pos)), 1, 1, 90, c_white, 1)
	draw_sprite_ext(spr_nm_buttons_hover, anim, (x + sprite_width), (y + (sprite_height - pos)), 1, 1, 180, c_white, 1)
}

/**
	@description	Draws the animated hover effect.
					This is a reimplementation of scr_anim_hover.
	@param			{real} x		The X position of the hovered area.
	@param			{real} y		The Y position of the hovered area.
	@param			{real} [w]		The width of the hovered area. Will use sprite_width if unset.
	@param			{real} [h]		The height of the hovered area. Will use sprite_height if unset.
	@param			{real} [anim]	The frame of the hover animation. If this parameter isn't given, then it will determine it by a global anim variable.
	@returns		{undefined}
*/
function draw_hover_anim(x, y, w = sprite_width, h = sprite_height, anim = undefined) {
	if (is_undefined(anim)) {
		anim = global.anim;
		global.anim += 0.3;
	}
	draw_sprite_ext(spr_nm_buttons_hover, anim, x, y, 1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_nm_buttons_hover, anim, x + w, y, -1, 1, 0, c_white, 1);
	draw_sprite_ext(spr_nm_buttons_hover, anim, x, y + h, 1, -1, 0, c_white, 1);
	draw_sprite_ext(spr_nm_buttons_hover, anim, x + w, y + h, -1, -1, 0, c_white, 1);
}

/**
	@description	Draws text with the fnt_big font, with additional support for CJK characters.
	@param			{real} x						The X position for the text.
	@param			{real} y						The Y position for the text.
	@param			{string} text	The text to draw.
	@param			{Constant.HAlign} [halign]		The horizontal text alignment to use. (default fa_left)
	@param			{Constant.VAlign} [valign]		The vertical text alignment to use. (default fa_top)
	@param			{real} [scale]					The scale of the text. (default 1)
	@param			{real} [alpha]					The opacity of the text. (default 1)
	@param			{real} [color]					The color of the text. (default c_white)
	@param			{real} [spacing]				The amount of spacing between characters. (default 0)
	@param			{Constant.BlendMode} [blend]	The blend mode to use.
	@returns		{undefined}
*/
function draw_big_text(x, y, text, halign = fa_left, valign = fa_top, scale = 1, alpha = 1, color = c_white, spacing = 0, blend = bm_normal) {
	var set_blend = function(blend) {
		if (surface_get_target() == application_surface) {
			gpu_set_blendmode(blend);
		} else if (blend == bm_normal) {
			gpu_surface_blend();
		}
	}
	draw_set_font(global.fnt_big);
	var info = font_get_info(global.fnt_big);
	var surf = surface_create(24, 24);
	var width = [0];
	var height = 12 * scale;
	var lidx = 0;
	for (var i = 1; i < string_length(text) + 1; i++) {
		var char = string_char_at(text, i);
		if (char == "\n") {
			width[lidx] -= spacing;
			height += 12 * scale;
			lidx++;
		} else if (struct_exists(info.glyphs, char)) {
			width[lidx] += (string_width(char) + spacing) * scale;
		} else {
			//if (!surface_exists(surf)) {
			//	surf = surface_create(12, 12);
			//}
			draw_set_font(global.font_google);
			width[lidx] += (1 + string_width(char) + spacing) * scale;
			draw_set_font(global.fnt_big);
		}
	}
	for (var i = 0; i < lidx + 1; i++) {
		width[lidx] = max(0, width[lidx] - (spacing * scale));
	}
	var xoffset = 0;
	var yoffset = 0;
	lidx = 0;
	for (var i = 1; i < string_length($"\n{text}") + 1; i++) {
		var char = string_char_at($"\n{text}", i);
		if (char == "\n") {
			switch (halign) {
				case fa_center:
					xoffset = -width[lidx] / 2;
					break;
				case fa_right:
					xoffset = -width[lidx];
					break;
			}
			switch (valign) {
				case fa_middle:
					yoffset = ((lidx + 1) * -12) / 2;
					break;
				case fa_bottom:
					yoffset = (lidx + 1) * -12;
					break;
			}
			lidx++;
		} else if (struct_exists(info.glyphs, char)) {
			if (char != " ") {
				set_blend(blend);
				draw_sprite_ext(info.spriteIndex, info.glyphs[$ char].char, x + xoffset, y + yoffset, scale, scale, 0, color, alpha);
				gpu_set_blendmode(bm_normal);
			}
			xoffset += (string_width(char) + spacing) * scale;
		} else {
			surface_set_target(surf);
			draw_clear_alpha(c_black, 0);
			draw_set_font(global.font_google);
			for (var j = 7; j > 5; j--) {
				switch (j) {
					case 6:
						draw_set_color(#122020);
						break;
					case 7:
						draw_set_color(#060608);
						break;
				}
				draw_text(j, j - 2, char);
				draw_text(j + 1, j - 2, char);
				draw_text(j + 2, j - 2, char);
				draw_text(j, j - 1, char);
				draw_text(j + 1, j - 1, char);
				draw_text(j + 2, j - 1, char);
				draw_text(j, j, char);
				draw_text(j + 1, j, char);
				draw_text(j + 2, j, char);
			}
			draw_set_color(c_white);
			draw_text(7, 5, char);
			surface_reset_target();
			set_blend(blend);
			draw_surface_ext(surf, x + xoffset - (6 * scale), y + yoffset - (6 * scale), scale, scale, 0, color, alpha);
			gpu_set_blendmode(bm_normal);
			xoffset += (1 + string_width(char) + spacing) * scale;
			draw_set_font(global.fnt_big);
		}
	}
	surface_free(surf);
	draw_set_font(global.font_google);
}

/**
	@description	Applies a blend mode that allows for rendering transparent textures on a surface.
	@returns		{undefined}
*/
function gpu_surface_blend() {
	// thanks deepseek (i'm dumb with blend factors)
	gpu_set_blendmode_ext_sepalpha(
		bm_src_alpha, bm_inv_src_alpha,
		bm_zero, bm_one
	);
}