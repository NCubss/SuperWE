if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    dark = 1
else
    dark = 0
switch global.style
{
    case 0:
        if (dark == 1)
            sprite_index = spr_SMB_chainchomp_night_b
        else
            sprite_index = spr_SMB_chainchomp_b
        s_chain = spr_SMB_chainchomp_chain_b
        break
    case 1:
        if (dark == 1)
            sprite_index = spr_SMB3_chainchomp_night_b
        else
            sprite_index = spr_SMB3_chainchomp_b
        s_chain = spr_SMB3_chainchomp_chain_b
        break
    case 2:
        sprite_index = spr_chainchomp_b
        s_chain = spr_chainchomp_chain_b
        break
    case 3:
        sprite_index = spr_NSMBU_chainchomp_b
        s_chain = spr_NSMBU_chainchomp_chain_b
        break
}

hardness = 0
stomp = 1
edible = 0
direct = -1
dead_h = 0
modo_lava = 0
wings = 0
swimming = 0
paracaidas = 0
fallow_chomp = 1
apilar = 0
sound = 0
alarm[10] = 2
if (global.style == 3)
    image_speed = 0.3
else
    image_speed = 0.15
followers = 5
closeness = 14
amount_previous = 80
for (i = 0; i < amount_previous; i += 1)
{
    oldx[i] = x
    oldy[i] = y
}
