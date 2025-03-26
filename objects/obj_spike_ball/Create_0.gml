if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    sud_imagen = 1
else
    sud_imagen = 0
switch global.style
{
    case 0:
        imagen = spr_SMB_spike_ball
        break
    case 1:
        imagen = spr_SMB3_spike_ball
        break
    case 2:
        imagen = spr_spike_ball
        break
    case 3:
        imagen = spr_NSMBU_spike_ball
        break
}

image_speed = 0
s_part = spr_spike_ball_part
spike_alone = 0
spike_alone_a = 0
fisica = 0
direct_spike = -1
angle = 0
ready = 0
enemy_dead = 0
swimming = 0
modo_lava = 0
paracaidas = 0
alarm[10] = 2
