function scr_mario_pull() {
	if (global.player == 0)
	{
	    switch global.powerup
	    {
	        case -80:
	            return spr_SMB2_mario_big_pull;
	    }
    
	}
	else if (global.player == 1)
	{
	    switch global.powerup
	    {
	        case -80:
	            return spr_SMB2_luigi_big_pull;
	    }
    
	}
	else if (global.player == 2)
	{
	    switch global.powerup
	    {
	        case -80:
	            return spr_SMB2_toad_big_pull;
	    }
    
	}
	else if (global.player == 3)
	{
	    switch global.powerup
	    {
	        case -80:
	            return spr_SMB2_toadette_big_pull;
	    }
    
	}



}
