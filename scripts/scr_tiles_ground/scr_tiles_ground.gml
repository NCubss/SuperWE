function scr_tiles_ground() {
	if (global.style == 0)
	{
	    switch global.theme
	    {
	        case "ground":
	            return spr_SMB_ground;
	        case "underground":
	            return spr_SMB_ground2;
	        case "castle":
	            return spr_SMB_ground3;
	        case "underwater":
	            return spr_SMB_ground4;
	        case "ghost":
	            return spr_SMB_ground5;
	        case "airship":
	            if (global.night == 1)
	                return spr_SMB_ground6_night;
	            else
	                return spr_SMB_ground6;
	            break
	        case "forest":
	            return spr_SMB_ground7;
	        case "sky":
	            return spr_SMB_ground8;
	        case "desert":
	            return spr_SMB_ground9;
	        case "snow":
	            if (global.night == 1)
	                return spr_SMB_ground10_night;
	            else
	                return spr_SMB_ground10;
	            break
	        case "fall":
	            return spr_SMB_ground11;
	        case "beach":
	            return spr_SMB_ground12;
	        case "mountain":
	            if (global.night == 1)
	                return spr_SMB_ground14;
	            else
	                return spr_SMB_ground13;
	            break
	        default:
	            return spr_SMB_ground;
	    }

	}
	else if (global.style == 1)
	{
	    switch global.theme
	    {
	        case "ground":
	            if (global.night == 1)
	                return spr_SMB3_ground_night;
	            else
	                return spr_SMB3_ground;
	            break
	        case "underground":
	            return spr_SMB3_ground2;
	        case "castle":
	            if (global.night == 1)
	                return spr_SMB3_ground3_night;
	            else
	                return spr_SMB3_ground3;
	            break
	        case "underwater":
	            if (global.night == 1)
	                return spr_SMB3_ground4_night;
	            else
	                return spr_SMB3_ground4;
	            break
	        case "ghost":
	            return spr_SMB3_ground5;
	        case "airship":
	            if (global.night == 1)
	                return spr_SMB3_ground6_night;
	            else
	                return spr_SMB3_ground6;
	            break
	        case "forest":
	            return spr_SMB3_ground7;
	        case "sky":
	            return spr_SMB3_ground8;
	        case "desert":
	            if (global.night == 1)
	                return spr_SMB3_ground9_night;
	            else
	                return spr_SMB3_ground9;
	            break
	        case "snow":
	            if (global.night == 1)
	                return spr_SMB3_ground10_night;
	            else
	                return spr_SMB3_ground10;
	            break
	        case "fall":
	            if (global.night == 1)
	                return spr_SMB3_ground11_night;
	            else
	                return spr_SMB3_ground11;
	            break
	        case "beach":
	            if (global.night == 1)
	                return spr_SMB3_ground12_night;
	            else
	                return spr_SMB3_ground12;
	            break
	        case "mountain":
	            if (global.night == 1)
	                return spr_SMB3_ground14;
	            else
	                return spr_SMB3_ground13;
	            break
	        default:
	            return spr_ground;
	    }

	}
	else if (global.style == 2)
	{
	    switch global.theme
	    {
	        case "ground":
	            return spr_ground;
	        case "underground":
	            return spr_ground2;
	        case "castle":
	            return spr_ground3;
	        case "underwater":
	            if (global.night == 1)
	                return spr_ground4_night;
	            else
	                return spr_ground4;
	            break
	        case "ghost":
	            return spr_ground5;
	        case "airship":
	            return spr_ground6;
	        case "forest":
	            return spr_ground7;
	        case "sky":
	            return spr_ground8;
	        case "desert":
	            return spr_ground9;
	        case "snow":
	            if (global.night == 1)
	                return spr_ground10_night;
	            else
	                return spr_ground10;
	            break
	        case "fall":
	            return spr_ground11;
	        case "beach":
	            return spr_ground12;
	        case "mountain":
	            if (global.night == 1)
	                return spr_ground14;
	            else
	                return spr_ground13;
	            break
	        default:
	            return spr_ground;
	    }

	}
	else if (global.style == 3)
	{
	    switch global.theme
	    {
	        case "ground":
	            if (global.night == 1)
	                return spr_NSMBU_ground_night;
	            else
	                return spr_NSMBU_ground;
	            break
	        case "underground":
	            return spr_NSMBU_ground2;
	        case "castle":
	            return spr_NSMBU_ground3;
	        case "underwater":
	            if (global.night == 1)
	                return spr_NSMBU_ground4_night;
	            else
	                return spr_NSMBU_ground4;
	            break
	        case "ghost":
	            return spr_NSMBU_ground5;
	        case "airship":
	            if (global.night == 1)
	                return spr_NSMBU_ground6_night;
	            else
	                return spr_NSMBU_ground6;
	            break
	        case "forest":
	            if (global.night == 1)
	                return spr_NSMBU_ground7_night;
	            else
	                return spr_NSMBU_ground7;
	            break
	        case "sky":
	            if (global.night == 1)
	                return spr_NSMBU_ground8_night;
	            else
	                return spr_NSMBU_ground8;
	            break
	        case "desert":
	            if (global.night == 1)
	                return spr_NSMBU_ground9_night;
	            else
	                return spr_NSMBU_ground9;
	            break
	        case "snow":
	            if (global.night == 1)
	                return spr_NSMBU_ground10_night;
	            else
	                return spr_NSMBU_ground10;
	            break
	        case "fall":
			if (global.night == 1)
	                return spr_NSMBU_ground11_night;
	            else
	                return spr_NSMBU_ground11;
	            break
	        case "beach":
	            if (global.night == 1)
	                return spr_NSMBU_ground12_night;
	            else
	                return spr_NSMBU_ground12;
	        case "mountain":
	            if (global.night == 1)
	                return spr_NSMBU_ground14;
	            else
	                return spr_NSMBU_ground13;
	            break
	    }

	}
	if (global.style == 4)
	{
	    switch global.theme
	    {
	        case "ground":
	            return spr_SMB2_ground;
	        case "underground":
	            return spr_SMB2_ground2;
	        case "castle":
	            return spr_SMB2_ground3;
	        case "underwater":
	            return spr_SMB2_ground4;
	        case "ghost":
	            return spr_SMB2_ground5;
	        case "airship":
	            if (global.night == 1)
	                return spr_SMB2_ground_night;
	            else
	                return spr_SMB2_ground6;
	            break
	        case "forest":
	            return spr_SMB2_ground7;
	        case "sky":
	            return spr_SMB2_ground8;
	        case "desert":
	            return spr_SMB2_ground9;
	        case "snow":
	            if (global.night == 1)
	                return spr_SMB2_ground_night;
	            else
	                return spr_SMB2_ground10;
	            break
	        case "fall":
	            return spr_SMB2_ground;
	        case "beach":
	            return spr_SMB2_ground;
	        default:
	            return spr_SMB2_ground;
	    }

	}



}
