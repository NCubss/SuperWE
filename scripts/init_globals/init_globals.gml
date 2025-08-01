/**
	@description	Initializes some of the global variables that are used throughout the game.
	@returns		{undefined}
*/
function init_globals() {
	
	#region // World-related
	global.in_world_editor = false;
	global.world_data = [[]];
	// -1 if unused
	global.world_lives = -1;
	global.world_mario_x = 0;
	global.world_mario_y = 0;
	// Path to the loaded world file (undefined if none)
	global.world_path = undefined;
	global.world_settings = {
		name: "Fart idk",
		description: "i like farting tbh"
	};
	// Header used when saving a world file
	global.world_header = 
		"          SuperWE Super World File          \n"
	  +	"============================================\n"
	  +	"This file SHOULD NOT be modified externally!\n"
	  +	"Otherwise, unintended behavior can arise >:(\n"
	  + "--------------------------------------------\n"
	;
	#endregion
	
	// Used for animating the hover effect in some scenarios
	global.anim = 0;
	
	// Whether copy mode is enabled in the editor
	global.copy_mode = false;
	
	global.ms = 0
	global.cull_previous_x = x
	global.cull_previous_y = y
	global.count_cull = 5
	global.tag1_pub = ""
	global.tag2_pub = ""
	global.author = ""
	global.dead_type = 0
	global.verpub = 0
	global.press_load = 0
	global.modojuego = 0
	global.music_effect = -4
	global.soplete_fire = 0
	global.koopa = 0
	global.goomba = 0
	global.cheepcheep = 0
	global.buzzy = 0
	global.spiny = 0
	global.plant = 0
	global.bobomb = 0
	global.floruga = 0
	global.hen_mushroom = 0
	global.onoff = 0
	global.pblock = 0
	global.spring = 0
	global.estalactita = 0
	global.yoshi_egg = 0
	global.clown = 0
	global.noteblock = 0
	global.tuberia = 0
	global.cannon = 0
	global.lava_lift = 0
	global.door = 0
	global.semisolid_platform = 0
	global.mushroom_platform = 0
	global.platform = 0
	global.coin10 = 0
	global.bulletbill_base = 0
	global.icecoin = 0
	global.hammerbro = 0
	global.cintas = 0
	global.soplete = 0
	global.foo = 0
	global.chomp = 0
	global.grrrol = 0
	global.smb2mush = 0
	global.billbanzai = 0
	global.boospinning = 0
	global.spiketop = 0
	global.ubsi = 0
	global.brothers = 0
	global.risas = 0
	global.serpentina = 0
	global.uhh = 0
	global.bocina = 0
	global.bombilla = 0
	global.nota = 0
	global.fuegos = 0
	global.gato = 0
	global.n64 = 0
	global.hongo_e = 0
	global.bowser = 0
	global.n64_music = 0
	global.boss_music = 0
	global.bowser_obj = 0
	global.bonus_music = 0
	global.bonus_obj = id
	global.ef_repeat = 0
	global.etiqueta1 = -1
	global.etiqueta2 = -1
	global.etiqueta1_temp = -1
	global.etiqueta2_temp = -1
	global.instance_deactivate = 1
	global.play = 0
	global.play_lock = 0
	global.editor_activity = 1
	global.editor_lock = 0
	global.resource_create = 0
	global.resource_move = 0
	global.select_resource = 0
	global.resource_block = 0
	global.player_trail = 0
	global.water_speed = 0.2
	global.cursor = 0
	global.cursor_draw = 1
	global.theme = "ground"
	global.autoscroll = 0
	global.timer = 0
	global.world = 1
	global.coins = 0
	global.pink_coins_total = 0
	global.pink_coins = 0
	global.pink_coins_draw = 0
	global.pinkcoins_count = 0
	global.pink_coin1_x = 0
	global.pink_coin1_y = 0
	global.pink_coin2_x = 0
	global.pink_coin2_y = 0
	global.pink_coin3_x = 0
	global.pink_coin3_y = 0
	global.pink_coin4_x = 0
	global.pink_coin4_y = 0
	global.pink_coin5_x = 0
	global.pink_coin5_y = 0
	global.pink_coin6_x = 0
	global.pink_coin6_y = 0
	global.pink_coin7_x = 0
	global.pink_coin7_y = 0
	global.pink_coin8_x = 0
	global.pink_coin8_y = 0
	global.pink_coin9_x = 0
	global.pink_coin9_y = 0
	global.pink_coin10_x = 0
	global.pink_coin10_y = 0
	global.liveleves = 0
	score = 0
	global.mariostart = 0
	global.clear = 0
	global.powerup = 0
	global.reserveitem = 0
	global.keys = 0
    global.carrieditem = noone
	global.checkpoint = -4
	global.checkpoint_x = 0
	global.checkpoint_y = 0
	global.card[0] = -1
	global.card[1] = -1
	global.card[2] = -1
	global.checkpointroom = -4
	global.palacered = 0
	global.palaceblue = 0
	global.palaceyellow = 0
	global.palacegreen = 0
	global.postchange = -1
	global.postx = 0
	global.posty = 0
	global.yoshi = 0
	global.ycolor = 0
	global.died = 0
	global.cardscore = 80000
	global.pswitch = 0
	global.onoffblock = 0
	global.pipetype = 0
	global.cooldown = 0
	global.minutos = 0
	global.keymod = 0 
	global.postnivel = 0
	global.desc = ""
	for (var i = 0; i < 16; i++)
	    global.inventory[i] = 0
}
