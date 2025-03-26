audio_play_sound(snd_helmet_remove, 0, false)
imdead = instance_create(x, (y + 8), obj_enemy_dead)
imdead.girar = 1
if (object_index == obj_kuriboshoe2)
{
    if (global.style == 0)
        imdead.sprite_index = spr_SMB_shoe_stiletto_dead
    else
        imdead.sprite_index = spr_shoe_stiletto_dead
}
else if (global.style == 0)
    imdead.sprite_index = spr_SMB_shoe_dead
else
    imdead.sprite_index = spr_shoe_dead
imdead.image_index = 0
if (obj_mario.hspeed == 0)
{
    if ((obj_mario.bbox_left + (obj_mario.bbox_right / 2)) < (bbox_left + (bbox_right / 2)))
        imdead.hspeed = 1
    else if ((obj_mario.bbox_left + (obj_mario.bbox_right / 2)) > (bbox_left + (bbox_right / 2)))
        imdead.hspeed = -1
}
else if (obj_mario.hspeed > 0)
    imdead.hspeed = 1
else if (obj_mario.hspeed < 0)
    imdead.hspeed = -1
instance_destroy()
