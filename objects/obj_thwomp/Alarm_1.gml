var sprite_l;
if (salpicadura == 1)
{
    if instance_exists(obj_lava_water)
    {
        if (obj_lava_water.vspeed != 0)
        {
            if (global.theme != "forest" && (!audio_is_playing(snd_podoboo)))
                audio_play_sound(snd_podoboo, 0, false)
            switch global.theme
            {
                case "castle":
                    switch global.style
                    {
                        case 1:
                            sprite_l = spr_SMB3_megasplash_lava
                            break
                        case 3:
                            sprite_l = spr_NSMBU_splash_lava
                            break
                        default:
                            sprite_l = spr_megasplash_lava
                    }

                    break
				case "mountain":
				if (global.night == 1)
				{
                    switch global.style
                    {
                        case 1:
                            sprite_l = spr_SMB3_megasplash_lava
                            break
                        case 3:
                            sprite_l = spr_NSMBU_splash_lava
                            break
                        default:
                            sprite_l = spr_megasplash_lava
                    }
					}
                    break
                default:
                    if (global.night == 1)
                    {
                        switch global.style
                        {
                            case 1:
                                sprite_l = spr_SMB3_megasplash_poison
                                break
                            case 3:
                                sprite_l = spr_NSMBU_splash_poison
                                break
                            default:
                                sprite_l = spr_megasplash_lava_purple
                        }

                        break
                    }
                    else
                    {
                        switch global.style
                        {
                            case 1:
                                sprite_l = spr_SMB3_megasplash_water
                                break
                            case 3:
                                sprite_l = spr_NSMBU_splash_water
                                break
                            default:
                                sprite_l = spr_megasplash_water
                        }

                    }
            }

            with (instance_create((x - 16), (obj_lava_water.y - 16), obj_smoke))
            {
                sprite_index = other.sprite_l
                depth = -9
            }
            with (instance_create((x + 16), (obj_lava_water.y - 16), obj_smoke))
            {
                sprite_index = other.sprite_l
                depth = -9
            }
            alarm[1] = 12
        }
        else
            alarm[1] = 1
    }
}
