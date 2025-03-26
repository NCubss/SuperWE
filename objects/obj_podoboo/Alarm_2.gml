audio_stop_sound(snd_podoboo)
audio_play_sound(snd_podoboo, 0, false)
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.style != 0 && (global.theme == "castle" || (global.theme == "forest" && global.night == 1) || (global.theme == "mountain" && global.night == 1)))
{
    if (global.theme == "forest")
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    else
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
}
