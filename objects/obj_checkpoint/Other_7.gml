if (global.style == 0)
{
    if (sprite_index == spr_SMB_checkpoint_ready)
    {
        sprite_index = spr_SMB_checkpoint
        image_speed = 0
        image_index = global.player
    }
}
else if (global.style == 1)
{
    if (sprite_index == spr_SMB3_checkpoint_ready)
    {
        sprite_index = spr_SMB3_checkpoint
        image_speed = 0
        image_index = global.player
    }
}
else if (global.style == 2)
{
    switch sprite_index
    {
        case spr_flag_move:
            sprite_index = spr_flag_mario
            break
        case spr_flag_move_luigi:
            sprite_index = spr_flag_luigi
            break
        case spr_flag_move_toad:
            sprite_index = spr_flag_toad
            break
        case spr_flag_move_toadette:
            sprite_index = spr_flag_toadette
            break
    }

}
else if (global.style == 3)
{
    if (sprite_index == spr_NSMBU_checkpoint_move)
    {
        sprite_index = spr_NSMBU_checkpoint_mario
        image_speed = 0.5
    }
}

