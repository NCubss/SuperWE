function scr_snd_castle() {

	    switch global.style
	    {
	        case 0:
	            if (global.night == 0)
	                return snd_SMB_music_castle;
	            else
	                return snd_SMB_music_castle_night;
	            break
	        case 1:
	            if (global.night == 0)
	                return snd_SMB3_music_castle;
	            else
	                return snd_SMB3_music_castle_night;
	            break
	        case 2:
	            if (global.night == 0)
	                return snd_music_castle;
	            else
	                return snd_music_castle_night;
	            break
	        case 3:
	            if (global.night == 0)
	                return snd_NSMBU_music_castle;
	            else
	                return snd_NSMBU_music_castle_night;
	            break
	    }




}
