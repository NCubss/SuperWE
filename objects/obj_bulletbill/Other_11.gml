imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = direct
imdead.sprite_index = sprite_index
imdead.image_speed = 0
if (global.style != 3)
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        imdead.image_index = 1
    else
        imdead.image_index = 0
}
else
    imdead.image_index = image_index
imdead.hspeed = 0.6
imdead.vspeed = 0.1
imdead.alarm[0] = -1
instance_destroy()

