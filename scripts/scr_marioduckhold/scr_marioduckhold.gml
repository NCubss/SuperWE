function scr_marioduckhold() {
	if (global.style == 0)
	{
	if (global.player == 0)
	{
	    switch global.powerup
	    {
	        case -80:
	            return  spr_SMB2_mario_big_duck_hold;
	    }

	}
	else if (global.player == 1)
	{
	    switch global.powerup
	    {
	        case -80:
	            return  spr_SMB2_luigi_big_duck_hold;
	    }

	}
	else if (global.player == 2)
	{
	    switch global.powerup
	    {
	        case -80:
	            return  spr_SMB2_toad_big_duck_hold;
	    }

	}
	else if (global.player == 3)
	{
	    switch global.powerup
	    {
	        case -80:
	            return  spr_SMB2_toadette_big_duck_hold;
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
                return spr_mario_small_duck_hold;
            case 1:
                return spr_mario_big_duck_hold;
            case 2:
                return spr_mario_fire_duck_hold;
            case 3:
                return spr_mario_big_duck_hold;
            case -82:
                return spr_mario_pballon_idle;
        }

    }
    else if (global.player == 1)
    {
        switch global.powerup
        {
            case 0:
                return spr_luigi_small_duck_hold;
            case 1:
                return spr_luigi_big_duck_hold;
            case 2:
                return spr_luigi_fire_duck_hold;
            case 3:
                return spr_luigi_big_duck_hold;
            case -82:
                return spr_luigi_pballon_idle;
        }

    }
    else if (global.player == 2)
    {
        switch global.powerup
        {
            case 0:
                return spr_toad_small_duck_hold;
            case 1:
                return spr_toad_big_duck_hold;
            case 2:
                return spr_toad_fire_duck_hold;
            case 3:
                return spr_toad_big_duck_hold;
            case -82:
                return spr_toad_pballon_idle;
        }

    }
    else if (global.player == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_toadette_small_duck_hold;
            case 1:
                return spr_toadette_big_duck_hold;
            case 2:
                return spr_toadette_fire_duck_hold;
            case 3:
                return spr_toadette_big_duck_hold;
            case -82:
                return spr_toadette_pballon_idle;
        }

    }
}
}
