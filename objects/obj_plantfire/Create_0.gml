switch global.style
{
    case 0:
        sprite_index = spr_SMB_fireball
        break
    case 1:
        sprite_index = spr_SMB3_fireball
        break
    case 3:
        sprite_index = spr_NSMBU_fireball
        break
}

if (global.style == 3)
{
    image_speed = 0.25
    alarm[0] = 5
}
else
    image_speed = 0.15

