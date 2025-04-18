for (
	var i = camera_get_view_x(view_camera[0]) div 48;
	i <= (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])) div 48;
	i++
) {
	for (
		var j = camera_get_view_y(view_camera[0]) div 48;
		j <= (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])) div 48;
		j++
	) {
		draw_sprite(spr_world_tile, 0, i * 48, j * 48);
	}
}

with (obj_world_editor) {
	/*	draw the tiles:
		unlike other tilesets in this game, this one has its edges on water tiles
		instead of the edge being inside of the ground tile. keep that in mind
		!!!
		bottom, left = L_ shape edge (inner corner)
		bottom left =  .  shaped edge (outer corner)
	*/
	for (var posx = 0; posx < 32; posx++) {
		for (var posy = 0; posy < 32; posy++) {
			// figuring out the tile to draw
			subimg = 0;
			try {
				if (tile_data[posx, posy] != undefined) {
					subimg = 0; // this tile is filled in
				} else if (tile_data[posx, posy - 1] != undefined) {
					if (tile_data[posx + 1, posy] != undefined) {
						if (tile_data[posx, posy + 1] != undefined) {
							if (tile_data[posx - 1, posy] != undefined) {
								subimg = 5; // top, right, bottom, left
							} else {
								subimg = 4; // top, right, bottom 
							}
						} else if (tile_data[posx - 1, posy] != undefined) {
							subimg = 6; // top, right, left
						} else if (tile_data[posx - 1, posy + 1] != undefined) {
							subimg = 7; // top, right, bottom left
						} else {
							subimg = 3; // top, right
						}
					} else if (tile_data[posx, posy + 1] != undefined) {
						if (tile_data[posx - 1, posy] != undefined) {
							subimg = 9; // top, bottom, left
						} else {
							subimg = 8; // top, bottom
						}
					} else if (tile_data[posx - 1, posy] != undefined) {
						if (tile_data[posx + 1, posy + 1] != undefined) {
							subimg = 11; // top, left, bottom right
						} else {
							subimg = 10; // top, left
						}
					} else if (tile_data[posx - 1, posy + 1] != undefined) {
						if (tile_data[posx + 1, posy + 1] != undefined) {
							subimg = 14; // top, bottom left, bottom right
						} else {
							subimg = 12; // top, bottom left
						}
					} else if (tile_data[posx + 1, posy + 1] != undefined) {
						subimg = 13; //top, bottom right
					} else {
						subimg = 2; // top
					}
				} else if (tile_data[posx + 1, posy] != undefined) {
					if (tile_data[posx, posy + 1] != undefined) {
						if (tile_data[posx - 1, posy] != undefined) {
							subimg = 18; // right, bottom, left
						} else if (tile_data[posx - 1, posy - 1] != undefined) {
							subimg = 17; // right, bottom, top left
						} else {
							subimg = 16; // right, bottom
						}
					} else if (tile_data[posx - 1, posy] != undefined) {
						subimg = 19; // right, left
					} else if (tile_data[posx - 1, posy - 1] != undefined) {
						if (tile_data[posx - 1, posy + 1] != undefined) {
							subimg = 21; // right, top left, bottom left
						} else {
							subimg = 20; // right, top left
						}
					} else if (tile_data[posx - 1, posy + 1] != undefined) {
						subimg = 22; // right, bottom left
					} else {
						subimg = 15; // right	
					}
				} else if (tile_data[posx, posy + 1] != undefined) {
					if (tile_data[posx - 1, posy] != undefined) {
						if (tile_data[posx + 1, posy - 1] != undefined) {
							subimg = 25; // bottom, left, top right
						} else {
							subimg = 24; // bottom, left
						}
					} else if (tile_data[posx - 1, posy - 1] != undefined) {
						if (tile_data[posx + 1, posy - 1] != undefined) {
							subimg = 27; // bottom, top left, top right
						} else {
							subimg = 26; // bottom, top left
						}
					} else if (tile_data[posx + 1, posy - 1] != undefined) {
						subimg = 28; // bottom, top right
					} else {
						subimg = 23; // bottom
					}
				} else if (tile_data[posx - 1, posy] != undefined) {
					if (tile_data[posx + 1, posy - 1] != undefined) {
						if (tile_data[posx + 1, posy + 1] != undefined) {
							subimg = 31; // left, top right, bottom right
						} else {
							subimg = 30; // left, top right
						}
					} else if (tile_data[posx + 1, posy + 1] != undefined) {
						subimg = 32; // left, bottom right
					} else {
						subimg = 29; // left
					}
				} else if (tile_data[posx - 1, posy - 1] != undefined) {
					if (tile_data[posx + 1, posy - 1] != undefined) {
						if (tile_data[posx + 1, posy + 1] != undefined) {
							if (tile_data[posx - 1, posy + 1] != undefined) {
								subimg = 36; // top left, top right, bottom right, bottom left
							} else {
								subimg = 35; // top left, top right, bottom right
							}
						} else if (tile_data[posx - 1, posy + 1] != undefined) {
							subimg = 37; // top left, top right, bottom left
						} else {
							subimg = 34; // top left, top right
						}
					} else if (tile_data[posx + 1, posy + 1] != undefined) {
						if (tile_data[posx - 1, posy + 1] != undefined) {
							subimg = 39; // top left, bottom right, bottom left
						} else {
							subimg = 38; // top left, bottom right
						}
					} else if (tile_data[posx - 1, posy + 1] != undefined) {
						subimg = 40; // top left, bottom left
					} else {
						subimg = 33; // top left
					}
				} else if (tile_data[posx + 1, posy - 1] != undefined) {
					if (tile_data[posx + 1, posy + 1] != undefined) {
						if (tile_data[posx - 1, posy + 1] != undefined) {
							subimg = 43; // top right, bottom right, bottom left
						} else {
							subimg = 42; // top right, bottom right
						}
					} else if (tile_data[posx - 1, posy + 1] != undefined) {
						subimg = 44; // top right, bottom left
					} else {
						subimg = 41; // top right
					}
				} else if (tile_data[posx + 1, posy + 1] != undefined) {
					if (tile_data[posx - 1, posy + 1] != undefined) {
						subimg = 46; // bottom right, bottom left
					} else {
						subimg = 45; // bottom right
					}
				} else if (tile_data[posx - 1, posy + 1] != undefined) {
					subimg = 47; // bottom left
				}
			} catch (_) {	// catch errors from map edge tiles trying to get its
				subimg = 0;	// sides
			}
			// draw the sprite
			if (subimg != 0) {
				draw_sprite(spr_world_tile, subimg, posx * 48, posy * 48);
			}
		}
	}
}