if (global.style == 0 or global.style == 1)
     audio_play_sound(snd_SMB3_break, 0, false)
else if global.style == 3
     audio_play_sound(snd_NSMBU_rocks_break, 0, false)
else
     audio_play_sound(snd_break, 0, false)
with (instance_create((x + 4), (y + 8), obj_shard))
    {
		switch global.style
		{
			case 3:
			{
				sprite_index = spr_NSMBU_meteorite_shard_big
				break
			}
			default:
			{
				sprite_index = spr_volcanic_parts
				image_index = global.style
			}
		}
        motion_set(45, 6)
    }
    with (instance_create((x + 4), (y + 8), obj_shard))
    {
		switch global.style
		{
			case 3:
			{
				sprite_index = spr_NSMBU_meteorite_shard_big
				break
			}
			default:
			{
				sprite_index = spr_volcanic_parts
				image_index = global.style
			}
		}
        motion_set(60, 6)
    }
    with (instance_create((x + 4), (y + 8), obj_shard))
    {   
		switch global.style
		{
			case 3:
			{
				sprite_index = spr_NSMBU_meteorite_shard_big
				break
			}
			default:
			{
				sprite_index = spr_volcanic_parts
				image_index = global.style
			}
		}
        motion_set(120, 6)
    }
    with (instance_create((x + 4), (y + 8), obj_shard))
    {
		switch global.style
		{
			case 3:
			{
				sprite_index = spr_NSMBU_meteorite_shard_big
				break
			}
			default:
			{
				sprite_index = spr_volcanic_parts
				image_index = global.style
			}
		}
        motion_set(135, 6)
    }
