imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.direct = direct
if (global.style == 3)
{
    imdead.sprite_index = spr_NSMBU_rockywrench_dead
    imdead.image_speed = 0.5
}
else
{
    imdead.sprite_index = spr_rocky_deads
    imdead.image_index = global.style
}
if (global.style == 3)
{
    if (dead_h == 0)
    {
        if (other.hspeed == 0)
        {
            if ((other.bbox_left + (other.bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
                imdead.hspeed = 1
            else if ((other.bbox_left + (other.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
                imdead.hspeed = -1
        }
        else if (other.hspeed > 0)
            imdead.hspeed = 1
        else
            imdead.hspeed = -1
    }
    else
    {
        imdead.hspeed = 0
        with (instance_create(imdead.x, (imdead.y - 5), obj_smoke))
            sprite_index = spr_spinthump
    }
}
instance_destroy()

