if ((global.theme == "forest" and (global.style == 3 or global.style == 0)) || global.theme == "castle" || global.theme == "underground" || global.theme == "ghost" || global.night == 1)
{
    sprite = spr_letters_white
    dark = 1
}
else
{
    sprite = spr_letters
    dark = 0
}
if (ready == 1)
{
    if instance_exists(obj_mario)
    {
        with (obj_mario)
            disablecontrols = 1
    }
    alarm[2] = 1;
	ready = 0;
}
