function scr_mariokick() {
	if (global.style == 0)
	{
	    if (global.player == 0)
	    {
	        switch global.powerup
	        {
	            case -80:
	                return spr_SMB2_mario_big_kick;
	            case -85:
	                return spr_SMB_link_throw;
	        }

	    }
	    else if (global.player == 1)
	    {
	        switch global.powerup
	        {
	            case -80:
	                return spr_SMB2_luigi_big_kick;
	            case -85:
	                return spr_SMB_link_throw;
	        }

	    }
	    else if (global.player == 2)
	    {
	        switch global.powerup
	        {
	           case -80:
	                return spr_SMB2_toad_big_kick;
	           case -85:
	                return spr_SMB_link_throw;
	        }

	    }
	    else if (global.player == 3)
	    {
	        switch global.powerup
	        {
	            case -80:
	                return spr_SMB2_toadette_big_kick;
	            case -85:
	                return spr_SMB_link_throw;
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
                return spr_SMB3_mario_small_kick;
            case 1:
                return spr_SMB3_mario_big_kick;
            case 2:
                return spr_SMB3_mario_fire_kick;
            case -39:
                return spr_SMB3_mario_raccoon_kick;
            case -29:
                return spr_SMB3_mario_frog_kick;
            case -46:
                return spr_SMB3_mario_hammer_kick;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_luigi_small_kick;
            case 1:
                return spr_SMB3_luigi_big_kick;
            case 2:
                return spr_SMB3_luigi_fire_kick;
            case -39:
                return spr_SMB3_luigi_raccoon_kick;
            case -29:
                return spr_SMB3_mario_frog_kick;
            case -46:
                return spr_SMB3_mario_hammer_kick;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toad_small_kick;
            case 1:
                return spr_SMB3_toad_big_kick;
            case 2:
                return spr_SMB3_toad_fire_kick;
            case -39:
                return spr_SMB3_toad_raccoon_kick;
            case -29:
                return spr_SMB3_toad_frog_kick;
            case -46:
                return spr_SMB3_toad_hammer_kick;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_SMB3_toadette_small_kick;
            case 1:
                return spr_SMB3_toadette_big_kick;
            case 2:
                return spr_SMB3_toadette_fire_kick;
            case -39:
                return spr_SMB3_toadette_raccoon_kick;
            case -29:
                return spr_SMB3_toadette_frog_kick;
            case -46:
                return spr_SMB3_toadette_hammer_kick;
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
                return spr_mario_small_kick;
            case 1:
                return spr_mario_big_kick;
            case 2:
                return spr_mario_fire_kick;
            case 3:
                return spr_mario_big_kick;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_kick;
            case 1:
                return spr_luigi_big_kick;
            case 2:
                return spr_luigi_fire_kick;
            case 3:
                return spr_luigi_big_kick;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_kick;
            case 1:
                return spr_toad_big_kick;
            case 2:
                return spr_toad_fire_kick;
            case 3:
                return spr_toad_big_kick;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_kick;
            case 1:
                return spr_toadette_big_kick;
            case 2:
                return spr_toadette_fire_kick;
            case 3:
                return spr_toadette_big_kick;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}
}
