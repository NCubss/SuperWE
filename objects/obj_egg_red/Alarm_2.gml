if (global.style == 1)
{
    anim++
    alarm[2] = 7
}
else if (global.style == 2)
{
    if (instance_number(obj_yoshi_abandon) < 2 && instance_number(obj_egg_hatch) < 2)
    {
        with (instance_create((x - 3), (y - 16), obj_egg_hatch))
        {
            color = 1
            sprite_index = spr_hatch_red
        }
    }
    instance_destroy()
    instance_destroy()
}
