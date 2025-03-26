imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.sprite_index = spr_muncher_deads
imdead.girar = 1
if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    var dark = 1
else
    dark = 0
switch global.style
{
    case 0:
        if (dark == 1)
            imdead.image_index = 1
        else
            imdead.image_index = 0
        break
    case 1:
        if (dark == 1)
            imdead.image_index = 3
        else
            imdead.image_index = 2
        break
    case 2:
        imdead.image_index = 4
        break
    case 3:
        imdead.image_index = 5
        break
}

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
