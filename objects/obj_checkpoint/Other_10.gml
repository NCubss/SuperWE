if (room == global.checkpointroom)
{
    if (x == global.checkpoint_x && y == global.checkpoint_y)
    {
        if (global.style == 0)
        {
            sprite_index = spr_SMB_checkpoint
            image_speed = 0
            image_index = global.player
        }
        else if (global.style == 1)
        {
            sprite_index = spr_SMB3_checkpoint
            image_speed = 0
            image_index = global.player
        }
        else if (global.style == 2)
        {
            switch global.player
            {
                case 0:
                    sprite_index = spr_flag_mario
                    break
                case 1:
                    sprite_index = spr_flag_luigi
                    break
                case 2:
                    sprite_index = spr_flag_toad
                    break
                case 3:
                    sprite_index = spr_flag_toadette
                    break
            }

        }
        else if (global.style == 3)
        {
            sprite_index = spr_NSMBU_checkpoint_mario
            image_speed = 0.5
        }
    }
}

