function scr_marioswim() {
if (global.style == 0)
{
    if (global.player == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_mario_small_swim;
            case 1:
                return spr_SMB_mario_big_swim;
            case 2:
                return spr_SMB_mario_fire_swim;
            case -50:
                return spr_SMB_mario_superball_swim;
            case -77:
                return spr_SMB_mario_mega_swim;
            case -78:
                return spr_SMB_mario_hen_swim;
            case -85:
                return spr_SMB_link_swim;
			case -80:
                return spr_SMB2_mario_big_swim;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_luigi_small_swim;
            case 1:
                return spr_SMB_luigi_big_swim;
            case 2:
                return spr_SMB_luigi_fire_swim;
            case -50:
                return spr_SMB_luigi_superball_swim;
            case -77:
                return spr_SMB_luigi_mega_swim;
            case -78:
                return spr_SMB_luigi_hen_swim;
            case -85:
                return spr_SMB_link_swim;
			case -80:
                return spr_SMB2_luigi_big_swim;
			
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_toad_small_swim;
            case 1:
                return spr_SMB_toad_big_swim;
            case 2:
                return spr_SMB_toad_fire_swim;
            case -50:
                return spr_SMB_toad_superball_swim;
            case -77:
                return spr_SMB_toad_mega_swim;
            case -78:
                return spr_SMB_toad_hen_swim;
            case -85:
                return spr_SMB_link_swim;
			case -80:
                return spr_SMB2_toad_big_swim;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB_toadette_small_swim;
            case 1:
                return spr_SMB_toadette_big_swim;
            case 2:
                return spr_SMB_toadette_fire_swim;
            case -50:
                return spr_SMB_toadette_superball_swim;
            case -77:
                return spr_SMB_toadette_mega_swim;
            case -78:
                return spr_SMB_toadette_hen_swim;
            case -85:
                return spr_SMB_link_swim;
			case -80:
                return spr_SMB2_toadette_big_swim;
        }

    }
}
else if (global.style == 1)
{
    if (global.player == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_mario_small_swim;
            case 1:
                return spr_SMB3_mario_big_swim;
            case 2:
                return spr_SMB3_mario_fire_swim;
            case -39:
                return spr_SMB3_mario_raccoon_swim;
            case -29:
                return spr_SMB3_mario_frog_swim;
            case -46:
                return spr_SMB3_mario_hammer_swim;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_luigi_small_swim;
            case 1:
                return spr_SMB3_luigi_big_swim;
            case 2:
                return spr_SMB3_luigi_fire_swim;
            case -39:
                return spr_SMB3_luigi_raccoon_swim;
            case -29:
                return spr_SMB3_mario_frog_swim;
            case -46:
                return spr_SMB3_mario_hammer_swim;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toad_small_swim;
            case 1:
                return spr_SMB3_toad_big_swim;
            case 2:
                return spr_SMB3_toad_fire_swim;
            case -39:
                return spr_SMB3_toad_raccoon_swim;
            case -29:
                return spr_SMB3_toad_frog_swim;
            case -46:
                return spr_SMB3_toad_hammer_swim;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toadette_small_swim;
            case 1:
                return spr_SMB3_toadette_big_swim;
            case 2:
                return spr_SMB3_toadette_fire_swim;
            case -39:
                return spr_SMB3_toadette_raccoon_swim;
            case -29:
                return spr_SMB3_toadette_frog_swim;
            case -46:
                return spr_SMB3_toadette_hammer_swim;
        }

    }
}
else if (global.style == 2)
{
    if (global.player == 0)
    {
        switch global.powerup
        {
            case 0:
                return spr_mario_small_swim;
            case 1:
                return spr_mario_big_swim;
            case 2:
                return spr_mario_fire_swim;
            case 3:
                return spr_mario_big_swim;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_swim;
            case 1:
                return spr_luigi_big_swim;
            case 2:
                return spr_luigi_fire_swim;
            case 3:
                return spr_luigi_big_swim;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_swim;
            case 1:
                return spr_toad_big_swim;
            case 2:
                return spr_toad_fire_swim;
            case 3:
                return spr_toad_big_swim;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_swim;
            case 1:
                return spr_toadette_big_swim;
            case 2:
                return spr_toadette_fire_swim;
            case 3:
                return spr_toadette_big_swim;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}
else if (global.style == 4)
{
    if (global.player == 0)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB2_mario_big_swim;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB2_luigi_big_swim;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB2_toad_big_swim;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 1:
                return spr_SMB2_toadette_big_swim;
        }

    }
}

}
