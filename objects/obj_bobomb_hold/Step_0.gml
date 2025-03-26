event_inherited()
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "castle")
{
    instance_create((x - 8), y, obj_explosion)
    instance_destroy()
}
else if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "mountain" && global.night == 1)
{
    instance_create((x - 8), y, obj_explosion)
    instance_destroy()
}
