/// @description It's a me, Mario!

// State macros
#macro ms_standing 0
#macro ms_walking 1
#macro ms_jumping 2
#macro ms_climbing 3
#macro ms_wallclimb 4

// Set to idle sprite
sprite_index = spr_mario_idle();
pmeter = 0;
canjump = 1;

// Pick the appropriate mask
switch (global.powerup) {
	case cs_small:
		mask_index = spr_smallmask;
		break;
	case cs_link:
		mask_index = spr_smallmask;
		break;
	case cs_mega:
		mask_index = spr_megamask;
		break;
	case cs_pballoon:
		mask_index = spr_smallmask;
		break;
	default:
		mask_index = spr_bigmask;
}

// create cape object if we are cape mario
if (global.powerup == cs_hero && !instance_exists(obj_cap_mario)) {
	with (instance_create(x, y, obj_cap_mario)) {
		cap_invisible = 0;
		visible = true;
	}
}

// cerate pballoon object if we are pballoon mario
if (global.powerup == cs_pballoon && (!instance_exists(obj_mario_pballon))) {
	with (instance_create(x, y + 20, obj_mario_pballon)) {
		visible = true;
	}
}

if (
	instance_exists(obj_levelmanager)
	&& obj_levelmanager.fallow_mario == 0
	&& (
		obj_levelmanager.camlock == 0
		|| (obj_levelmanager.camlock == 1 && obj_levelmanager.y < 216)
	)
) {
	obj_levelmanager.y = y + 32;
}
link_transform = 0;
dash_atack = 0;
dash_cont = 0;
down_atack = 0;
down_cont = 0;
arrow = 0;
arrow_ready = 0;
direct_turn = 1;
yview = y + 32;
camera_jump = 0;
x_speed = 0;
boostme = 0;
blend_star = c_white;
flashAlpha = 1;
speed_cinta = 0;
helice_fly = 0;
helice_fly_temp = 0;
jump_loaded = 0;
airspin = 0;
airspin_count = 0;
groundpount = 0;
gp_limit = 0;
jump_type = 0;
platform_m = 0;
inclown = 0;
canhang = 0;
canturn = 0;
enable_gravity = 1;
disablegrav = 0;
ygrav = 1;
mario_index = "walk";
keys = 0;
shake = 0;
stuntime = 0;

// Is Mario on a slippery surface?
snow = 0;

// Mario's current state (macros ms_*)
state = 0;

// Mario's direction
// -1: Left, 1: Right
direct = 1;

// Whether Mario is holding something
// 0: Nothing, 1: Overhead, 2: On Front 3: Can't Hold Stuff
holding = 0;

turning = 0;
fly_cap = 0;
// fly mode
modo_vuelo = 0;
canfly = 0;
fly_high = 3;
helmet = 0;

//Variable jump state
//0: Can Jump, 1: Variable Jump, 2: No Variable Jump
jumpnow = 0;

s_hen = 0;

//Is Mario skidding?
skidnow = 0;

//Is Mario swimming?
isswim = 0;

new_swim = 0;
isswimhold = 0;

//Is Mario ducking?
isduck = 0;

isduckhold = 0;
isup = 0;
isuphold = 0;

//Is Mario invincible?
//0: Normal, 1: Invincible, -1: Phase through

invincible = 0;

//Is Mario smacking a net?
netsmack = 0;

//Is Mario kicking something?
iamkicking = 0;

//Is Mario spin jumping?
stompstyle = 0;

//Is Mario's controls disabled?
disablecontrols = 0;

//Is carrot/bee Mario floating?
isfloating = 0;

//Is the float sound effect playing?
floatnow = 0;

//How much longer can bee/crown Mario fly/float?
powerupfly = 0;

//Did Mario wall jump?
walljump = 0;

//Did squirrel Mario propel upwards yet?
squirrelpropel = 0;

arcon_slide = 0;

//Did Mario double jump?
doublejump = 0;

squirrel_fly = 0;

//Is Mario firing a projectile?
firing = 0;

caped = 0;

//Is leaf/tanooki Mario wiggling his tail?
wiggle = 0;

//What direction is frog/penguin Mario swimming in?
swimtype = 0;

noisy = 0;

//Is Mario flashing?
isflashing = 0;

//How many consecutive stomps has Mario made?
hitpoint = 0;

//State delay variable
statedelay = 0;

//Can Mario break a block?
can_break_block = 0;

frog_jump = 0;
flag = 0;
conveyor_first_col = false;
disable_doublejump = 0;
//Handles Mario's skid smoke
alarm[5] = 8;

//Handles Mario's underwater bubbles
alarm[9] = 24 + random(96);