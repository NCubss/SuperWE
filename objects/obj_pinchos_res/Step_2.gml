if (global.style == 0)
{
    if (global.theme == "snow" && global.night == 1)
        sprite_index = spr_SMB_pinchos_ice
    else if (global.theme == "snow")
        sprite_index = spr_SMB_pinchos_snow
    else if (global.theme == "castle")
        sprite_index = spr_SMB_pinchos_dark
    else if (global.theme == "mountain") && (global.night == 1)
        sprite_index = spr_SMB_pinchos_dark
    else if (global.theme == "mountain") && (global.night == 0)
        sprite_index = spr_SMB_pinchos    
    else if (global.theme != "mountain") && (global.theme == "underground" || global.theme == "ghost" || global.night == 1)
        sprite_index = spr_SMB_pinchos_night
    else
        sprite_index = spr_SMB_pinchos
}
else if (global.style == 1)
{
    if (global.theme == "snow" && global.night == 1)
        sprite_index = spr_SMB3_pinchos_ice
    else if (global.theme == "castle")
        sprite_index = spr_SMB3_pinchos_dark
	else if (global.theme == "mountain") && (global.night == 1)
        sprite_index = spr_SMB3_pinchos_dark
    else if (global.theme == "mountain") && (global.night == 0)
        sprite_index = spr_SMB3_pinchos  
    else if (global.theme != "mountain") && (global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        sprite_index = spr_SMB3_pinchos_night
    if (global.theme == "underwater")
        sprite_index = spr_SMB3_pinchos_swin
    else
        sprite_index = spr_SMB3_pinchos
}
else if (global.style == 2)
{
    if (global.theme == "underwater")
        sprite_index = spr_pinchos_swin
    else
        sprite_index = spr_pinchos
}
else if (global.style == 3)
{
    if (global.theme != "mountain") && (global.theme == "underground" || global.theme == "ghost" || global.night == 1)
        sprite_index = spr_NSMBU_pinchos_night
	else if (global.theme == "mountain")
        sprite_index = spr_NSMBU_pinchos
    else
        sprite_index = spr_NSMBU_pinchos
}

