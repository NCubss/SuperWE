function scr_snd_editor_castle() {
	switch global.style
	{
	    case 0:
	        return snd_SMB_editor_castle;
	    case 1:
	        return snd_SMB3_editor_castle;
	    case 2:
	        return snd_editor_castle;
	    case 3:
	        return snd_NSMBU_editor_castle;
	}




}
