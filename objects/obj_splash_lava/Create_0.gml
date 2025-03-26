switch global.style
{
    case 1:
        sprite_index = spr_SMB3_splash_lava
        break
    case 3:
        sprite_index = spr_NSMBU_splash_lava
        break
}

if (global.style == 3)
    image_speed = 0.5
else
    image_speed = 0.2

