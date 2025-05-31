for (var i = camera_x div 48; i <= (camera_right) div 48; i++) {
	for (var j = camera_y div 48; j <= (camera_bottom) div 48; j++) {
		draw_sprite(spr_world_tile, 0, i * 48, j * 48);
	}
}

/*	prepare drawing edges:
	unlike other tilesets in this game, this one has its edges on water tiles
	instead of the edge being inside of the ground tile. keep that in mind
	!!!
	bottom, left = L_ shaped edge (inner corner)
	bottom left =  .  shaped edge (outer corner)
*/

// deactivate dragged resources for now
with (obj_parent_world_res) {
	if (dragging || !show_edges) {
		instance_deactivate_object(id);
	}
}
for (var posx = 0; posx < 32; posx++) {
	for (var posy = 0; posy < 32; posy++) {
		// checking for sides and corners
		var here = position_meeting(posx * 48, posy * 48, obj_parent_world_res);
		var top = position_meeting(posx * 48, (posy - 1) * 48, obj_parent_world_res);
		var bottom = position_meeting(posx * 48, (posy + 1) * 48, obj_parent_world_res);
		var left = position_meeting((posx - 1) * 48, posy * 48, obj_parent_world_res);
		var right = position_meeting((posx + 1) * 48, posy * 48, obj_parent_world_res);
		var topleft = position_meeting((posx - 1) * 48, (posy - 1) * 48, obj_parent_world_res);
		var topright = position_meeting((posx + 1) * 48, (posy - 1) * 48, obj_parent_world_res);
		var bottomleft = position_meeting((posx - 1) * 48, (posy + 1) * 48, obj_parent_world_res);
		var bottomright = position_meeting((posx + 1) * 48, (posy + 1) * 48, obj_parent_world_res);
		subimg = 0;
		// figuring out the tile to draw
		if (here) {
			subimg = 0; // this tile is filled in
		} else if (top) {
			if (right) {
				if (bottom) {
					if (left) {
						subimg = 5; // top, right, bottom, left
					} else {
						subimg = 4; // top, right, bottom 
					}
				} else if (left) {
					subimg = 6; // top, right, left
				} else if (bottomleft) {
					subimg = 7; // top, right, bottom left
				} else {
					subimg = 3; // top, right
				}
			} else if (bottom) {
				if (left) {
					subimg = 9; // top, bottom, left
				} else {
					subimg = 8; // top, bottom
				}
			} else if (left) {
				if (bottomright) {
					subimg = 11; // top, left, bottom right
				} else {
					subimg = 10; // top, left
				}
			} else if (bottomleft) {
				if (bottomright) {
					subimg = 14; // top, bottom left, bottom right
				} else {
					subimg = 12; // top, bottom left
				}
			} else if (bottomright) {
				subimg = 13; // top, bottom right
			} else {
				subimg = 2; // top
			}
		} else if (right) {
			if (bottom) {
				if (left) {
					subimg = 18; // right, bottom, left
				} else if (topleft) {
					subimg = 17; // right, bottom, top left
				} else {
					subimg = 16; // right, bottom
				}
			} else if (left) {
				subimg = 19; // right, left
			} else if (topleft) {
				if (bottomleft) {
					subimg = 21; // right, top left, bottom left
				} else {
					subimg = 20; // right, top left
				}
			} else if (bottomleft) {
				subimg = 22; // right, bottom left
			} else {
				subimg = 15; // right	
			}
		} else if (bottom) {
			if (left) {
				if (topright) {
					subimg = 25; // bottom, left, top right
				} else {
					subimg = 24; // bottom, left
				}
			} else if (topleft) {
				if (topright) {
					subimg = 27; // bottom, top left, top right
				} else {
					subimg = 26; // bottom, top left
				}
			} else if (topright) {
				subimg = 28; // bottom, top right
			} else {
				subimg = 23; // bottom
			}
		} else if (left) {
			if (topright) {
				if (bottomright) {
					subimg = 31; // left, top right, bottom right
				} else {
					subimg = 30; // left, top right
				}
			} else if (bottomright) {
				subimg = 32; // left, bottom right
			} else {
				subimg = 29; // left
			}
		} else if (topleft) {
			if (topright) {
				if (bottomright) {
					if (bottomleft) {
						subimg = 36; // top left, top right, bottom right, bottom left
					} else {
						subimg = 35; // top left, top right, bottom right
					}
				} else if (bottomleft) {
					subimg = 37; // top left, top right, bottom left
				} else {
					subimg = 34; // top left, top right
				}
			} else if (bottomright) {
				if (bottomleft) {
					subimg = 39; // top left, bottom right, bottom left
				} else {
					subimg = 38; // top left, bottom right
				}
			} else if (bottomleft) {
				subimg = 40; // top left, bottom left
			} else {
				subimg = 33; // top left
			}
		} else if (topright) {
			if (bottomright) {
				if (bottomleft) {
					subimg = 43; // top right, bottom right, bottom left
				} else {
					subimg = 42; // top right, bottom right
				}
			} else if (bottomleft) {
				subimg = 44; // top right, bottom left
			} else {
				subimg = 41; // top right
			}
		} else if (bottomright) {
			if (bottomleft) {
				subimg = 46; // bottom right, bottom left
			} else {
				subimg = 45; // bottom right
			}
		} else if (bottomleft) {
			subimg = 47; // bottom left
		}
		// draw the sprite
		if (subimg != 0) {
			draw_sprite(spr_world_tile, subimg, posx * 48, posy * 48);
		}
	}
}
// reactivate dragged resources
instance_activate_object(obj_parent_world_res);