if (os_type != os_android)
{
#macro DISCORD_APP_ID "699637175360421948"

pronto = false;

alarm[9] = room_speed * 5;
/*
if (!np_initdiscord(DISCORD_APP_ID, true, np_steam_app_id_empty))
{
	show_error("NekoPresence init fail.", true);
}
/**/
}
if (os_type == os_android)
	sleep_tm = 4

else
	sleep_tm = 10

// load settings file (json format)
load_config();
alarm[5] = 1
audio_play_sound(snd_changeleaf, 0, false)
alarm[4] = 260
alarm[11] = 1

if (os_type == os_android)
{
	if (os_check_permission("android.permission.WRITE_EXTERNAL_STORAGE") == os_permission_denied)
	{
		os_request_permission("android.permission.WRITE_EXTERNAL_STORAGE");
	}
}

instance_create_depth(0, 0, 0, obj_cheat_mode);