if (global.theme == "underwater" || (instance_exists(obj_lava_water) && global.theme == "forest" && global.night == 0 && y >= obj_lava_water.y))
{
    with (other.id)
        event_user(0)
}
else if (lava == 1)
{
    with (other.id)
        event_user(0)
}
else
    event_inherited()

