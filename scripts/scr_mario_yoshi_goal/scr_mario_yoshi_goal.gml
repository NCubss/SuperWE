function scr_mario_yoshi_goal()
{
    if (global.player == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_mario_small_yoshi_goal;
            case 1:
                return spr_mario_big_yoshi_goal;
            case 2:
                return spr_mario_fire_yoshi_goal;
            case 3:
                return spr_mario_big_yoshi_goal;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_yoshi_goal;
            case 1:
                return spr_luigi_big_yoshi_goal;
            case 2:
                return spr_luigi_fire_yoshi_goal;
            case 3:
                return spr_luigi_big_yoshi_goal;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_yoshi_goal;
            case 1:
                return spr_toad_big_yoshi_goal;
            case 2:
                return spr_toad_fire_yoshi_goal;
            case 3:
                return spr_toad_big_yoshi_goal;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_yoshi_goal;
            case 1:
                return spr_toadette_big_yoshi_goal;
            case 2:
                return spr_toadette_fire_yoshi_goal;
            case 3:
                return spr_toadette_big_yoshi_goal;
        }

    }
}

