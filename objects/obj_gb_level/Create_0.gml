var worlds, _wrapper, _list, _map;
instance_create((camera_get_view_x(view_get_camera(0)) + 184), (camera_get_view_y(view_get_camera(0)) + 105), obj_bt_gb_play)
instance_create((camera_get_view_x(view_get_camera(0)) + 184), (camera_get_view_y(view_get_camera(0)) + 82), obj_bt_gb_edit)
instance_create((camera_get_view_x(view_get_camera(0)) + 297), (camera_get_view_y(view_get_camera(0)) + 138), obj_bt_gb_delete)
instance_create((camera_get_view_x(view_get_camera(0)) + 330), (camera_get_view_y(view_get_camera(0)) + 54), obj_bt_gb_close)
instance_create_depth((camera_get_view_x(view_get_camera(0)) + 184), (camera_get_view_y(view_get_camera(0)) + 151),-7, obj_bt_rename)
c_etiquetas = make_colour_rgb(110, 119, 126)
user = 0
fecha = 0
hora = 0;
entorno = 0;
modo_noche = 0;
entorno_image = 0;
index_stamp = 0;
text_draw[0] = lang().tags.standard;
text_draw[1] = lang().tags.puzzle;
text_draw[2] = lang().tags.speedrun;
text_draw[3] = lang().tags.autoscroll;
text_draw[4] = lang().tags.auto;
text_draw[5] = lang().tags.short;
text_draw[6] = lang().tags.multiplayer;
text_draw[7] = lang().tags.themed;
text_draw[8] = lang().tags.music;
text_draw[9] = lang().tags.art;
text_draw[10] = lang().tags.technical;
text_draw[11] = lang().tags.shooter;
text_draw[12] = lang().tags.boss;
text_draw[13] = lang().tags.singleplayer;
text_draw[14] = "Link";
text_draw[15] = "---";
text[0] = "Tradicional";
text[1] = "Puzles";
text[2] = "Contrarreloj";
text[3] = "Autoavance";
text[4] = "Automatismos";
text[5] = "Corto pero intenso";
text[6] = "Competitivo";
text[7] = "Tematico";
text[8] = "Música";
text[9] = "Artístico";
text[10] = "Habilidad";
text[11] = "Disparos";
text[12] = "Contra jefes";
text[13] = "En solitario";
text[14] = "Link";
text[15] = "---";
// This code now uses structs instead of DS maps
if file_exists((global.directorio + global.levelguardabot)) {
	worlds = load_b64_json((global.directorio + global.levelguardabot));
	if (worlds == 0) {
		scr_toast(1, lang().messages.negative.read_failed);
		global.levelguardabot = "";
		global.style = 2;
		global.condiciones = 0;
		global.condiciones_type = 0;
		global.condiciones_object = 0;
		global.condiciones_count = 0;
		instance_destroy();
		exit;
	}
	try {
		_wrapper = worlds.MAIN;
		_list = _wrapper.AJUSTES;
		_map = _list[0];
	} catch (_) {
		scr_toast(1, string_hash_to_newline("Some random error occurred and#you damn know I have no fucking#idea what's happened"));
		global.levelguardabot = "";
		global.style = 2;
		global.condiciones = 0;
		global.condiciones_type = 0;
		global.condiciones_object = 0;
		global.condiciones_count = 0;
		instance_destroy();
		exit;
	}
	global.style = _map.apariencia;
	global.etiqueta1_temp = _map.etiqueta1;
	global.etiqueta2_temp = _map.etiqueta2;
	index_stamp = global.etiqueta1_temp;
	if (global.etiqueta1_temp == -1) {
		global.etiqueta1_temp = 15
		index_stamp = global.etiqueta2_temp;
	}
	if (global.etiqueta2_temp == -1) {
		global.etiqueta2_temp = 15;
	}
	user = _map.user;
	fecha = _map.date;
	hora = _map.time;
	entorno = _map.entorno;
	modo_noche = _map.modo_noche;
	switch (entorno) {
		case "ground":
			entorno_image = 0;
			break;
		case "underground":
			entorno_image = 1;
			break;
		case "underwater":
			entorno_image = 2;
			break;
		case "desert":
			entorno_image = 3;
			break;
		case "snow":
			entorno_image = 4;
			break;
		case "sky":
			entorno_image = 5;
			break;
		case "forest":
			entorno_image = 6;
			break;
		case "ghost":
			entorno_image = 7;
			break;
		case "airship":
			entorno_image = 8;
			break;
		case "castle":
			entorno_image = 9;
			break;
		case "fall":
			entorno_image = 10;
			break;
		case "beach":
			entorno_image = 11;
			break;
		case "mountain":
			entorno_image = 12+modo_noche;
			break;
		default:
			entorno_image = 0;
	}
	global.condiciones = _map.condiciones;
	global.condiciones_type = _map.condiciones_type;
	global.condiciones_object = _map.condiciones_object;
	global.condiciones_count = _map.condiciones_count;
	if (struct_exists(_map, "description")) {
		global.desc = _map.description;
	} else {
		global.desc = lang().coursebot.no_description;
	}
	global.user_gb = user;
	delete _wrapper;
	global.tag1_pub = text[global.etiqueta1_temp];
	global.tag2_pub = text[global.etiqueta2_temp];
}
