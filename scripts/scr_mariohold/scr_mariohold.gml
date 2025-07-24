function scr_mariohold() {
	if (global.style == 0)
	{
	    if (global.player == 0)
	    {
	        switch global.powerup
	        {
	            case -80:
	                return spr_SMB2_mario_big_hold;
	            case -85:
	                return spr_SMB_link_hold;
	        }

	    }
	    else if (global.player == 1)
	    {
	        switch global.powerup
	        {
	            case -80:
	                return spr_SMB2_luigi_big_hold;
	            case -85:
	                return spr_SMB_link_hold;
	        }

	    }
	    else if (global.player == 2)
	    {
	        switch global.powerup
	        {
	           case -80:
	                return spr_SMB2_toad_big_hold;
	           case -85:
	                return spr_SMB_link_hold;
	        }

	    }
	    else if (global.player == 3)
	    {
	        switch global.powerup
	        {
	            case -80:
	                return spr_SMB2_toadette_big_hold;
	            case -85:
	                return spr_SMB_link_hold;
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
                return spr_SMB3_mario_small_hold;
            case 1:
                return spr_SMB3_mario_big_hold;
            case 2:
                return spr_SMB3_mario_fire_hold;
            case -39:
                return spr_SMB3_mario_raccoon_hold;
            case -29:
                return spr_SMB3_mario_frog_hold;
            case -46:
                return spr_SMB3_mario_hammer_hold;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_luigi_small_hold;
            case 1:
                return spr_SMB3_luigi_big_hold;
            case 2:
                return spr_SMB3_luigi_fire_hold;
            case -39:
                return spr_SMB3_luigi_raccoon_hold;
            case -29:
                return spr_SMB3_mario_frog_hold;
            case -46:
                return spr_SMB3_mario_hammer_hold;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toad_small_hold;
            case 1:
                return spr_SMB3_toad_big_hold;
            case 2:
                return spr_SMB3_toad_fire_hold;
            case -39:
                return spr_SMB3_toad_raccoon_hold;
            case -29:
                return spr_SMB3_toad_frog_hold;
            case -46:
                return spr_SMB3_toad_hammer_hold;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toadette_small_hold;
            case 1:
                return spr_SMB3_toadette_big_hold;
            case 2:
                return spr_SMB3_toadette_fire_hold;
            case -39:
                return spr_SMB3_toadette_raccoon_hold;
            case -29:
                return spr_SMB3_toadette_frog_hold;
            case -46:
                return spr_SMB3_toadette_hammer_hold;
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
                return spr_mario_small_hold;
            case 1:
                return spr_mario_big_hold;
            case 2:
                return spr_mario_fire_hold;
            case 3:
                return spr_mario_big_hold;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_hold;
            case 1:
                return spr_luigi_big_hold;
            case 2:
                return spr_luigi_fire_hold;
            case 3:
                return spr_luigi_big_hold;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_hold;
            case 1:
                return spr_toad_big_hold;
            case 2:
                return spr_toad_fire_hold;
            case 3:
                return spr_toad_big_hold;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_hold;
            case 1:
                return spr_toadette_big_hold;
            case 2:
                return spr_toadette_fire_hold;
            case 3:
                return spr_toadette_big_hold;
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
            case 0:
                return spr_SMB2_mario_small_hold;
            case 1:
                return spr_SMB2_mario_big_hold;
            case 2:
                return spr_SMB2_mario_fire_hold;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB2_luigi_small_hold;
            case 1:
                return spr_SMB2_luigi_big_hold;
            case 2:
                return spr_SMB2_luigi_fire_hold;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB2_toad_small_hold;
            case 1:
                return spr_SMB2_toad_big_hold;
            case 2:
                return spr_SMB2_toad_fire_hold;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB2_toadette_small_hold;
            case 1:
                return spr_SMB2_toadette_big_hold;
            case 2:
                return spr_SMB2_toadette_fire_hold;
        }

    }
}

}
