if (global.theme == "underwater" || (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12)) || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 4) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
event_user(2)
event_user(3)
event_user(4)
if (hspeed > 0)
    direct = 1
else if (hspeed < 0)
    direct = -1
if (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12) && object_index != obj_grinder && object_index != obj_thwomp && object_index != obj_podoboo && object_index != obj_cheepcheep && object_index != obj_boo && object_index != obj_bobomb && object_index != obj_bobomb_ready && object_index != obj_pokey)
{
    if (global.theme == "castle")
    {
        if (global.style != 0)
            instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
        with (instance_create(x, y, obj_enemyparent_lava))
        {
            sprite_index = other.sprite_index
            direct = other.direct
        }
        instance_destroy()
    }
    else if (global.theme == "forest" && global.night == 1)
    {
        if (global.style != 0)
            instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
        with (instance_create(x, y, obj_enemyparent_lava))
        {
            sprite_index = other.sprite_index
            direct = other.direct
        }
        instance_destroy()
    }
    else if (global.theme == "mountain" && global.night == 1)
    {
        if (global.style != 0)
            instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
        with (instance_create(x, y, obj_enemyparent_lava))
        {
            sprite_index = other.sprite_index
            direct = other.direct
        }
        instance_destroy()
    }
}
