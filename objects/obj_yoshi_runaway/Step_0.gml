event_inherited()
event_user(1)
if (hspeed > 0)
    direct = 1
else
    direct = -1
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "castle" && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "forest" && global.night == 1 && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && (bbox_bottom - 8) > (obj_lava_water.y - 12) && global.theme == "mountain" && global.night == 1 && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && y <= obj_lava_water.y && obj_lava_water.vspeed > 0 && (modo_lava == 1 || swimming == 1))
    y = obj_lava_water.y
if (y > (room_height + 16) || (vspeed > 0 && instance_exists(obj_lava_water) && y > (obj_lava_water.y + 32) && (global.theme == "castle" || (global.theme == "forest" && global.night == 1) || (global.theme == "mountain" && global.night == 1))))
    instance_destroy()
