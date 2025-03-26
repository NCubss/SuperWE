if (obj_persistent.modo_android == 1 && global.controles_tactiles == 1)
{
    with (obj_persistent)
    {
        event_user(4)
        event_user(5)
    }
}
image_speed = 0.5
if global.language = 0
	sprite_index = spr_timeup
else if global.language = 2
	sprite_index = spr_timeup_it
else
	sprite_index = spr_timeup_en