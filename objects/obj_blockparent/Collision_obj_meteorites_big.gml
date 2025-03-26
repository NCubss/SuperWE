if (global.style == 0 or global.style == 1)
        audio_play_sound(snd_SMB3_break, 0, false)
else
        audio_play_sound(snd_break, 0, false)
instance_destroy()
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        if (global.style == 0)
        {
        sprite_index = spr_SMB_shard
        }
        else if (global.style == 1)
        {
        sprite_index = spr_SMB3_shard
        }
        else if (global.style == 2)
        {
        sprite_index = spr_shard
        }
        else if (global.style == 3)
        {
        sprite_index = spr_NSMBU_shard
        }
        motion_set(45, 6)
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        if (global.style == 0)
        {
        sprite_index = spr_SMB_shard
        }
        else if (global.style == 1)
        {
        sprite_index = spr_SMB3_shard
        }
        else if (global.style == 2)
        {
        sprite_index = spr_shard
        }
        else if (global.style == 3)
        {
        sprite_index = spr_NSMBU_shard
        }
        motion_set(60, 6)
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        if (global.style == 0)
        {
        sprite_index = spr_SMB_shard
        }
        else if (global.style == 1)
        {
        sprite_index = spr_SMB3_shard
        }
        else if (global.style == 2)
        {
        sprite_index = spr_shard
        }
        else if (global.style == 3)
        {
        sprite_index = spr_NSMBU_shard
        }
        motion_set(120, 6)
    }
    with (instance_create((x + 8), (y + 8), obj_shard))
    {
        if (global.style == 0)
        {
        sprite_index = spr_SMB_shard
        }
        else if (global.style == 1)
        {
        sprite_index = spr_SMB3_shard
        }
        else if (global.style == 2)
        {
        sprite_index = spr_shard
        }
        else if (global.style == 3)
        {
        sprite_index = spr_NSMBU_shard
        }
        motion_set(135, 6)
    }