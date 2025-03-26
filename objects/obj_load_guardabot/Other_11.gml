function _error(msg) {
	show_debug_message(msg);
	room_goto(rm_guardabot);
	scr_toast(1, lang().messages.negative.load_failed);
}

if (global.levelguardabot != "") {
	if file_exists((global.directorio + global.levelguardabot)) {
		var worlds = load_b64_json((global.directorio + global.levelguardabot));
		if (worlds == 0 || !struct_exists(worlds, "MAIN")) {
			_error("Error loading JSON or incorrect structure.");
			exit;
		}
		var _wrapper = worlds.MAIN;
		if (!struct_exists(_wrapper, "AJUSTES")) {
			_error("Key 'AJUSTES' not found or not a list in JSON.");
			exit;
		}
		var _list = _wrapper.AJUSTES;
		if (array_length(_list) == 0 || !struct_exists(_list[0], "user")) { 
			_error("Invalid data structure for 'AJUSTES' in JSON.");
			exit;
		}
		var _map = _list[0];
		if (global.my1 == _map.user) {
			global.save_changes = global.levelguardabot;
			global.last_level = global.levelguardabot;
		}
		global.style = _map.apariencia;
		if (global.style > 3 || global.style < 0) {
			global.style = choose(0, 1, 2, 3);
		}
		global.theme = _map.entorno;
		if (
			global.theme != "ground"
			&& global.theme != "underground"
			&& global.theme != "castle"
			&& global.theme != "underwater"
			&& global.theme != "desert"
			&& global.theme != "ghost"
			&& global.theme != "airship"
			&& global.theme != "sky"
			&& global.theme != "forest"
			&& global.theme != "snow"
			&& global.theme != "beach"
			&& global.theme != "fall"
			&& global.theme != "mountain"
		) {
			global.theme = "ground";
		}
		global.night = _map.modo_noche;
		if (global.night != 0 && global.night != 1) {
			global.night = 0;
		}
		global.timer = _map.cronometro;
		if (global.timer > 500 || global.timer < 10) {
			global.timer = 300;
		}
		if instance_exists(obj_levelmanager) {
			with (obj_levelmanager) {
				if (!instance_exists(obj_mariostart)) {
					event_user(5);
				}
				alarm[2] = 1;
				if (global.checkpointroom != -4) {
					f_mario = 0;
				}
			}
		}
		global.autoscroll = _map.autoavance;
		if (global.autoscroll > 3 || global.autoscroll < 0) {
			global.autoscroll = 0
		}
		global.condiciones = _map.condiciones;
		global.condiciones_type = _map.condiciones_type;
		global.condiciones_object = _map.condiciones_object;
		global.condiciones_count = _map.condiciones_count;
		if (global.condiciones != 0 && global.condiciones != 1) {
			global.condiciones = 0;
		}
		if (global.condiciones_type != 0 || global.condiciones_object != 0) {
			global.condiciones_type = 0;
			global.condiciones_object = 0;
		}
		if (global.condiciones_count > 3 || global.condiciones_count < 0) {
			global.condiciones_count = 0;
		}
		if (struct_exists(_map, "ds_s")) {
			global.sounds_level = _map.ds_s;
		}
		if (global.sounds_level != 0 && global.sounds_level != 1) {
			global.sounds_level = 0;
		}
		if (struct_exists(_map, "meteorites")) {
			global.meteoritos = _map.meteorites;
		}
		if (global.meteoritos != 0 && global.meteoritos != 1) {
			global.meteoritos = 0;
		}
		if (struct_exists(_map, "description")) {
			global.desc = _map.description;
		}
		if (instance_exists(obj_ground2)) {
			obj_ground2.y = _map.ground2;
			obj_ground2.size_y = ((432 - obj_ground2.y) / 16);
		}
		if (instance_exists(obj_ground3)) {
			obj_ground3.x = _map.ground3_x;
			obj_ground3.y = _map.ground3_y;
			obj_ground3.size_y = ((432 - obj_ground3.y) / 16);
		}
		room_width = _map.size;
		if (room_width > 9216) {
			room_width = 9216;
		}
		if (room_width < 384) {
			room_width = 496;
		}
		pos_y = _map.water_level;
		pos_y_limit = _map.water_level_limit;
		global.water_speed = _map.water_level_speed;
		if (global.water_speed != 0.2 && global.water_speed != 0.5 && global.water_speed != 0.8) {
			global.water_speed = 0.2;
		}
		event_user(2);
		var _list2 = _wrapper.SUELO;
		for (var i = 0; i < array_length(_list2); i++) {
			var _map2 = _list2[i];
			var o_ground = instance_create(0, 0, obj_ground);
			o_ground.x = _map2.x_pos;
			o_ground.y = _map2.y_pos;
			o_ground.x_draw = _map2.x_pos;
			o_ground.y_draw = _map2.y_pos;
			o_ground.image_index = _map2.index;		
		}
		var _list3 = _wrapper.NIVEL;
		for (var i = 0; i < array_length(_list3); i++) {
			var _map3 = _list3[i];
			var object = asset_get_index(_map3.object);
			if (
				object != obj_tuberia_res
				&& object != obj_cannon_res
				&& object != obj_cannon_red_res
				&& object != obj_semisolid_platform1
				&& object != obj_mushroom_platform_res
				&& object != obj_pokey_res
				&& object != obj_bullebill_base_red_res
				&& object != obj_bullebill_base_res
				&& object != obj_vine_res
				&& object != obj_platform_res
				&& object != obj_platform_blue_res
				&& object != obj_puente_res
				&& object != obj_door_res
				&& object != obj_door_exit_res
				&& object != obj_door_switch_res
				&& object != obj_door_switch_exit_res
				&& object != obj_door_lock_res
				&& object != obj_door_lock_exit_res
				&& object != obj_cinta_res
				&& object != obj_cinta_on_res
				&& object != obj_ground
				&& object != obj_slopes
			) {
				var o_objecto = instance_create(0, 0, object);
				o_objecto.x = _map3.x_pos;
				o_objecto.y = _map3.y_pos;
				o_objecto.x_draw = _map3.x_pos;
				o_objecto.y_draw = _map3.y_pos;
				o_objecto.sprout = _map3.sprout;
				o_objecto.direct_t = _map3.direct_t;
				o_objecto.progresivo = _map3.progresivo;
				o_objecto.wings = _map3.wings;
				o_objecto.rotacion = _map3.rotacion;
				o_objecto.paracaidas = _map3.paracaidas;
				o_objecto.key = _map3.key;
				o_objecto.inup = _map3.inup;
				o_objecto.modo_water = _map3.modo_water;
				o_objecto.s_scaley = _map3.s_scaley;
			}
		}
		var _list4 = _wrapper.TUBERIAS;
		for (var i = 0; i < array_length(_list4); i++) {
			var _map4 = _list4[i];
			var o_objecto = instance_create(0, 0, obj_tuberia_res);
			o_objecto.x_draw = o_objecto.x = _map4.x_pos;
			o_objecto.y_draw = o_objecto.y = _map4.y_pos;
			o_objecto.size = _map4.size;
			o_objecto.rotacion = _map4.rotacion;
			o_objecto.direct_t = _map4.direct_t;
			o_objecto.s_scalex = _map4.scalex;
			o_objecto.color = _map4.color;
			o_objecto.plant = _map4.mask;
			o_objecto.image_xscale = _map4.xscale;
			o_objecto.image_yscale = _map4.yscale;
			if (struct_exists(_map4, "warp")) {
				o_objecto.warp = _map4.warp;
				o_objecto.t_x_pos = _map4.t_x_pos;
				o_objecto.t_y_pos = _map4.t_y_pos;
				o_objecto.t_size = _map4.t_size;
				o_objecto.t_rotacion = _map4.t_rotacion;
				o_objecto.t_direct_t = _map4.t_direct_t;
				o_objecto.t_s_scalex = _map4.t_s_scalex;
				o_objecto.t_color = _map4.t_color;
				o_objecto.t_xscale = _map4.t_xscale;
				o_objecto.t_yscale = _map4.t_yscale;
			}
		}
		var _list5 = _wrapper.DECORACION;
		for (var i = 0; i < array_length(_list5); i++) {
			var _map5 = _list5[i];
			var object = asset_get_index(_map5.object);
			var sprite = asset_get_index(_map5.sprite);
			var o_objecto = instance_create(0, 0, object);
			o_objecto.x = _map5.x_pos;
			o_objecto.y = _map5.y_pos;
			o_objecto.sprite_index = sprite;
			o_objecto.image_index = _map5.index;
		}
		var _list6 = _wrapper.CANNON;
		for (var i = 0; i < array_length(_list6); i++) {
			var _map6 = _list6[i];
			var object = asset_get_index(_map6.object);
			var o_objecto = instance_create(0, 0, object);
			o_objecto.x_draw = o_objecto.x = _map6.x_pos;
			o_objecto.y_draw = o_objecto.y = _map6.y_pos;
			o_objecto.direct = _map6.direct;
			o_objecto.d = _map6.down;
			o_objecto.u = _map6.up;
			o_objecto.l = _map6.left;
			o_objecto.r = _map6.right;
		}
		var _list7 = _wrapper.PLATAFORMAS;
		for (var i = 0; i < array_length(_list7); i++) {
			var _map7 = _list7[i];
			var object = asset_get_index(_map7.object);
			var o_objecto = instance_create(0, 0, object)
			o_objecto.x_draw = o_objecto.x = _map7.x_pos;
			o_objecto.y_draw = o_objecto.y = _map7.y_pos;
			o_objecto.size_x = _map7.width;
			o_objecto.size_y = _map7.height;
			o_objecto.sprite_index = asset_get_index(_map7.sprite);
			o_objecto.color = _map7.color;
			o_objecto.depth = _map7.depth;
			o_objecto.direct_t = _map7.direct_t;
			o_objecto.wings = _map7.wings;
		}
		var _list8 = _wrapper.PUERTAS;
		for (var i = 0; i < array_length(_list8); i++) {
			var _map8 = _list8[i];
			var object = asset_get_index(_map8.object);
			if (
				(object == obj_door_res && limit_door_1 < 4)
				|| (object == obj_door_switch_res && limit_door_2 < 4)
				|| (object == obj_door_lock_res && limit_door_3 < 4)
			) {
				var o_objecto = instance_create(0, 0, object);
				o_objecto.x_draw = o_objecto.x = _map8.x_pos;
				o_objecto.y_draw = o_objecto.y = _map8.y_pos;
				o_objecto.door_x = _map8.door_x;
				o_objecto.door_y = _map8.door_y;
				if (object == obj_door_res) {
					limit_door_1++;
				} else if (object == obj_door_switch_res) {
					limit_door_2++;
				} else {
					limit_door_3++;
				}
			}
		}
		delete _wrapper;
		if (instance_exists(obj_parent_resource)) {
			// Check for items and enemies above the camera
			var no_instances_above_camera = true;
			with (obj_parent_resource) {
				if (y < obj_levelmanager.cam_top - 8) {
					no_instances_above_camera = false;
					break;
				}
			}
			if (no_instances_above_camera) {
				with (obj_levelmanager) {
					camlock = 1;
				}
			} else {
				with (obj_levelmanager) {
					camlock = 0;
				}
			}
		}
		if (
			obj_ground2.y < (obj_levelmanager.cam_top - 8)
			|| obj_ground3.y < (obj_levelmanager.cam_top - 8)
		) {
			with (obj_levelmanager) {
				camlock = 0;
			}
		}
		edit_to_play();
		if (instance_exists(obj_parent_resource)) {
			with (obj_parent_resource) {
				instance_destroy();
			}
		}
		var mario_u;
		if (global.style == GameStyle.NSMBU) {
			mario_u = obj_marioU;
			with (obj_mario) {
				if (object_index != obj_marioU) {
					instance_create(x, y, obj_marioU);
					instance_destroy();
				}
			}
		} else {
			mario_u = obj_mario;
		}
		if instance_exists(mario_u) {
			if (global.checkpointroom == -4) {
				if instance_exists(obj_ground2) {
					mario_u.x = (obj_ground2.x + 64);
					mario_u.y = (obj_ground2.y - 32);
					with (obj_levelmanager) {
						x = (obj_ground2.x + 64);
						y = obj_ground2.y;
						speed = 0;
						fallow_mario = 0;
					}
				}
			} else if (room == global.checkpointroom) {
				mario_u.x = global.checkpoint_x;
				mario_u.y = (global.checkpoint_y - 16);
				with (obj_levelmanager) {
					x = global.checkpoint_x;
					y = (global.checkpoint_y + 16);
					speed = 0;
					fallow_mario = 0;
				}
			}
		}
		if (global.autoscroll != AutoscrollSpeed.NONE) {
			if (room == global.checkpointroom) {
				switch (global.autoscroll) {
					case AutoscrollSpeed.SLOW:
						with (instance_create(global.checkpoint_x, global.checkpoint_y, obj_autoscroll)) {
							velocidad = 0.5;
							follow_y = 1;
						}
						break;
					case AutoscrollSpeed.NORMAL:
						with (instance_create(global.checkpoint_x, global.checkpoint_y, obj_autoscroll)) {
							velocidad = 1;
							follow_y = 1;
						}
						break;
					case AutoscrollSpeed.FAST:
						with (instance_create(global.checkpoint_x, global.checkpoint_y, obj_autoscroll)) {
							velocidad = 1.5;
							follow_y = 1;
						}
						break;
				}
			} else {
				switch (global.autoscroll) {
					case AutoscrollSpeed.SLOW:
						with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (room_height - 108), obj_autoscroll)) {
							velocidad = 0.5;
						}
						break;
					case AutoscrollSpeed.NORMAL:
						with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (room_height - 108), obj_autoscroll)) {
							velocidad = 1;
						}
						break;
					case AutoscrollSpeed.FAST:
						with (instance_create((camera_get_view_x(view_get_camera(0)) + 192), (room_height - 108), obj_autoscroll)) {
							velocidad = 1.5;
						}
						break;
				}
			}
		}
		// Create all necessary makers
		if (global.theme == "airship" && global.night == 1 && global.style != 0 && !instance_exists(obj_rainmaker)) {
			instance_create(0, 0, obj_rainmaker);
		}
		if (global.theme == "snow" && !instance_exists(obj_snowmaker)) {
			instance_create(0, 0, obj_snowmaker);
		}
		if (global.theme == "fall" && !instance_exists(obj_leafmaker)) {
			instance_create(0, 0, obj_leafmaker);
		}
		if (global.theme == "castle" && global.style == 3 && !instance_exists(obj_firemaker)) {
			instance_create(0, 0, obj_firemaker);
		}
		if (global.theme == "mountain" && global.style == 3 && global.night == 1 && !instance_exists(obj_firemaker)) {
			instance_create(0, 0, obj_firemaker);
			if (global.condiciones == 1 && global.condiciones_type == 0) {
				global.condiciones_clear = 1;
				with (obj_alert_condicion) {
					instance_destroy()
				}
				with (
					instance_create(
						(camera_get_view_x(view_get_camera(0)) + 54),
						(camera_get_view_y(view_get_camera(0)) + 43),
						obj_alert_condicion
					)
				) {
					start = 1;
				}
			}
			switch (global.theme) {
				case "airship":
					if (global.style == 3) {
						if (global.night == 1) {
							__background_set((11 << 0), 1, -0.1);
							__background_set((11 << 0), 2, -0.2);
							__background_set((11 << 0), 3, -0.3);
							__background_set((11 << 0), 4, -0.4);
							__background_set((11 << 0), 5, -0.5);
							__background_set((11 << 0), 7, -0.6);
						}
					} else if (global.style != 3) {
						if (global.night == 0) {
							__background_set((11 << 0), 0, -0.3);
						} else {
							__background_set((11 << 0), 0, -1);
						}
					}
				case "sky":
					if (global.style == 3) {
						__background_set((11 << 0), 1, -0.1);
						__background_set((11 << 0), 2, -0.2);
						__background_set((11 << 0), 3, -0.3);
						__background_set((11 << 0), 4, -0.4);
						__background_set((11 << 0), 5, -0.5);
						__background_set((11 << 0), 7, -0.6);
					} else if (global.night == 0) {
						__background_set((11 << 0), 0, -0.2);
					}
			}
			global.instance_deactivate = 1;
			instance_destroy();
		}
	} else if (room == rm_title) {
			event_user(5);
	}
} else if (room == rm_title) {
	event_user(5);
}