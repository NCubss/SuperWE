/// @description	Slam to ground with cape

audio_play_sound(snd_thwomp_original, 0, false)
if instance_exists(obj_levelmanager)
{
	with (obj_levelmanager)
		alarm[11] = 1
}
if instance_exists(obj_enemyparent)
{
	with (obj_enemyparent)
	{
		if (vspeed == 0 && hardness < 99 && object_index != obj_grinder && x < (camera_x + 404) && x > (camera_x - 20) && y > (camera_y - 20) && y < (camera_y + 236))
		{
			dead_h = 1
			event_user(0)
		}
	}
}
if instance_exists(obj_boomboom)
{
	with (obj_boomboom)
	{
		if (vspeed == 0 && x < (camera_x + 404) && x > (camera_x - 20) && y > (camera_y - 20) && y < (camera_y + 236))
		{
			dead_h = 1
			event_user(0)
		}
	}
}
if instance_exists(obj_muncher)
{
	with (obj_muncher)
	{
		if (vspeed == 0 && x < (camera_x + 404) && x > (camera_x - 20) && y > (camera_y - 20) && y < (camera_y + 236))
		{
			dead_h = 1
			event_user(0)
		}
	}
}

