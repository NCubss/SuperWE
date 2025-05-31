// Initialize (some of) the global variables
init_globals();

draw_set_circle_precision(32);
init_shockwave();
audio_master_gain(0.25);
var gamepad;
randomise();

global.game = {
	name: "SuperWE",
	// This value is changed if this is a playtest in GameMaker
	version: "",
	author: "NCubs"
}

if (GM_build_type == "run") {
	global.game.version = $"Dev {GM_build_date}"
}

// Set the window's title
window_set_caption(global.game.name);

// Master volume
global.audiomaster = 0.25;

mobile_keys = [];
//airship = 0;
port_y = 0;
prev_hspeeds = 0;
global.level_g = 0;
global.init_DSM = 0;
global.vsync = 1;
global.DSM_2 = 0;
global.hardness = "";
global.mondi = 7;

// Enable / disable processing player step
global.pp = 0;
global.level_group = 0;
global.levelguardabot = "";
global.nm_play = 0;
global.level_id = "";
global.level_name = "";
global.intentos = "";
global.number_like = 0;
global.level_like = 3;
global.style_course = 0;
global.map_consult = -4;
global.type_consult = -4;
global.id_CR = 0;
global.liked_CR = 0;
global.complete_CR = 0;
global.pages_nm = 1;
global.tabvalue = 2;
global.ms_check = 0;
global.nrecord = 0;
global.record = 0;
global.warp_item = -4;
global.warp_x = 0;
global.warp_y = 0;
global.hd = 1;
global.meteoritos = 0;
global.shadows = 0;
global.user_gb = "";
global.jump = 0;
global.etiq_nm = "";
mode = 0;
done = 0;
ready = 0;
s = 2;
global.sounds_level = 0;
global.powerup_editor = 0;
global.star_flash = 0;
global.scroll_perc = 0;
global.sonidos = 1;
global.completed_levels = 0;
global.lives = 0;
global.my1 = 0;
global.my2 = 0;
global.my3 = -1;
global.my4 = -1;
global.my5 = 0;
global.my6 = -1;
global.my7 = -1;
global.desc = "";
global.ss = 0;
global.name_user = "";
global.name_users = "";
global.last_level = "";
global.condiciones = 0;
global.condiciones_clear = 0;
global.condiciones_type = 0;
global.condiciones_object = 0;
global.condiciones_count = 0;
global.controller = 1;
vk_movimientos = 0;
vk_saltos = 0;
if (os_type == os_android) {
	modo_android = 1;
	sleep_tm = 4;
} else {
	modo_android = 0;
	sleep_tm = 10;
}
global.save_changes = 0;
global.controles_tactiles = 1;
global.sm4j_style = 0;
global.effect_star = 1;
global.language = 0;
global.night = 0;
global.entorno = "ground";
global.style = 2;
global.dsm = 0;
global.difficultyd = -1;
global.difficulty = 0;
if (global.style == 0) {
	global.fade = 0.3;
} else if (global.style == 1) {
    global.fade = 0.5;
} else {
    global.fade = 0.25;
}
opacidad = 0.5;
global.key_br = 0;
back = -1;
message = "";
port_y = 0;
global.showfps = 0;
global.gw = 384;
global.gh = 216;
global.font_google_legacy = font_add("font_as.ttf", 12, 0, 0, 32, 128);
global.font_google = font_add("fontcjk.ttf", 12, 0, 0, 32, 128);
global.levelmusic = snd_gameover;
global.drez = "2559F35097-2021"; // This is the HMAC used when saving a level
global.ctor = string("{0} | {1}", date_get_year(GM_build_date), global.game.author);
global.ver = global.game.version;
global.descver = string("{0} | {1} | Built {2} | Made by {3}", global.game.name, global.game.version, date_date_string(GM_build_date), global.game.author);
global.wdigits_SMB = font_add_sprite_ext(spr_SMB_numbers, "0123456789", 0, 0);
global.wdigits_SMB3 = font_add_sprite_ext(spr_SMB3_numbers, "0123456789", 0, 0);
global.wdigits = font_add_sprite_ext(spr_numbers, "0123456789", 0, 0);
global.wdigits_NSMBU = font_add_sprite_ext(spr_NSMBU_numbers, "0123456789", 0, 0);
global.wdigits_NSMBU_points = font_add_sprite_ext(spr_NSMBU_numbers_points, "0123456789", 0, 0);
global.big_digits = font_add_sprite_ext(spr_numbers_big, "0123456789", 0, 0);
global.time_digits = font_add_sprite_ext(spr_numbers_time, "0123456789", 0, 0);
global.time_digits_white = font_add_sprite_ext(spr_numbers_time_white, "0123456789", 0, 0);
global.numbers_lives = font_add_sprite_ext(spr_numbers_lives, "0123456789", 0, 0);
global.fnt_big = font_add_sprite_ext(spr_start_font, " AÀÁÃÄBCÇDEÈÉẼËFGHIÌÍĨÏJKLMNÑOÒÓÕÖPQRSTUÙÚŨÜVWXYZßaàáãäbcçdeèéẽëfghiìíĩïjklmnñoòóõöpqrstuùúũüvwxyz0123456789.!?-&'\"", true, -1);
directorio_temp = "";
if (os_type == os_android) {
	global.directorio_temp = getDire1("SuperWE");
	global.directorio = (global.directorio_temp + "/");
	global.directorio_temporal = (working_directory + "/temp/");
} else {
	global.directorio_temp = (working_directory + "Niveles\\");
	global.directorio = (working_directory + "Niveles\\");
	global.directorio_temporal = (working_directory + "temp\\");
}
gamepad = gamepad_is_connected(0);
leftstick[0] = 0;
leftstick[1] = 0;
leftstick[2] = 0;
leftstick[3] = 0;
global.data[0] = "";
global.data[1] = "";
global.data[2] = "";
global.data[3] = "";
global.subpixels = true;
for (var _gp = 0; _gp < 5; _gp++) {
    gp_stick[_gp][0] = 0
    gp_stick[_gp][1] = 0
    gp_stick[_gp][2] = 0
    gp_stick[_gp][3] = 0
}
application_surface_draw_enable(false);

// Course World
global.nm = {
	api_url: "http://103.195.100.145:35566",
	api_key: "ponkis16122",
	username: "",
	password: "",
	session: "",
	discord_id: ""
}