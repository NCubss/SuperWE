function scr_mariowarp() {
if (global.style == 1)
{
    switch global.player
    {
        case 0:
            return spr_SMB3_mario_raccoon_attack;
        case 1:
            return spr_SMB3_luigi_raccoon_attack;
        case 2:
            return spr_SMB3_mario_raccoon_attack;
        case 3:
            return spr_SMB3_mario_raccoon_attack;
    }

}
else if (global.style == 2)
{
    if (global.player == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_mario_small_spinjump;
            case 1:
                return spr_mario_big_spinjump;
            case 2:
                return spr_mario_fire_spinjump;
            case 3:
                return spr_mario_big_spinjump;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_warp;
            case 1:
                return spr_luigi_big_warp;
            case 2:
                return spr_luigi_fire_warp;
            case 3:
                return spr_luigi_big_warp;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_warp;
            case 1:
                return spr_toad_big_warp;
            case 2:
                return spr_toad_fire_warp;
            case 3:
                return spr_toad_big_warp;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_warp;
            case 1:
                return spr_toadette_big_warp;
            case 2:
                return spr_toadette_fire_warp;
            case 3:
                return spr_toadette_big_warp;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}

}
