imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
imdead.direct = direct
switch global.style
{
    case 0:
        imdead.sprite_index = spr_SMB_bulletbill_dead
        break
    case 1:
        imdead.sprite_index = spr_SMB3_bulletbill_dead
        break
    case 2:
        imdead.sprite_index = spr_bill_deads
        break
    case 3:
        imdead.sprite_index = spr_NSMBU_bulletbill_dead
        break
}

imdead.image_speed = 0
if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    imdead.image_index = 1
else
    imdead.image_index = 0
if (dead_h == 0)
{
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
}
else
{
    imdead.hspeed = 0
    with (instance_create(imdead.x, (imdead.y - 5), obj_smoke))
        sprite_index = spr_spinthump
}
instance_destroy()

