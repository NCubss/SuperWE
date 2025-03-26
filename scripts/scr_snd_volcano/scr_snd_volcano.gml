function scr_snd_volcano() {
	switch global.style
	{
	    case 0:
	        if (global.night == 0)
	            return 0;
	        else
	            return 10;
	        break
	    case 1:
	        if (global.night == 0)
	            return 44;
	        else
	            return 53;
	        break
	    case 2:
	        if (global.night == 0)
	            return 109;
	        else
	            return 119;
	        break
	    case 3:
	        if (global.night == 0)
	            return 368;
	        else
	            return 380;
	        break
	}




}
