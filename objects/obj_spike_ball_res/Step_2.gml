if (obj_levelmanager.editor == 1)
{
    if (global.theme == "snow")
    {
        sprite_index = spr_snow_ball_res
        image_index = global.style
    }
    else
    {
        if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_spike_ball_night_res
        else
            sprite_index = spr_spike_ball_res
        image_index = global.style
    }
}


