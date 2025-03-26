event_inherited()
switch global.style
{
    case 0:
        s_walk = spr_SMB_bowserjr_walk
        s_fire = spr_SMB_bowserjr_fire
        s_jump = spr_SMB_bowserjr_groundpound
        s_groundpount = spr_SMB_bowserjr_groundpound
        s_hammer = spr_SMB_bowserjr_walk
        sprite_wings = spr_SMB_wings
        wings_x = 12
        break
    case 1:
        sprite_index = spr_SMB3_bowserjr_walk
        s_walk = spr_SMB3_bowserjr_walk
        s_fire = spr_SMB3_bowserjr_fire
        s_jump = spr_SMB3_bowserjr_jump
        s_groundpount = spr_SMB3_bowserjr_groundpound
        s_hammer = spr_SMB3_bowserjr_hammer
        sprite_wings = spr_SMB3_wings
        wings_x = 12
        break
    case 2:
        sprite_index = spr_SMW_bowserjr_walk
        s_walk = spr_SMW_bowserjr_walk
        s_fire = spr_SMW_bowserjr_fire
        s_jump = spr_SMW_bowserjr_jump
        s_groundpount = spr_SMW_bowserjr_groundpound
        s_hammer = spr_SMW_bowserjr_hammer
        sprite_wings = spr_wings
        wings_x = 14
        break
}

state = 1
groundpount = 0
groundpount_cont = 0
groundpount_jump = 0
groundpount_wings = 0
fire = 0
fire_anim = 0
cooldown = 0
swimming = 0
prevhspeed = 0
image_speed = 0.1
paracaidas = 0
firehitpoints = 5
key = 0
paracaidas = 0
hitpoints = 3
alarm[10] = 2

