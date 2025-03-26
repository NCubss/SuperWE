audio_stop_sound(snd_stomp)
audio_play_sound(snd_stomp, 0, false)
with (other.id)
{
    if (rot == 0)
        rot = 1
}
other.hspeed = lengthdir_x(3, point_direction(x, y, other.x, other.y))
if ((other.y + 16) < (y - 12))
{
    if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1))
        other.vspeed = -0.5
    else
        other.vspeed = -1.3
}
else if (global.theme == "underwater" || (global.theme == "sky" && global.night == 1))
    other.vspeed = 1.5
else
    other.vspeed = 3.5

