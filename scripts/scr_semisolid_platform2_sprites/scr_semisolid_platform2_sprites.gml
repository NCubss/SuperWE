function scr_semisolid_platform2_sprites() {
	if (global.style == 0)
	{
	    switch global.theme
	    {
	        case "ground":
	            return spr_SMB_ssp2_overworld;
	        case "underground":
	            return spr_SMB_ssp2_underground;
	        case "underwater":
	            if (global.night == 1)
	                return spr_SMB_ssp2_underwater_night;
	            else
	                return spr_SMB_ssp2_underwater;
	        case "desert":
	            return spr_SMB_ssp2_desert;
	        case "snow":
	            if (global.night == 1)
	                return spr_SMB_ssp2_snow_night;
	            else
	                return spr_SMB_ssp2_snow;
	        case "sky":
	            return spr_SMB_ssp2_sky;
	        case "forest":
	            return spr_SMB_ssp2_forest;
	        case "ghost":
	            return spr_SMB_ssp2_ghost;
	        case "airship":
	            if (global.night == 1)
	                return spr_SMB_ssp2_airship_night;
	            else
	                return spr_SMB_ssp2_airship;
	        case "castle":
	            return spr_SMB_ssp2_castle;
	        case "fall":
	            return spr_SMB_ssp2_fall;
	        case "beach":
	            return spr_SMB_ssp2_beach;
	        case "mountain":
	            if (global.night == 1)
	                return spr_SMB_ssp2_volcano;
	            else
	                return spr_SMB_ssp2_mountain;
	            break
	    }

	}
	else if (global.style == 1)
	{
	    switch global.theme
	    {
	        case "ground":
	            return spr_SMB3_ssp2_overworld;
	        case "underground":
	            return spr_SMB3_ssp2_underground;
	        case "underwater":
	            return spr_SMB3_ssp2_underwater;
	        case "desert":
	            return spr_SMB3_ssp2_desert;
	        case "snow":
	            if (global.night == 1)
	                return spr_SMB3_ssp2_snow_night;
	            else
	                return spr_SMB3_ssp2_snow;
	        case "sky":
	            return spr_SMB3_ssp2_sky;
	        case "forest":
	            return spr_SMB3_ssp2_forest;
	        case "ghost":
	            return spr_SMB3_ssp2_ghost;
	        case "airship":
	            return spr_SMB3_ssp2_airship;
	        case "castle":
	            return spr_SMB3_ssp2_castle;
	        case "fall":
	            return spr_SMB3_ssp2_autumn;
	        case "beach":
	            if (global.night == 1)
	                return spr_SMB3_ssp2_beach_night;
	            else
	                return spr_SMB3_ssp2_beach;
	            break
	        case "mountain":
	            if (global.night == 1)
	                return spr_SMB3_ssp2_volcano;
	            else
	                return spr_SMB3_ssp2_mountain;
	            break
	    }

	}
	else if (global.style == 2)
	{
	    switch global.theme
	    {
	        case "ground":
	            return spr_ssp2_overworld;
	        case "underground":
	            return spr_ssp2_underground;
	        case "underwater":
	            return spr_ssp2_underwater;
	        case "desert":
	            return spr_ssp2_desert;
	        case "snow":
	            if (global.night == 1)
	                return spr_ssp2_snow_night;
	            else
	                return spr_ssp2_snow;
	        case "sky":
	            return spr_ssp2_sky;
	        case "forest":
	            return spr_ssp2_forest;
	        case "ghost":
	            return spr_ssp2_ghost;
	        case "airship":
	            return spr_ssp2_airship;
	        case "castle":
	            return spr_ssp2_castle;
	        case "fall":
	            return spr_ssp2_autumn;
	        case "beach":
	            return spr_ssp2_beach;
	        case "mountain":
	            if (global.night == 1)
	                return spr_ssp2_volcano;
	            else
	                return spr_ssp2_mountain;
	            break
	    }

	}
	else if (global.style == 3)
	{
	    switch global.theme
	    {
            case "ground":
                if (global.night == 1)
                    return spr_NSMBU_ssp2_overworld_night;
                else
                    return spr_NSMBU_ssp2_overworld;
	        case "underground":
	            return spr_NSMBU_ssp2_underground;
	        case "underwater":
	            return spr_NSMBU_ssp2_underwater;
            case "desert":
                if (global.night == 1)
                    return spr_NSMBU_ssp2_desert_night;
                else
                    return spr_NSMBU_ssp2_desert;
	        case "snow":
	            if (global.night == 1)
	                return spr_NSMBU_ssp2_snow_night;
	            else
	                return spr_NSMBU_ssp2_snow;
	        case "sky":
	            return spr_NSMBU_ssp2_sky;
	        case "forest":
                if (global.night == 1)
                    return spr_NSMBU_ssp2_forest_night;
                else
                    return spr_NSMBU_ssp2_forest;
	        case "ghost":
	            return spr_NSMBU_ssp2_ghost;
	        case "airship":
	            if (global.night == 1)
	                return spr_NSMBU_ssp2_airship_night;
	            else
	                return spr_NSMBU_ssp2_airship;
	        case "castle":
	            return spr_NSMBU_ssp2_castle;
	        case "fall":
	            return spr_NSMBU_ssp2_autumn;
	        case "beach":
	            if (global.night == 1)
	                return spr_NSMBU_ssp2_beach_night;
	            else
	                return spr_NSMBU_ssp2_beach;
	        case "mountain":
	            if (global.night == 1)
	                return spr_NSMBU_ssp2_volcano;
	            else
	                return spr_NSMBU_ssp2_mountain;
	            break
	    }

	}



}
