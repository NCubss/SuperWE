if (global.theme == "underwater" || (global.night == 1 && global.theme == "sky") || (global.night == 1 && global.theme == "airship") || (instance_exists(obj_lava_water) && y > (obj_lava_water.y + 16) && global.theme == "forest" && global.night == 0))
{
    if (wings == 1)
        hspeed = (0.3 * direct)
    else
        hspeed = (0.5 * direct)
}
else if (wings == 1)
    hspeed = (0.5 * direct)
else
    hspeed = (0.7 * direct)
if (wings == 1 || paracaidas == 1)
{
    switch global.style
    {
        case 0:
            sprite_index = spr_SMB_bobomb_ready_wings
            break
        case 1:
            sprite_index = spr_SMB3_bobomb_ready_wings
            break
        case 2:
            sprite_index = spr_bobomb_ready_wings
            break
        case 3:
            sprite_index = spr_NSMBU_bobomb_hold
            break
    }

}
