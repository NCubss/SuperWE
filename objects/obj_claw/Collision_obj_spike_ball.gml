var spd;
if (hold == 0 && ready == 0 && (!(place_meeting(x, y, obj_solid))) && (!(place_meeting(x, y, obj_physicssolid))) && (!(place_meeting(x, y, obj_bullebill_base))))
{
    event_user(0)
    hold = 1
    hold_obj = other.id
    hold_speed = 0
    enemy = 1
    if (other.paracaidas == 1)
        other.paracaidas = 0
    if (global.style < 2)
        other.fisica = 1
    posx = 0
    posy = 9
    release = 1
    alarm[1] = 30
    if (other.hspeed > 3)
        spd = 3
    else if (other.hspeed < -3)
        spd = -3
    else
        spd = other.hspeed
    knopen_xspeed[segmenten] = spd
    with (other.id)
    {
        gravity = 0
        speed = 0
    }
}


