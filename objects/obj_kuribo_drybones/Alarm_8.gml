if (salpicadura == 1)
{
    if (instance_exists(obj_mario) && instance_exists(obj_lava_water))
    {
        if (obj_mario.state == 1)
        {
            if (global.theme == "forest" && global.night == 1)
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

            }
			else if (global.theme == "mountain" && global.night == 1)
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
            else if (global.theme == "forest" || global.theme == "beach")
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
            else
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
            with (instance_create((x - 16), (obj_lava_water.y - 20), obj_smoke))
            {
                sprite_index = other.sprite_l
                depth = -9
            }
            with (instance_create((x + 16), (obj_lava_water.y - 20), obj_smoke))
            {
                sprite_index = other.sprite_l
                depth = -9
            }
            alarm[8] = 30
        }
        else
            alarm[8] = 1
    }
}
