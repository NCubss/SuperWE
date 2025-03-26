if ((global.theme == "castle") || ((global.theme == "underground") || ((global.theme == "ghost") || (global.night == 1))))
{
    sprite_index = spr_SMB2_crystalorb_night
    index_soporte = 1
}
else
    index_soporte = 0
show = 1
image_speed = 0.15
instance_create((x + 64), (y - 32), obj_hawmask)
soporte = instance_create((x - 16), (y + 16), obj_solid)
with (soporte)
    image_xscale = 3

