function scr_snd_editor_desert() {
	switch global.style
	{
	    case 0:
	        return snd_SMB_editor_desert;
	    case 1:
	        return snd_SMB3_editor_desert;
	    case 2:
	        return snd_editor_desert;
	    case 3:
	        return snd_NSMBU_editor_desert;
	}




}
