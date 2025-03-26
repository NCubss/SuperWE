instance_destroy()
if (global.theme == "snow")
{
    sprite_index = spr_SMB_spike_ball
    image_index = 2
}
else if ((global.theme == "castle") || ((global.theme == "underground") || ((global.theme == "ghost") || (global.night == 1))))
{
    sprite_index = spr_SMB2_veggies_night
    image_index = choose(0, 1, 2, 3, 4, 5, 6)
}
else
    image_index = choose(0, 1, 2, 3, 4, 5, 6)
image_speed = 0
held = 1
snowball = 0
enemy = 0
hold = 0
cloud = 0
obj = 25
sprite = 3579
swimming = 0
ready = 0
inmune = 1
direct = 1
altura = (sprite_width / 2)
bill = 0
cont = 0
alarm[10] = 1

