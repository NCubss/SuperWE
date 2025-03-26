if (global.style == 3 && global.theme == "ground" && global.night == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_camera[0])))
    __background_set( e__BG.X, 1, lerp(0,camera_get_view_x(view_camera[0]), 0.9) -spd ) 
	__background_set( e__BG.X, 2, lerp(0,camera_get_view_x(view_camera[0]), 0.8)) 
	__background_set( e__BG.X, 3, lerp(0,camera_get_view_x(view_camera[0]), 0.7)) 
	__background_set( e__BG.X, 4, lerp(0,camera_get_view_x(view_camera[0]), 0.6)) 
	__background_set( e__BG.X, 5, lerp(0,camera_get_view_x(view_camera[0]), 0.5)) 
	__background_set( e__BG.X, 7, lerp(0,camera_get_view_x(view_camera[0]), 0.4)) 
}
else if (global.style == 3 && global.night == 0 && editor == 0 && (global.theme == "sky"))
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
	else if (global.style == 3 && global.night == 1 && editor == 0 && (global.theme == "airship"))
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
else if (global.style == 3 && global.night == 0 && (global.theme == "forest"))
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.style == 3 && global.night == 0 && (editor == 1 && (global.theme == "sky")))
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.style == 3 && global.night == 1 && (editor == 1 && (global.theme == "airship")))
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.style == 3 && global.theme == "snow")
{
    if (global.night == 0)
    {
        if (editor == 0)
            spd += 0.1
        else
            spd = 0
        __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 0.9) )
        __background_set( e__BG.X, 1, ((camera_get_view_x(view_get_camera(0)) * 0.8) - spd) )
        __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.7) )
        __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.6) )
        __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.5) )
        __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.4) )
    }
    else
    {
        __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 0.7) )
        __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.6) )
        __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.5) )
        __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.4) )
        __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.3) )
    }
}
else if (global.style == 3 && global.theme == "desert" && global.night == 0)
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 1) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
}
else if (global.style == 3 && global.theme == "beach" && global.night == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 1) )
    __background_set( e__BG.X, 1, ((camera_get_view_x(view_get_camera(0)) * 0.9) - spd) )
    __background_set( e__BG.X, 2, ((camera_get_view_x(view_get_camera(0)) * 0.8) - (spd * 2)) )
    __background_set( e__BG.X, 3, ((camera_get_view_x(view_get_camera(0)) * 0.7) - (spd * 3)) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
}
else if (global.style == 3 && global.theme == "sky" && global.night == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 1) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
	__background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.style == 3 && global.theme == "airship" && global.night == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, ((camera_get_view_x(view_get_camera(0)) * 0.6) - spd) )
    __background_set( e__BG.X, 5, ((camera_get_view_x(view_get_camera(0)) * 0.5) - (spd * 2)))
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.style == 3 && global.theme == "airship" && global.night == 1)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 1) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.style == 3 && global.theme == "mountain" && global.night == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
	__background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
	__background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.9) ) 
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) ) 
    __background_set( e__BG.X, 3, ((camera_get_view_x(view_get_camera(0)) * 0.7 - spd) ) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
	__background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
}
else if (global.style == 3 && global.theme == "mountain" && global.night == 1)
{
   if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
	__background_set( e__BG.X, 1, ((camera_get_view_x(view_get_camera(0)) * 0.9) ) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 4, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 5, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 7, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
else if (global.style == 3 && global.theme == "fall" && global.night == 0)
{
    if (editor == 0)
        spd += 0.1
    else
        spd = 0
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0))) )
    __background_set( e__BG.X, 1, ((camera_get_view_x(view_get_camera(0)) * 0.9) - spd))
	__background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 3, (camera_get_view_x(view_get_camera(0)) * 0.7) )
}
else if (global.style == 3 && global.theme != "sky" && global.theme != "airship" && global.theme != "mountain" && global.theme != "fall" && global.theme != "ground" && global.theme != "snow" && global.theme != "desert" && global.theme != "beach")
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 0.8) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.7) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.6) )
}
else if (global.style == 2 && global.theme != "sky" && global.theme != "airship")
{
    __background_set( e__BG.X, 0, (camera_get_view_x(view_get_camera(0)) * 0.6) )
    __background_set( e__BG.X, 1, (camera_get_view_x(view_get_camera(0)) * 0.5) )
    __background_set( e__BG.X, 2, (camera_get_view_x(view_get_camera(0)) * 0.4) )
}
