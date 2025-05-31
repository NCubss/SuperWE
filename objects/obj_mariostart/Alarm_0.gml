visible = true
if (global.dsm == 0)
    var pos = 192
else
    pos = 176
if (global.style == 3)
    var posyy = 124
else
    var posyy = 100
instance_create((camera_x + pos), (camera_y + posyy), obj_mariostart_m)


