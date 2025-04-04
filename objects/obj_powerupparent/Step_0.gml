if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
    swimming = 1
else
    swimming = 0
if ((instance_exists(obj_lava_water) && y > obj_lava_water.y && global.theme == "castle") || (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.theme == "forest" && global.night == 1) || (instance_exists(obj_lava_water) && y > obj_lava_water.y && global.theme == "mountain" && global.night == 1))
{
    with (instance_create(x, y, obj_smoke))
        depth = -10
    instance_destroy()
}
if (progresivo == 1 && (!outside_view()))
{
    if (global.powerup == 0)
    {
        with (instance_create(x, y, obj_mushroom))
        {
            wings = other.wings
            paracaidas = other.paracaidas
        }
        instance_destroy()
    }
}
if ((wings == 0 || paracaidas == 1) && object_index != obj_propellershroom)
{
    event_user(3)
    event_user(4)
}
if (paracaidas == 1)
{
    if (x > (xstart + 16))
    {
        if (hspeed < -0.5)
            hspeed = -0.5
        else
            hspeed -= 0.015
    }
    else if (x < (xstart - 16))
    {
        if (hspeed > 0.5)
            hspeed = 0.5
        else
            hspeed += 0.015
    }
    if (gravity == 0)
    {
        instance_create((x + 8), y, obj_paracaidas_go)
        paracaidas = 0
        ystart = (y - 32)
        y++
        hspeed = 0
        alarm[10] = 10
    }
}
if (wings == 1 && paracaidas == 0)
{
    if (!instance_exists(obj_deadmario))
    {
        if (global.style == 3)
            wings_anim += 0.5
        else
            wings_anim += 0.12
    }
    if (y > (ystart + 16))
    {
        if (vspeed < -0.5)
            vspeed = -0.5
        else
            vspeed -= 0.085
    }
    else if (y < (ystart - 16))
    {
        if (vspeed > 0.5)
            vspeed = 0.5
        else
            vspeed += 0.085
    }
}
