switch global.style
{
    case 0:
        sprite_index = spr_SMB_bulletbill
        break
    case 1:
        sprite_index = spr_SMB3_bulletbill
        break
    case 2:
        sprite_index = spr_bulletbill
        break
    case 3:
        sprite_index = spr_NSMBU_bulletbill
        break
}

if (global.style == 3)
    image_speed = 0.15
else
    image_speed = 0
if (global.style != 3)
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        image_index = 1
    else
        image_index = 0
}
hardness = 1
stomp = 0
edible = 0
direct = -1
dead_h = 0
wings = 0
w_wings = 0
swimming = 0
modo_lava = 0
apilar = 0
anim = 0
alarm[0] = 15
if (global.style != 0 && global.style != 3)
    alarm[1] = 10

