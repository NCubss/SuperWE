var coli_red, coli_blue, coli_flip;
event_inherited()
if (global.style == 3 && anim_shoot > 0)
{
    if (anim_shoot >= 12.5)
        anim_shoot = 0
    else
        anim_shoot += 0.5
}
if (!instance_exists(mybullet))
    mybullet = -4
if (!instance_exists(mybullet2))
    mybullet2 = -4
if (solidtop != obj_lighting && instance_exists(solidtop))
{
    solidtop.x = x
    solidtop.y = y
}
if (instance_exists(obj_mario) && place_meeting(x, y, obj_mario) && (obj_mario.y + 16) >= y)
{
    if (obj_mario.x > (x + 8))
    {
        with (obj_mario)
            x++
    }
    else
    {
        with (obj_mario)
            x--
    }
}
if (gravity == 0)
{
    hspeed = (max(0, (abs(hspeed) - 0.1)) * sign(hspeed))
    if (abs(hspeed) < 0.1)
        hspeed = 0
}
coli_red = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_onoffplatform, 0, 0)
coli_blue = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_onoffplatform_blue, 0, 0)
coli_flip = collision_rectangle(bbox_left, (bbox_top + 4), bbox_right, (bbox_bottom - 1), obj_flipblock, 0, 0)
if ((coli_red && coli_red.image_index == 1 && obj_levelmanager.editor == 0 && x > camera_x && x < (camera_x + 384) && y > camera_y && y < (camera_x + 216)) || (coli_blue && coli_blue.image_index == 1 && obj_levelmanager.editor == 0 && x > camera_x && x < (camera_x + 384)))
    event_user(0)
if (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach") && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_agua)
}
if (instance_exists(obj_lava_water) && (y + 8) >= (obj_lava_water.y - 12) && global.theme == "castle" && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    modo_lava = 1
}
if (instance_exists(obj_lava_water) && (y + 8) >= obj_lava_water.y && global.theme == "forest" && global.night == 1 && modo_lava == 0)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    modo_lava = 1
}

