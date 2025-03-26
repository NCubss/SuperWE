imdead = instance_create((x + 8), y, obj_enemy_dead)
imdead.girar = 1
imdead.image_speed = 0
switch global.style
{
    case 0:
        imdead.sprite_index = spr_SMB_billblaster_dead
        break
    case 1:
        imdead.sprite_index = spr_SMB3_billblaster_dead
        break
    case 2:
        imdead.sprite_index = spr_bulletbill_base_deads
        break
    case 3:
        imdead.sprite_index = spr_NSMBU_billblaster_dead
        break
}

if (global.style < 2)
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        imdead.image_index = 1
    else
        imdead.image_index = 0
}
if (other.hspeed == 0)
{
    if ((other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
        imdead.hspeed = 1
    else if ((other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
        imdead.hspeed = -1
}
else if (other.hspeed > 0)
    imdead.hspeed = 1
else if (other.hspeed < 0)
    imdead.hspeed = -1
instance_destroy()

