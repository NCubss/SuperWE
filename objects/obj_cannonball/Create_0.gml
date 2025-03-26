switch global.style
{
    case 0:
        sprite_index = spr_SMB_cannonball
        break
    case 1:
        sprite_index = spr_SMB3_cannonball
        break
    case 2:
        sprite_index = spr_cannonball
        break
    case 3:
        sprite_index = spr_NSMBU_cannonball
        break
}

if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    image_index = 1
else
    image_index = 0
image_speed = 0
hardness = 1
stomp = 0
edible = 0
direct = 1
apilar = 0
alarm[0] = 15

