if (other.vspeed < 0 && other.bbox_top > (bbox_bottom + other.vspeed))
{
    with (instance_create(x, y, obj_block))
    {
        if (global.style == 1)
            sprite_index = spr_SMB3_block_hidden
        else if (global.style == 2)
            sprite_index = spr_qblock_empty
        ready = 1
        vspeed = -2
        alarm[0] = 4
        sprout = other.sprout
        event_user(0)
    }
    instance_destroy()
}

