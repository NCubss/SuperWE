if (global.instance_deactivate == 1)
{
	if (obj_levelmanager.editor == 0)
	{
		instance_deactivate_object(obj_ground2)
		instance_deactivate_object(obj_solidtop)
		instance_activate_region((camera_x - 128), -96, ((camera_width + 128) + 128), (room_height + 192), true)
		instance_deactivate_object(obj_deactivation)
		instance_activate_region((camera_x - 128), -96, ((camera_width + 128) + 128), (room_height + 192), true)
		instance_deactivate_object(obj_modelbgo)
		instance_deactivate_object(obj_parent_sound_o)
		instance_activate_region((camera_x - 32), (camera_y - 32), ((camera_width + 32) + 32), ((camera_height + 32) + 32), true)
		instance_deactivate_object(obj_parent_save)

	}
	else
	{
		with (obj_parent_save)
		{
			if (exception == 0)
			{
				if object_is_ancestor(object_index, obj_parent_resource)
				{
					if (drag == 0)
						instance_deactivate_object(id)
				}
				else
					instance_deactivate_object(id)
			}
		}
		instance_deactivate_object(obj_ground)
		instance_deactivate_object(obj_slopes)
		instance_deactivate_object(obj_ground2)
		instance_activate_region((camera_x - 32), (camera_y - 32), ((camera_width + 32) + 32), ((camera_height + 32) + 32), true)
	}
}
alarm[2] = 2