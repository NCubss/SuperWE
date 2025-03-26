if (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "castle")
{
    audio_play_sound(snd_podoboo, 0, false)
    with (instance_create(x, (y - 8), obj_smoke))
    {
        if (global.style == 1)
            sprite_index = spr_SMB3_splash_lava
        else if (global.style == 2)
            sprite_index = spr_splash_lava
        depth = -10
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 1)
{
    audio_play_sound(snd_podoboo, 0, false)
    with (instance_create(x, (y - 8), obj_smoke))
    {
        if (global.style == 1)
            sprite_index = spr_SMB3_splash_poison
        else if (global.style == 2)
            sprite_index = spr_splash_lava_purple
        depth = -10
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "mountain" && global.night == 1)
{
    audio_play_sound(snd_podoboo, 0, false)
    with (instance_create(x, (y - 8), obj_smoke))
    {
        if (global.style == 1)
            sprite_index = spr_SMB3_splash_lava
        else if (global.style == 2)
            sprite_index = spr_splash_lava
        depth = -10
    }
    instance_destroy()
}
