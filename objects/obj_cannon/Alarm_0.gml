if (!instance_exists(obj_mario))
{
    alarm[0] = 1
    exit
}
audio_stop_sound(scr_snd_explode())
audio_play_sound(scr_snd_explode(), 0, false)
if (global.style == 3)
    anim_shoot = 1
if (global.style == 3)
{
    with (instance_create(((x + 8) + lengthdir_x(8, direct)), ((y + 8) + lengthdir_y(8, direction)), obj_smoke))
    {
        sprite_index = spr_NSMBU_cannon_smoke
        image_speed = 0.5
        image_angle = other.direct
        depth = -7
    }
}
with (instance_create(((x + 8) + lengthdir_x(8, direct)), ((y + 8) + lengthdir_y(8, direction)), obj_cannonball))
{
    if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 0))
        motion_set(other.direct, 0.5)
    else
        motion_set(other.direct, 1)
}
alarm[0] = 192

