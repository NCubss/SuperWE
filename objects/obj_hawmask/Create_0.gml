if ((global.theme == "castle") || ((global.theme == "underground") || ((global.theme == "ghost") || (global.night == 1))))
    sprite_index = spr_SMB2_hawmask_night
image_speed = 0
image_index = 0
ready = 0
ready2 = 0
solido = instance_create((x + 16), y, obj_solid)
with (solido)
    image_yscale = 4
if (global.night == 1)
    sprite_cover = spr_SMB2_goal_ground_night
else
    sprite_cover = spr_SMB2_goal_ground
if (global.theme == "underground")
    index_cover = 1
else if (global.theme == "castle")
    index_cover = 2
else if (global.theme == "underwater")
    index_cover = 3
else if (global.theme == "ghost")
    index_cover = 4
else if ((global.theme == "airship") || (global.theme == "sky"))
    index_cover = 5
else if (global.theme == "desert")
    index_cover = 6
else if (global.theme == "forest")
    index_cover = 7
else if (global.theme == "snow")
    index_cover = 8
else
    index_cover = 0

