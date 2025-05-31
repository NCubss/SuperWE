/// @description Handles Mario's physics and movements

// exit if global.pp is not zero
if (global.pp != 0) exit;
// if torso touching obj_enabledsolid (precise):
if (collision_rectangle(bbox_right - 3, bbox_top + 3, bbox_left + 3, bbox_bottom - 3, obj_enabledsolid, true, false)) {
	// set all speed to zero
	speed = 0;
	// set gravity to zero
	gravity = 0;
	// set state to standing
	state = ms_standing;
	// start ducking
	isduck = 1;
	// stop jumping
	jumpnow = 0;
	// disable jumping
	canjump = 0;
// if torso NOT touching obj_enabledsolid (precise)
} else {
	// enable jumping
	canjump = 1;
}
// check slipperiness
snow = real(
	// theme is snow night?
	(global.night == 1 && global.theme == "snow")
	// OR feet touching...
	|| collision_rectangle(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 1, [
		// ...ice block?
		obj_block_ice,
		// ...frozen coin?
		obj_icecoin
	], false, false)
);
// check if standing on moving platform
platform_m = real((
		// feet touching...
		collision_rectangle(bbox_left, bbox_bottom - 5, bbox_right, bbox_bottom + 5, [
			// ...moving platform?
			obj_platform_parent,
			// ...POW block?
			obj_block_pow_hold
		], false, false)
	) && state < ms_jumping
);
// if boostme is greater than zero:
if (boostme > 0) {
	// decrement it
	boostme--;
	// if absolute hspeed is smaller than the maximum:
	if (abs(hspeed) < hspeedmax) {
		// set boostme to zero
		boostme = 0;
	}
}
// if vspeed is greater or equal to zero:
if (vspeed >= 0) {
	// find any obj_solidtop collider
	var solidtop = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vspeed, obj_solidtop, false, false);
	// find any obj_physicssolid collider
	var solidphy = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vspeed, obj_physicssolid, false, false);
	/// find any obj_lava_water_drybones collider
	var b_drybones = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vspeed, obj_lava_water_drybones, false, false);
	if (
		solidtop
		&& bbox_bottom < (solidtop.yprevious + 5)
		&& !collision_rectangle(bbox_left, bbox_top + 4, bbox_right, solidtop.y - 1, obj_solid, true, false)
	) {
		// if slowly dropping down with cape
		if (sprite_index == scr_mario_cap_fly_decender() && image_index == 2) {
			event_user(8);
		}
		if (
			collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_rockparent, false, false)
			|| collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_blockparent, false, false)
			|| collision_rectangle(bbox_left, (bbox_bottom + 2), bbox_right, ((bbox_bottom + vspeed) + 2), obj_block_pow_hold, false, false)
		) {
			if (jumpnow != 0 && can_break_block == 0 && vspeed > 0) {
				can_break_block = 1;
			}
			if (can_break_block == 2) {
				can_break_block = 0;
			}
		} else if (can_break_block == 2) {
			can_break_block = 0;
		}
		y = (solidtop.y - 32);
		vspeed = 0;
		gravity = 0;
		event_user(15);
	}
	if (
		solidphy
		&& bbox_bottom < (solidphy.yprevious + 5)
		&& !collision_rectangle(bbox_left, bbox_top + 4, bbox_right, solidphy.y - 1, obj_solid, true, false)
	) {
		if (sprite_index == scr_mario_cap_fly_decender() && image_index == 2) {
			event_user(8);
		}
		y = solidphy.y - 32;
		vspeed = 0;
		gravity = 0;
		event_user(15);
	}
	if (
		b_drybones
		&& bbox_bottom < (b_drybones.yprevious + 5)
		&& !collision_rectangle(bbox_left, bbox_top + 4, bbox_right, b_drybones.y - 1, obj_solid, true, false)
		&& (
			instance_exists(obj_kuribo_drybones)
			|| (global.powerup == -29 && obj_mario.pmeter > 5 && obj_mario.holding == 2)
		)
	) {
		y = b_drybones.y - 32;
		vspeed = 0;
		gravity = 0;
		event_user(15);
	}
	var enemigos_solid = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom + vspeed, obj_enemyparent, 0, 0);
	if (
		enemigos_solid
		&& global.powerup == -80 // idk this powerup
		&& bbox_bottom < (enemigos_solid.yprevious + 5)
		&& enemigos_solid.stomp != 1
		&& enemigos_solid.stomp != 2 
		&& enemigos_solid.stomp != 5
	) {
		y = ceil(enemigos_solid.bbox_top - 32 - enemigos_solid.vspeed);
		vspeed = 0;
		gravity = 0;
		jumpnow = 0;
		hitpoint = 0;
	}
}
if (stuntime > 0) {
	stuntime--;
	if (stuntime == 0) {
		shake = 0;
		disablecontrols = 0;
		if instance_exists(obj_shake_mario) {
			instance_destroy(obj_shake_mario)
		}
	}
}
if (isswim == 0) {
	switch (state) {
		case ms_climbing:
			event_user(4);
			break;
		case ms_wallclimb:
			event_user(5);
			break;
		default:
			event_user(2);
			break;
	}
} else {
	switch (state) {
		case ms_climbing:
			event_user(4);
			break;
		default:
			event_user(3);
			break;
	}
}
if (collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_solid, true, false)) {
	if (hspeed > 0) hspeed = 0;
	while (
		collision_rectangle(bbox_right, bbox_top + 4, bbox_right, bbox_bottom - 1, obj_solid, true, false)
		&& !collision_point(x, bbox_top + 4, obj_solid, false, false)
		&& inclown != 2
	) {
		x--;
	}
	if collision_rectangle(bbox_left + 4, bbox_top + 4, bbox_right + 1, bbox_bottom, obj_pinchos, false, false) {
		event_user(0);
	}
} else if collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_solid, true, false) {
	if (hspeed < 0) hspeed = 0;
	while (
		collision_rectangle(bbox_left, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_solid, true, false)
		&& !collision_point(x, bbox_top + 4, obj_solid, false, false)
		&& inclown != 2
	) {
		x++;
	}
	if collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_right - 4, bbox_bottom, obj_pinchos, false, false) {
		event_user(0);
	}
}
if collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_physicssolid, true, false) {
	if (hspeed > 0) hspeed = 0;
	if (
		!collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, [
			obj_physicssolid,
			obj_solid,
			obj_bullebill_base
		], true, false)
		&& inclown != 2
	) {
		while (
			collision_rectangle(bbox_right, bbox_top + 4, bbox_right, bbox_bottom - 1, obj_physicssolid, true, false)
			&& !collision_point(x, bbox_top + 4, obj_physicssolid, false, false)
		) {
			x--;
		}
	}
	if (collision_rectangle(bbox_left + 4, bbox_top + 4, bbox_right + 1, bbox_bottom, obj_muncher, false, false)) {
		event_user(0);
	}
} else if (collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_physicssolid, true, false)) {
	if (hspeed < 0) hspeed = 0;
	if (
		!collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, [
			obj_physicssolid,
			obj_solid,
			obj_bullebill_base
		], true, false)
		&& inclown != 2
	) {
		while (
			collision_rectangle(bbox_left, bbox_top + 4, bbox_left + 1, bbox_bottom - 1, obj_physicssolid, true, false)
			&& !collision_point(x, bbox_top + 4, obj_physicssolid, false, false)
		) {
			x++;
		}
	}
	if (collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_right - 4, bbox_bottom, obj_muncher, false, false)) {
		event_user(0);
	}
}
if (collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_bullebill_base, true, false)) {
	if (hspeed > 0) hspeed = 0; 
	if (
		!collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, [
			obj_physicssolid,
			obj_solid,
			obj_bullebill_base
		], true, false)
		&& inclown != 2
	) {
		while (
			collision_rectangle(bbox_right, bbox_top + 4, bbox_right, bbox_bottom - 1, obj_bullebill_base, true, false)
			&& !collision_point(x, bbox_top + 4, obj_bullebill_base, false, false)
		) {
			x--;
		}
	}
} else if (collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_bullebill_base, true, false)) {
	if (hspeed < 0) hspeed = 0;
	if (
		!collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, [
			obj_physicssolid,
			obj_solid,
			obj_bullebill_base
		], true, false)
		&& inclown != 2
	) {
		while (
			collision_rectangle(bbox_left, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_bullebill_base, true, false)
			&& !collision_point(x, bbox_top + 4, obj_solidphy, false, false)
		) {
			x++;
		}
	}
}
var col_one_right = collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_onewaygate_right, true, false);
var col_one_left = collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 1, obj_onewaygate_left, true, false);
if (col_one_right) {
	if (hspeed < 0) {
		hspeed = 0;
		with (col_one_right) {
			rot = 1;
			event_user(0);
		}
	}
	while (
		collision_rectangle(bbox_left, bbox_top + 4, bbox_left, bbox_bottom - 1, obj_onewaygate_right, true, false)
		&& !collision_point(x, bbox_top + 4, obj_onewaygate_right, false, false)
	) {
		x++;
	}
}
if (col_one_left) {
	if (hspeed > 0) {
		hspeed = 0;
		with (col_one_left) {
			rot = 1;
			event_user(0);
		}
	}
	while (
		collision_rectangle(bbox_right, bbox_top + 4, bbox_right, bbox_bottom - 1, obj_onewaygate_left, true, false)
		&& !collision_point(x, bbox_top + 4, obj_onewaygate_left, false, false)
	) {
		x--;
	}
}
pow = collision_rectangle(bbox_left + 1, bbox_top - 2, bbox_right - 1, bbox_top, obj_block_pow_hold, true, false);
if (vspeed < 0 && pow && pow.held == 0 && pow.inmune == 0 && pow.y + 8 < bbox_top) {
	vspeed = 0;
	with (pow) {
		explode = 1;
		event_user(6);
	}
}
pswitch = collision_rectangle(bbox_left, bbox_top - 2, bbox_right, bbox_top, obj_pswitch, true, false);
if (pswitch && pswitch.inmune == 0 && pswitch.inup == 1) {
	with (pswitch) {
		event_user(6);
	}
}
var one_2 = collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, true, false);
if (
	vspeed < 0
	&& (
		collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_top, obj_solid, true, false)
		|| collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_top, obj_physicssolid, true, false)
		|| collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_top, obj_bullebill_base, true, false)
		|| (pswitch && pswitch.held == 0 && pswitch.y + 16 < bbox_top)
		|| (one_2 && bbox_top + 5 >= one_2.bbox_bottom)
	)
) {
	var block_col = collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_top + 4, obj_blockparent, false, false);
	var rock_parent = collision_rectangle(bbox_left, bbox_top - 2, bbox_right, bbox_top, obj_rockparent, true, false);
	if (state > 1 && canjump == 1) {
		while collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, true, false) {
			y++;
		}
	}
	vspeed = 0;
	if (
		helmet == 0
		&& collision_rectangle(bbox_left, bbox_top - 1, bbox_right, bbox_bottom - 2, [obj_pinchos, obj_muncher], false, false)
	) {
		event_user(0);
	}
	var col_one_bottom = collision_rectangle(bbox_left, bbox_top - 2, bbox_right, bbox_top, obj_onewaygate_bottom, true, false);
	if (col_one_bottom) {
		with (col_one_bottom) {
			rot = 1;
			event_user(0);
		}
	} else if (!audio_is_playing(scr_snd_bump())) {
		audio_stop_sound(scr_jump());
		audio_play_sound(scr_snd_bump(), 0, false);
	}
	if (instance_exists(obj_helmet_spiny) && rock_parent && rock_parent.vspeed == 0) {
		with (rock_parent) {
			alarm[0] = 1;
		}
	}
	if (
		(instance_exists(obj_helmet_spiny) || global.powerup == -77)
		&& block_col
		&& block_col.vspeed == 0
		&& block_col.object_index != obj_onoffblock
		&& block_col.object_index != obj_noteblock
		&& block_col.object_index != obj_musicblock
		&& block_col.object_index != obj_noteblock_s
	) {
		with (block_col) {
			alarm[2] = 1;
		}
	}
	if (
		block_col
		&& block_col.vspeed == 0
		&& block_col.object_index == obj_flipblock
		&& global.style != 2
		&& (
			(global.powerup != 0 && global.powerup != -85)
			|| (
				(global.powerup == 0 || global.powerup == -85)
				&& instance_exists(obj_helmet)
			)
		)
	) {
		with (block_col) {
			alarm[2] = 1;
		}
	} else if (block_col && block_col.object_index == obj_onoffblock && block_col.ready == 0) {
		with (block_col) {
			event_user(1);
		}
	} else if (block_col && block_col.object_index == obj_block_gold && block_col.ready == 0) {
		with (block_col) {
			if (other.helmet == 0) {
				brick_helmet = instance_create(obj_mario.x, obj_mario.y + 8, obj_brickhelmet);
				brick_helmet.limit_coins = limit_coins + 100;
				obj_mario.helmet = 1;
				instance_destroy();
			} else {
				ready = 1;
				vspeed = -2
				alarm[0] = 4;
				event_user(0);
			}
		}
	} else if (
		block_col
		&& (
			global.powerup != -77
			|| block_col.object_index == obj_noteblock
			|| block_col.object_index == obj_musicblock
			|| block_col.object_index == obj_noteblock_s
		)
	) {
		if (block_col.ready == 0) {
			with (block_col) {
				if (object_index != obj_noteblock && object_index != obj_musicblock) {
					expand = 1;
				}
				ready = 1;
				vspeed = -2;
				if (object_index == obj_noteblock || object_index == obj_musicblock || object_index == obj_noteblock_s) {
					alarm[0] = 7;
				} else {
					alarm[0] = 4;
				}
				event_user(0);
			}
		}
	}
	if (noisy == 0 && state < 3 && vspeed < 0) {
		jumpnow = 2;
		audio_stop_sound(scr_snd_bump());
		audio_stop_sound(scr_jump());
		audio_play_sound(scr_snd_bump(), 0, false);
	}
}
if (state < 3) {
	if (state != 2 && disablecontrols == 0) {
		if (
			keyboard_check(global.abajo)
			&& (holding == 0 || holding == 3) 
			&& noisy == 0
			&& down_atack == 0
			&& dash_atack == 0
			&& arrow == 0
		) {
			isduck = 1;
			if (
				global.powerup == -85
				&& global.yoshi == 0
				&& !instance_exists(obj_shield_right)
				&& !instance_exists(obj_shield_left)
			) {
				audio_stop_sound(snd_SMB_link_guard);
				audio_play_sound(snd_SMB_link_guard, 0, false);
				if (direct == 1) {
					instance_create(x, y, obj_shield_right);
				} else {
					instance_create(x, y, obj_shield_left);
				}
			}
		} else if (
			keyboard_check(global.abajo)
			&& holding == 2
			&& noisy == 0
			&& global.style == GameStyle.SMW
		) {
			isduck = 1;
			isduckhold = 1;
		} else if (
			keyboard_check(global.abajo)
			&& holding == 1
			&& noisy == 0
			&& global.powerup == -80
		) {
			isduck = 1;
			isduckhold = 1;
		} else if (
			keyboard_check(global.abajo)
			&& (holding == 0 || holding == 3)
			&& noisy == 0
			&& (global.style == GameStyle.SMW || global.powerup == -80)
		) {
			isduck = 1;
		} else if (
			!keyboard_check(global.abajo) 
			&& (
				collision_rectangle(bbox_left, bbox_top - 6, bbox_right, bbox_top, obj_solid, true, false)
				|| collision_rectangle(bbox_left, bbox_top - 6, bbox_right, bbox_top, obj_physicssolid, true, false)
				|| collision_rectangle(bbox_left, bbox_top - 6, bbox_right, bbox_top, obj_bullebill_base, true, false)
				|| collision_rectangle(bbox_left, bbox_top - 16, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0)
			)
			&& global.powerup != 0
			&& global.powerup != -85
			&& isduck == 1
		) {
			isduck = 1;
		} else {
			isduck = 0;
			isduckhold = 0;
		}
		if (
			keyboard_check(global.arriba)
			&& holding < 3
			&& noisy == 0
			&& global.style == 2
		) {
			isup = 1
			if (holding == 2) isuphold = 1;
		} else if (!keyboard_check(global.arriba)) {
			isup = 0;
			isuphold = 0;
		}
	} else if (state == 2 && disablecontrols == 0) {
		if (
			!keyboard_check(global.abajo)
			&& isduck == 1
			&& !collision_rectangle(bbox_left, bbox_top - 6, bbox_right, bbox_top, obj_solid, true, false)
			&& !collision_rectangle(bbox_left, bbox_top - 6, bbox_right, bbox_top, obj_bullebill_base, true, false)
			&& !collision_rectangle(bbox_left, bbox_top - 12, bbox_right, bbox_top, obj_solidphy, true, false)
			&& !collision_rectangle(bbox_left, bbox_top - 16, bbox_right, bbox_top, obj_onewaygate_bottom, true, false)
			&& vspeed > 0
		) {
			isduck = 0;
			isduckhold = 0;
		} else if (isduck == 1 && holding == 2 && noisy == 0 && global.style == GameStyle.SMW) {
			isduckhold = 1;
		}
	}
	if (
		keyboard_check_pressed(global.lanzar_agarrar)
		&& instance_exists(obj_levelmanager)
		&& obj_levelmanager.barrier == 0
	) {
		alarm[10] = 1;
	}
} else {
	isduck = 0;
}
if (
	isswim == 0
	&& (
		global.theme == "underwater"
		|| (
				global.theme == "castle"
				&& global.night == 1
		) || (
			instance_exists(obj_lava_water)
			&& y + 18 >= obj_lava_water.y
			&& (
				(global.theme == "forest" && global.night == 0)
				|| global.theme == "beach"
			)
		)
	)
) {
	dash_atack = 0;
	dash_cont = 0;
	down_atack = 0;
	down_cont = 0;
	if (holding == 2 && global.style == GameStyle.SMW) {
		isswimhold = 1;
	}
	isswim = 1;
	if (
		instance_exists(obj_lava_water)
		&& bbox_bottom - 8 > obj_lava_water.y - 12
		&& global.style != GameStyle.SMB
	) {
		instance_create(x, obj_lava_water.y - 26, obj_splash_agua);
	}
	if (state > ms_jumping) state = ms_jumping;
}
if (
	isswim == 0
	&& (
		global.theme == "underwater"
		|| (
			global.theme == "castle"
			&& global.night == 1
		) || (
			instance_exists(obj_lava_water)
			&& global.theme == "forest"
			&& global.night == 0
			&& y + 18 >= obj_lava_water.y
		) || (
			instance_exists(obj_lava_water)
			&& global.theme == "beach"
			&& y + 18 >= obj_lava_water.y
		)
	)
) {
	if (holding == 2 && global.style == GameStyle.SMW) {
		isswimhold = 1;
	}
	isswim = 1;
	if (
		instance_exists(obj_lava_water)
		&& bbox_bottom - 8 > obj_lava_water.y - 12
		&& global.style != GameStyle.SMB
	) {
		instance_create(x, obj_lava_water.y - 26, obj_splash_agua);
	}
	if (state > ms_jumping) state = ms_jumping;
}
switch (global.theme) {
	case "underwater":
		if (instance_exists(obj_levelmanager) && obj_levelmanager.camlock == 1) {
			if (y < (camera_y - 16)) {
				y = (camera_y - 16);
			}
		} else if (y < -16) {
			y = -16;
		}
		break;
	case "castle":
		if (global.night == 1 && instance_exists(obj_levelmanager) && obj_levelmanager.camlock == 1) {
			if (y < (camera_y - 16)) {
				y = (camera_y - 16);
			}
		} else if (y < -16) {
			y = -16;
		}
		break;
	default:
		if (
			instance_exists(obj_mario_pballon)
			&& instance_exists(obj_levelmanager)
			&& obj_levelmanager.camlock == 1
		) {
			if (obj_mario_pballon.y < camera_y) {
				obj_mario_pballon.y = camera_y;
			}
			break;
		}
}
if (y < -96) {
	y = -96;
} else if (
	bbox_top - 32 > room_height
	&& global.theme != "castle"
) {
	if (global.powerup == 24 && doublejump != -1) {
		doublejump = -1;
		vspeed = -4.5;
		y -= 8;
		jumpnow = 1;
		audio_play_sound(snd_jump, 0, false);
		audio_play_sound(snd_stomp, 0, false);
	} else {
		with (instance_create(x, (room_height - 32), obj_deadmario)) {
			visible = false;
		}
		instance_destroy();
	}
} else if (
	(
		instance_exists(obj_lava_water)
		&& (
			(
				global.theme == "castle"
				|| (
					global.theme == "forest"
					&& global.night == 1
				)
			) && (
				y + 32 >= obj_lava_water.y
				&& !instance_exists(obj_kuribo_drybones)
			)
		)
	) || (
		instance_exists(obj_lava_water)
		&& (
			(
				global.theme == "castle"
				|| (
					global.theme == "forest"
					&& global.night == 1
				)
			) && (
				y + 32 >= obj_lava_water.y + 12
				&& instance_exists(obj_kuribo_drybones)
			)
		)
	)
) {
	instance_create(x, y, obj_deadmario);
	instance_destroy();
} else if (
	(
		instance_exists(obj_lava_water)
		&& (
			(global.theme == "mountain")
			&& (global.night == 1)
		)
		&& (
			((y + 32) >= obj_lava_water.y)
			&& (!instance_exists(obj_kuribo_drybones))) || (instance_exists(obj_lava_water) && ((global.theme == "mountain") && (global.night == 1)) && (((y + 32) >= (obj_lava_water.y + 12)) && instance_exists(obj_kuribo_drybones)))))
	{
		instance_create(x, y, obj_deadmario)
		instance_destroy()
	}
if (
	(global.theme == "underwater" && isswim == 0)
	|| (
		(global.theme == "castle" && global.night == 1 && isswim == 0)
		|| (
			instance_exists(obj_lava_water)
			&& global.theme == "forest"
			&& global.night == 0
			&& y + 18 >= obj_lava_water.y
			&& isswim == 0
		)
	)
) {
	if ((holding == 2) && (global.style == GameStyle.SMW)) {
		isswimhold = 1;
	}
	isswim = 1;
	powerupfly = 0;
	walljump = 0;
	squirrelpropel = 0;
	doublejump = 0;
	if (
		collision_point(x, y - 17, obj_lava_water, false, false)
		&& !collision_point(x, y - 16, obj_lava_water, false, false) 
	) {
		vspeed = 0;
		if (global.style != GameStyle.SMB) {
			with (instance_create(x, (y + 7), obj_smoke)) {
				if (global.style == GameStyle.SMB3) {
					sprite_index = spr_SMB3_splash;
				} else if (global.style == GameStyle.SMW) {
					sprite_index = spr_splash;
				}
				depth = -10;
			}
		}
	}
	isfloating = 0;
	if (floatnow == 1) {
		audio_stop_sound(snd_spin);
		floatnow = 0;
	}
	if (state > ms_jumping) state = ms_jumping;
}
if (instance_exists(obj_cinta)) {
	conveyor = false;
	player_on_conveyor = collision_rectangle(bbox_left - 2, bbox_top + 10, bbox_right + 2, bbox_bottom + 10, obj_cinta_parent, false, false);
	solid_col = collision_rectangle(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom - 1, obj_solidtop, false, false);
	solid_col_2 = collision_rectangle(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 1, obj_solidtop, false, false);
	if (player_on_conveyor) {
		conveyor_first_col = true;
	} else if (solid_col || solid_col_2) {
		conveyor_first_col = false;
	}
	if (conveyor_first_col) {
		conveyor = collision_rectangle(bbox_left - 2, obj_cinta_parent.y - 48, bbox_right + 2, obj_cinta_parent.y, obj_cinta_parent, false, false);
	} else {
		conveyor = false;
	}
	if (conveyor && obj_mario.y > obj_cinta_parent.y) {
		conveyor = false;
	}
	if (conveyor && conveyor.image_speed != 0) {
		if (conveyor.image_speed > 0) {
			if (
				!collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 1, bbox_bottom - 4, [
					obj_solid, obj_pinchos, obj_muncher, obj_cannon, obj_bullebill_base
				], true, false)
				&& !collision_rectangle(bbox_right, bbox_top + 4, bbox_right + 2, bbox_bottom - 4, obj_onewaygate_left, true, false)
			) {
				x -= conveyor.image_speed;
			}
		} else if (conveyor.image_speed < 0) {
			if (
				!collision_rectangle(bbox_left - 1, bbox_top + 4, bbox_left, bbox_bottom - 4, [
					obj_solid, obj_pinchos, obj_muncher, obj_cannon, obj_bullebill_base
				], true, false)
				&& !collision_rectangle(bbox_left - 2, bbox_top + 4, bbox_left, bbox_bottom - 4, obj_onewaygate_right, true, false)
			) {
				x -= conveyor.image_speed;
			}
		}
	}
}
