if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
if (place_meeting(x, y, obj_solid) || place_meeting(x, y, obj_physicssolid) || place_meeting(x, y, obj_bullebill_base))
{
    instance_create((x + 8), (y + 8), obj_detroy_enemy)
    instance_destroy()
}
else
{
    with (scr_constant_make_object(x, y, s_sprout))
    {
        if (variable_instance_exists(id, "wings") && other.wings == 1)
            wings = 1
        if variable_instance_exists(id, "direct")
            direct = 1
    }
    instance_destroy()
}

