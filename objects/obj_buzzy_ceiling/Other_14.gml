var semisolid, col_one_top, col_one_bottom;
if (vspeed >= 0)
{
    semisolid = collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + vspeed), obj_solidtop, 0, 0)
    if (semisolid && bbox_bottom < (semisolid.yprevious + 5))
        y = (semisolid.bbox_top - (sprite_height - sprite_get_yoffset(sprite_index)))
    if (vspeed > 4)
        vspeed = 4
}
if (collision_rectangle(bbox_left, (bbox_bottom - 1), bbox_right, (bbox_bottom + 1), obj_solidtop, 0, 0) && (!collision_rectangle(bbox_left, (bbox_bottom - 4), bbox_right, (bbox_bottom - 4), obj_solidtop, 0, 0)))
{
    gravity = 0
    if (vspeed > 0)
    {
        vspeed = 0
        col_one_top = collision_rectangle(bbox_left, (bbox_bottom + 1), bbox_right, (bbox_bottom + 1), obj_onewaygate_top, 0, 0)
        if col_one_top
        {
            with (col_one_top)
            {
                rot = 1
                event_user(0)
            }
        }
    }
}
else if (!swimming)
{
    gravity = 0.4
    if (vspeed > 4)
        vspeed = 4
}
else if (swimming == 1)
{
    gravity = 0.02
    if (vspeed > 1)
        vspeed = 1
}
if (vspeed < 0)
{
    if (collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_solid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_physicssolid, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_bullebill_base, 1, 0) || collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_top, obj_onewaygate_bottom, 1, 0))
    {
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solid, 1, 0) && (!place_meeting(x, y, obj_solid)))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_hurtsolid2, 1, 0) && (!place_meeting(x, y, obj_hurtsolid2)))
            y++
        while (collision_rectangle(bbox_left, (bbox_top + 1), bbox_right, (bbox_top + 1), obj_solidphy, 1, 0) && (!place_meeting(x, y, obj_solidphy)))
            y++
        col_one_bottom = collision_rectangle((bbox_left + 1), ((bbox_top + vspeed) - 1), (bbox_right - 1), (bbox_top - 1), obj_onewaygate_bottom, 1, 0)
        if col_one_bottom
        {
            with (col_one_bottom)
            {
                rot = 1
                event_user(0)
            }
        }
        vspeed = 0
    }
}
if ((bbox_top - 16) > room_height || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.theme == "castle" || (global.theme == "forest" && global.night == 1) || (global.theme == "mountain" && global.night == 1))))
{
instance_destroy()
}
