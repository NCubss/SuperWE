if (global.style == 0)
{
    sprite_index = spr_SMB_donut
    s_donut = spr_SMB_donut
    s_donut_fall = spr_SMB_donut_fall
    if (global.theme == "snow" && global.night == 1)
        image_index = 5
    else if (global.theme == "snow")
        image_index = 4
    else if (global.theme == "castle")
        image_index = 3
    else if (global.theme == "underwater")
        image_index = 2
    else if (global.theme == "underground" || global.theme == "ghost" || global.night == 1)
        image_index = 1
    else
        image_index = 0
}
else if (global.style == 1)
{
    sprite_index = spr_SMB3_donut
    s_donut = spr_SMB3_donut
    s_donut_fall = spr_SMB3_donut_fall
    if (global.theme == "snow" && global.night == 1)
        image_index = 3
    else if (global.theme == "castle")
        image_index = 2
    else if (global.theme == "underground" || global.theme == "ghost" || global.night == 1)
        image_index = 1
    else
        image_index = 0
}
else if (global.style == 2)
{
    s_donut = spr_donut
    s_donut_fall = spr_donut_fall
    image_index = 0
}
else if (global.style == 3)
{
    s_donut = spr_NSMBU_donut
    s_donut_fall = spr_NSMBU_donut_fall
    image_index = 0
}
image_speed = 0
shake = 0
delito = 0
crecer = 0
return_wings = 0
ready = 0
wings = 0
wings_anim = 0
if (global.style == 0)
    sprite_wings = spr_SMB_wings_16x16
else if (global.style == 1)
    sprite_wings = spr_SMB3_wings2
else
    sprite_wings = spr_wings_items
alarm[10] = 4

