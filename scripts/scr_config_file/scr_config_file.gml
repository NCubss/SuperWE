
/**
	@description	Loads the config file (SuperWE.cfg). Will reset the config file if data is deemed invalid, or if it doesn't exist.
	@self			obj_coordinator
	@returns		{undefined}
*/
function load_config() {
	if (file_exists("SuperWE.cfg")) {
		try {
			var file = buffer_load("SuperWE.cfg");
			var contents = buffer_read(file, buffer_text);
			buffer_delete(file);
			var data = json_parse(contents);
			fullscreen = bool(data.fullscreen);
			filter = real(data.window_scale);
			global.vsync = bool(data.vsync);
			global.lanzar_agarrar = real(data.controls.run);
			global.saltar = real(data.controls.jump);
			global.saltar_spin = real(data.controls.spinjump);
			global.pause = real(data.controls.pause);
			global.arriba = real(data.controls.up);
			global.abajo = real(data.controls.down);
			global.izquierda = real(data.controls.left);
			global.derecha = real(data.controls.right);
			global.player = real(data.player);
			global.last_level = string(data.last_level);
			global.my1 = data.username;
			global.language = real(data.language);
			global.w_scale = real(data.window_scale);
			global.audiomaster = real(data.volume);
			global.effect_star = bool(data.effects);
			global.hd = bool(data.hd);
			global.controller = bool(data.controller);
			global.shadows = bool(data.shadows);
			if (array_contains(data.experimental, "SmallCursor")) {
				global.cursor_scale = 0.5;
			} else {
				global.cursor.scale = 1;
			}
			audio_master_gain(global.audiomaster);
		} catch (e) {
			show_debug_message("===");
			show_debug_message("Config File Error!");
			show_debug_message(e.message);
			show_debug_message("---");
			show_debug_message(e.longMessage);
			show_debug_message("===");
			reset_settings();
			save_config();
		}
	} else {
		reset_settings();
		save_config();
	}
}

/**
	@description	Resets the global settings values to the default ones.
	@returns		{undefined}
*/
function reset_settings() {
	with (obj_coordinator) {
		fullscreen = false;
		filter = 1;
	}
	with (global) {
		w_scale = 1;
		vsync = true;
		#region controls
		lanzar_agarrar = vk_left;
		saltar = vk_up;
		saltar_spin = vk_down;
		pause = vk_enter;
		arriba = ord("W");
		abajo = ord("S");
		izquierda = ord("A");
		derecha = ord("D");
		#endregion
		player = Player.MARIO;
		last_level = "";
		my1 = 0;
		language = Language.ENGLISH;
		audiomaster = 0.25;
		effect_star = true;
		hd = true;
		controller = false;
		cursor_scale = 1;
	}
}

/**
	@description	Saves the current settings to the  config file (SuperWE.cfg).
	@returns		{undefined}
*/
function save_config() {
	var file = file_text_open_write("SuperWE.cfg");
	var experimental = [];
	if (global.cursor_scale != 1) array_push(experimental, "SmallCursor");
	file_text_write_string(file, json_stringify({
		fullscreen: obj_coordinator.fullscreen,
		window_scale: global.w_scale,
		vsync: global.vsync,
		controls: {
			run: global.lanzar_agarrar,
			jump: global.saltar,
			spinjump: global.saltar_spin,
			pause: global.pause,
			up: global.arriba,
			down: global.abajo,
			left: global.izquierda,
			right: global.derecha
		},
		player: global.player,
		last_level: global.last_level,
		username: global.my1,
		language: global.language,
		volume: global.audiomaster,
		effects: global.effect_star,
		hd: global.hd,
		controller: global.controller,
		shadows: global.shadows,
		experimental
	}, true));
	file_text_close(file);
}