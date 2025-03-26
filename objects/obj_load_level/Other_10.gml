if (global.levelguardabot != "") {
	if file_exists((global.directorio + global.levelguardabot)) {
		var worlds = load_b64_json((global.directorio + global.levelguardabot));
		show_debug_message(worlds);
		var _wrapper = worlds.MAIN;
		var _list = _wrapper.AJUSTES;
		var _map = _list[0];
		if (global.my1 != _map.user) {
			delete _wrapper;
			scr_toast(1, lang().messages.negative.load_failed);
			if instance_exists(obj_levelmanager) {
				obj_levelmanager.leveltime = 300;
			}
			event_user(1);
			event_user(2);
			instance_destroy();
			exit;
		}
		global.save_changes = global.levelguardabot;
		global.last_level = global.levelguardabot;
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
			global.theme = "ground"
		}
		global.night = _map.modo_noche;
		if (global.night != 0 && global.night != 1) {
			global.night = 0
		}
		if (instance_exists(obj_levelmanager)) {
			obj_levelmanager.leveltime = _map.cronometro;
			if (obj_levelmanager.leveltime > 500 || obj_levelmanager.leveltime < 10) {
				obj_levelmanager.leveltime = 300;
			}
		}
		global.autoscroll = _map.autoavance;
		if (global.autoscroll > 3 || global.autoscroll < 0) {
			global.autoscroll = 0
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
		if instance_exists(obj_card_bout) {
			obj_card_bout.pos_y = _map.water_level;
			obj_card_bout.pos_y_limit = _map.water_level_limit;
			global.water_speed = _map.water_level_speed;
			if (global.water_speed != 0.2 && global.water_speed != 0.5 && global.water_speed != 0.8) {
				global.water_speed = 0.2
			}
		}
		global.etiqueta1_temp = _map.etiqueta1;
		global.etiqueta2_temp = _map.etiqueta2;
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
			global.sounds_level = 0
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
		event_user(1);
		event_user(2);
		var _list2 = _wrapper.SUELO;
		show_debug_message("suelo");
		for (var i = 0; i < array_length(_list2); i++) {
			var _map2 = _list2[i];
			var o_ground = instance_create(0, 0, obj_ground);
			o_ground.x = _map2.x_pos;
			o_ground.y = _map2.y_pos;
			o_ground.x_draw = _map2.x_pos;
			o_ground.y_draw = _map2.y_pos;
			o_ground.image_index = _map2.index;
			show_debug_message(string(i) + " done");
		}
		var _list3 = _wrapper.NIVEL;
		show_debug_message("nivel");
		for (var i = 0; i < array_length(_list3); i++) {
			var _map3 = _list3[i];
			var object = asset_get_index(_map3.object);
			if (
				object != obj_tuberia_res
				&& object != obj_cannon_res
				&& object != obj_cannon_red_res
				&& object != obj_semisolid_platform1
				&& object != obj_mushroom_platform_res
				&& object != obj_vine_res
				&& object != obj_pokey_res
				&& object != obj_bullebill_base_red_res
				&& object != obj_bullebill_base_res
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
			show_debug_message(string(i) + " done");
		}
		var _list4 = _wrapper.TUBERIAS;
		show_debug_message("tuberias");
		for (var i = 0; i < array_length(_list4); i++) {
			var _map4 = _list4[i];
			var o_objecto = instance_create(0, 0, obj_tuberia_res)
			o_objecto.x = _map4.x_pos;
			o_objecto.y = _map4.y_pos;
			o_objecto.x_draw = _map4.x_pos;
			o_objecto.y_draw = _map4.y_pos;
			o_objecto.size = _map4.size;
			o_objecto.R = o_objecto.rotacion = _map4.rotacion;
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
			show_debug_message(string(i) + " done");
		}
		var _list5 = _wrapper.DECORACION;
		show_debug_message("decoracion");
		for (var i = 0; i < array_length(_list5); i++) {
			var _map5 = _list5[i];
			var object = asset_get_index(_map5.object);
			var sprite = asset_get_index(_map5.sprite);
			var o_objecto = instance_create(0, 0, object);
			o_objecto.x = _map5.x_pos;
			o_objecto.y = _map5.y_pos;
			o_objecto.sprite_index = sprite;
			o_objecto.image_index = _map5.index;
			show_debug_message(string(i) + " done");
		}
		var _list6 = _wrapper.CANNON;
		show_debug_message("cannon");
		for (var i = 0; i < array_length(_list6); i++) {
			var _map6 = _list6[i];
			var object = asset_get_index(_map6.object)
			var o_objecto = instance_create(0, 0, object)
			o_objecto.x = _map6.x_pos;
			o_objecto.y =_map6.y_pos;
			o_objecto.x_draw = _map6.x_pos;
			o_objecto.y_draw = _map6.y_pos;
			o_objecto.direct = _map6.direct;
			o_objecto.d = _map6.down;
			o_objecto.u = _map6.up;
			o_objecto.l = _map6.left;
			o_objecto.r = _map6.right;
			show_debug_message(string(i) + " done");
		}
		var _list7 = _wrapper.PLATAFORMAS;
		show_debug_message("plataformas");
		for (var i = 0; i < array_length(_list7); i++) {
			var _map7 = _list7[i];
			var object = asset_get_index(_map7.object);
			var o_objecto = instance_create(0, 0, object);
			o_objecto.x = _map7.x_pos;
			o_objecto.y = _map7.y_pos;
			o_objecto.x_draw = _map7.x_pos;
			o_objecto.y_draw = _map7.x_pos;
			o_objecto.size_x = _map7.width;
			o_objecto.size_y = _map7.height;
			o_objecto.sprite_index = asset_get_index(_map7.sprite);
			o_objecto.color = _map7.color;
			o_objecto.depth = _map7.depth;
			o_objecto.direct_t = _map7.direct_t;
			o_objecto.wings = _map7.wings;
			show_debug_message(string(i) + " done");
		}
		var _list8 = _wrapper.PUERTAS;
		show_debug_message("puertas");
		for (var i = 0; i < array_length(_list8); i++)
		{
			var _map8 = _list8[i];
			var object = asset_get_index(_map8.object);
			if (
				(object == obj_door_res && limit_door_1 < 4)
				|| (object == obj_door_switch_res && limit_door_2 < 4)
				|| (object == obj_door_lock_res && limit_door_3 < 4)
			) {
				var o_objecto = instance_create(0, 0, object);
				o_objecto.x = _map8.x_pos;
				o_objecto.y = _map8.y_pos;
				o_objecto.x_draw = _map8.x_pos;
				o_objecto.y_draw = _map8.y_pos;
				o_objecto.door_x = _map8.door_x;
				o_objecto.door_y = _map8.door_y;
				if (object == obj_door_res) {
					limit_door_1++;
				} else if (object == 590) {
					limit_door_2++;
				} else {
					limit_door_3++;
				}
			}
			show_debug_message(string(i) + " done");
		}
		delete _wrapper;
		instance_destroy();
	} else {
		if instance_exists(obj_levelmanager) {
			obj_levelmanager.leveltime = 300;
		}
		event_user(1);
		event_user(2);
		instance_destroy();
	}
} else {
	if instance_exists(obj_levelmanager) {
		obj_levelmanager.leveltime = 300;
	}
	event_user(1);
	event_user(2);
	instance_destroy();
}