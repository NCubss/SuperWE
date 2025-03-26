if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
{
    if (global.style == 3)
        sprite_index = spr_NSMBU_flagpole
    else
        sprite_index = spr_SMB_flagpole
}
else if (global.style == 3)
    sprite_index = spr_NSMBU_flagpole_disabled
else
    sprite_index = spr_SMB_flagpole_disabled

