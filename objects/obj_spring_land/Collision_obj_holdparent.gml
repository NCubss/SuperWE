if (other.held == 0)
{
    if (collision_rectangle(bbox_left, bbox_top, (bbox_right - 4), bbox_top, obj_physicsparent, 0, 0) && (other.bbox_left + (bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
    {
        if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky") || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && global.theme == "forest" && global.night == 0))
        {
            other.vspeed = -1.5
            other.hspeed = -2
        }
        else
        {
            other.vspeed = -2.9
            other.hspeed = -3
        }
        if (other.object_index == obj_galoomba_hold || other.object_index == obj_bobomb_hold)
            other.direct = -1
        event_user(1)
    }
    else if (collision_rectangle((bbox_left - 4), bbox_top, bbox_right, bbox_top, obj_physicsparent, 0, 0) && (other.bbox_left + (bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
    {
        if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky") || (instance_exists(obj_lava_water) && (y + 8) > obj_lava_water.y && global.theme == "forest" && global.night == 0))
        {
            other.vspeed = -1.5
            other.hspeed = 2
        }
        else
        {
            other.vspeed = -2.9
            other.hspeed = 3
        }
        if (other.object_index == obj_galoomba_hold || other.object_index == obj_bobomb_hold)
            other.direct = 1
        event_user(1)
    }
}

