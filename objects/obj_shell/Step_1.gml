if (sacudirse == 1)
{
    if (shake == 0)
    {
        if (rotacion > -10)
            rotacion -= 5
        else
            shake = 1
    }
    else if (shake == 1)
    {
        if (rotacion < 10)
            rotacion += 5
        else
            shake = 0
    }
}
if (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "castle")
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create((x + 8), y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_speed = 0
        direct = 1
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 1)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_posion)
    with (instance_create((x + 8), y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_speed = 0
        direct = 1
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "mountain" && global.night == 1)
{
    if (global.style != 0)
        instance_create(x, (obj_lava_water.y - 26), obj_splash_lava)
    with (instance_create((x + 8), y, obj_enemyparent_lava))
    {
        sprite_index = other.sprite_index
        image_speed = 0
        direct = 1
    }
    instance_destroy()
}