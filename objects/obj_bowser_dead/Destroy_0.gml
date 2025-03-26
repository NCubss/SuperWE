if (global.theme != "castle" && global.theme != "forest")
{
    if instance_exists(obj_levelmanager)
    {
        with (obj_levelmanager)
        {
            dead_bowser = 1
            if (global.style == 0 || global.style == 3)
                alarm[11] = 90
            else
                alarm[11] = 120
        }
    }
}

