function scr_mushroom_platform3_sprites() {
	if (global.style == 0)
	{
	    switch global.theme
	    {
	        case "snow":
	            if (global.night == 1)
	                return spr_SMB_mp3_snow_night;
	            else
	                return spr_SMB_mp3_snow;
	        case "underwater":
	            return spr_SMB_mp3_underwater;
	        case "beach":
	            return spr_SMB_mp3_underwater;
	        case "airship":
	            return spr_SMB_mp3_airship;
	        case "castle":
	            return spr_SMB_mp3_dark;
	        case "underground":
	            return spr_SMB_mp3_dark;
	        case "ghost":
	            return spr_SMB_mp3_dark;
	        default:
	            return spr_SMB_mp3;
	    }

	}
	else if (global.style == 1)
	{
	    if (global.night == 1)
	    {
	        switch global.theme
	        {
	            case "snow":
	                if (global.night == 1)
	                    return spr_SMB3_mp3_snow_night;
	                else
	                    return spr_SMB3_mp3_snow;
	            case "underwater":
	                return spr_SMB3_mp3_underwater;
	            case "beach":
	                return spr_SMB3_mp3_underwater;
	            case "airship":
	                return spr_SMB3_mp3_airship;
	            case "castle":
	                return spr_SMB3_mp3_dark;
	            default:
	                return spr_SMB3_mp3_night;
	        }

	    }
	    else
	    {
	        switch global.theme
	        {
	            case "snow":
	                if (global.night == 1)
	                    return spr_SMB3_mp3_snow_night;
	                else
	                    return spr_SMB3_mp3_snow;
	            case "underwater":
	                return spr_SMB3_mp3_underwater;
	            case "beach":
	                return spr_SMB3_mp3_underwater;
	            case "airship":
	                return spr_SMB3_mp3_airship;
	            case "castle":
	                return spr_SMB3_mp3_dark;
	            case "underground":
	                return spr_SMB3_mp3_night;
	            case "ghost":
	                return spr_SMB3_mp3_night;
	            default:
	                return spr_SMB3_mp3;
	        }

	    }
	}
	else if (global.style == 2)
	{
	    switch global.theme
	    {
	        case "snow":
	            if (global.night == 1)
	                return spr_mp3_snow_night;
	            else
	                return spr_mp3_snow;
	        case "underwater":
	            return spr_mp3_underwater;
	        case "beach":
	            return spr_mp3_underwater;
	        case "airship":
	            return spr_mp3_airship;
	        default:
	            return spr_mp3;
	    }

	}
	else if (global.style == 2)
	{
	    switch global.theme
	    {
	        case "snow":
	            if (global.night == 1)
	                return spr_mp1_snow_night;
	            else
	                return spr_mp1_snow;
	        case "underwater":
	            return spr_mp1_underwater;
	        case "beach":
	            return spr_mp1_underwater;
	        case "airship":
	            return spr_mp1_airship;
	        default:
	            return spr_mp1;
	    }

	}
	else if (global.style == 3)
	{
	    if (global.night == 1)
	    {
	        switch global.theme
	        {
	            case "snow":
	                return spr_NSMBU_mp3_snow_night;
	            case "underwater":
	                return spr_NSMBU_mp3_underwater_night;
	            case "beach":
	                return spr_NSMBU_mp3_underwater_night;
	            case "airship":
	                return spr_NSMBU_mp3_airship_night;
	            case "ghost":
	                return spr_NSMBU_mp3_ghost;
	            case "castle":
	                return spr_NSMBU_mp3_castle;
	            case "underground":
	                return spr_NSMBU_mp3_underground;
	            default:
	                return spr_NSMBU_mp3_overworld_night;
	        }

	    }
	    else
	    {
	        switch global.theme
	        {
	            case "snow":
	                return spr_NSMBU_mp3_snow;
	            case "underwater":
	                return spr_NSMBU_mp3_underwater;
	            case "beach":
	                return spr_NSMBU_mp3_underwater;
	            case "airship":
	                return spr_NSMBU_mp3_airship;
	            case "ghost":
	                return spr_NSMBU_mp3_ghost;
	            case "desert":
	                return spr_NSMBU_mp3_desert;
	            case "castle":
	                return spr_NSMBU_mp3_castle;
	            case "underground":
	                return spr_NSMBU_mp3_underground;
	            default:
	                return spr_NSMBU_mp3_overworld;
	        }

	    }
	}


}
