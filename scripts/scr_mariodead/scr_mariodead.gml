function scr_mariodead() {
    if (global.style == 0)
    {
        switch global.player
        {
            case 0:
                return spr_SMB_mario_dead;
            case 1:
                return spr_SMB_luigi_dead;
            case 2:
                return spr_SMB_toad_dead;
            case 3:
                return spr_SMB_toadette_dead;
        }

    }
    else if (global.style == 1)
    {
        switch global.player
        {
            case 0:
                return spr_SMB3_mario_dead;
            case 1:
                return spr_SMB3_luigi_dead;
            case 2:
                return spr_SMB3_toad_dead;
            case 3:
                return spr_SMB3_toadette_dead;
        }

    }
    else if (global.style == 2)
    {
        switch global.player
        {
            case 0:
                return spr_mario_dead;
            case 1:
                return spr_luigi_dead;
            case 2:
                return spr_toad_dead;
            case 3:
                return spr_toadette_dead;
        }

    }
    else if (global.style == 3)
    {
        switch global.powerup
        {
            case 0:
                return spr_NSMBU_mario_small_dead1;
            case 1:
                return spr_NSMBU_mario_big_dead1;
            case 2:
                return spr_NSMBU_mario_fire_dead1;
            case -30:
                return spr_NSMBU_mario_helice_dead1;
            case -43:
                return spr_NSMBU_mario_arcon_dead1;
            case -38:
                return spr_NSMBU_mario_penguin_dead1;
        }

    }
	if (global.style == 4)
	{
	    switch global.player
	    {
	        case 0:
	            return spr_SMB2_mario_dead;
	        case 1:
	            return spr_SMB2_luigi_dead;
	        case 2:
	            return spr_SMB2_toad_dead;
	        case 3:
	            return spr_SMB2_toadette_dead;
	    }

	}



}
