switch global.style
{
    case 0:
        sprite_index = spr_SMB_points
        break
    case 3:
        sprite_index = spr_NSMBU_points
        break
}

image_speed = 0
ready = 0
limit = 0
if (global.style == 3)
    alarm[1] = 150
else
{
    alarm[2] = 30
    alarm[0] = 1
}

