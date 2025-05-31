snow_sys = part_system_create()
ind = 1
direct = 255
snow = part_type_create()
switch global.style
{
    case 0:
        if (global.night == 1)
        {
            sprite = spr_snow_night
            direct = 270
        }
        else
            sprite = spr_SMB_snow
        break
    case 1:
        if (global.night == 1)
        {
            sprite = spr_snow_night
            direct = 270
        }
        else
            sprite = spr_snow
        break
    case 2:
        if (global.night == 1)
        {
            sprite = spr_snow_night
            direct = 270
        }
        else
            sprite = spr_snow
        break
    case 3:
        if (global.night == 1)
        {
            sprite = spr_NSMBU_snow_night
            direct = 270
        }
        else
            sprite = spr_snow
        break
}

if (global.night == 1)
{
    part_type_sprite(snow, sprite, 1, 0, 0)
    part_system_depth(snow_sys, 250)
}
else
{
    part_type_sprite(snow, sprite, 0, 0, 0)
    part_system_depth(snow_sys, -8)
}
if (global.style == 0)
    part_type_size(snow, 0.9, 1, 0, 0)
else
    part_type_size(snow, 0.5, 1, 0, 0)
part_type_life(snow, 216, 432)
part_type_alpha1(snow, 0.8)
part_type_speed(snow, 0.3, 0.5, 0, 0)
part_type_direction(snow, 255, 285, 0.05, 0.1)
part_type_colour1(snow, 16777215)
emitter = part_emitter_create(snow_sys)
part_emitter_stream(snow_sys, emitter, snow, 1)
part_emitter_region(snow_sys, emitter, (camera_x - 600), ((camera_x + camera_width) + 600), camera_y, camera_y, 3, 0)
part_system_update(snow_sys)

