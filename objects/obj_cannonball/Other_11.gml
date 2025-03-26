imdead = instance_create(x, y, obj_enemy_dead)
imdead.direct = 1
imdead.sprite_index = sprite_index
imdead.image_speed = 0
if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
    imdead.image_index = 1
else
    imdead.image_index = 0
imdead.vspeed = 0.1
imdead.alarm[0] = -1
instance_destroy()

