if (hspeed == 0)
{
    if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 0))
        hspeed = (0.3 * direct)
    else
        hspeed = (0.5 * direct)
}
if (wings == 1 && inup == 0)
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        var dark = 1
    else
        dark = 0
    switch global.style
    {
        case 0:
            sprite_index = spr_SMB_buzzybeetle_wings
            image_speed = 0
            if (dark == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 1:
            sprite_index = spr_SMB3_buzzybeetle_wings
            image_speed = 0
            if (dark == 1)
                image_index = 1
            else
                image_index = 0
            break
        case 2:
            sprite_index = spr_buzzybeetle_wings
            break
        case 3:
            sprite_index = spr_NSMBU_buzzybeetle_wings
            image_speed = 0.3
            break
    }

    if (mytopid == obj_lighting)
        mytopid = instance_create((x - 8), y, obj_solidtop)
    stomp = 6
}
