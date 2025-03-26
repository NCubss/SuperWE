var dark;
if collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_solidtop,0,0)
or collision_rectangle(bbox_left,bbox_bottom+1,bbox_right,bbox_bottom+1,obj_slopeparent,0,0)
{
with (instance_create(x, y, obj_shell))
{
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        dark = 1
    else
        dark = 0
    sprite_index = other.sprite_index
    direct = other.direct
    koopainside = -1
    hardness = 100
    flip = 1
    alarm[3] = 540
    alarm[4] = 640
}
instance_destroy()
}