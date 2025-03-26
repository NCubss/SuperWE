function scr_snd_editor_mountain() {
	switch global.style
	{
	    case 0:
	        if (global.night == 0)
		{
	        return snd_SMB_editor_sky;
		}
		else if (global.night == 1)
		{
			return snd_SMB_editor_castle;
		}
	    case 1:
	        if (global.night == 0)
		{
	        return snd_SMB3_editor_sky;
		}
		else if (global.night == 1)
		{
			return snd_SMB3_editor_castle;
		}
	    case 2:
	        if (global.night == 0)
		{
	        return snd_editor_sky;
		}
		else if (global.night == 1)
		{
			return snd_editor_volcano;
		}
	    case 3:
		if (global.night == 0)
		{
	        return snd_NSMBU_editor_sky;
		}
		else if (global.night == 1)
		{
			return snd_NSMBU_editor_volcano;
		}
	}




}
