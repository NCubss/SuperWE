with (instance_create(x, y, obj_smoke))
{
    sprite_index = spr_effect_transform
    image_speed = 0.3
}
switch transform
{
    case 1:
        global.coin10 = 1
        instance_create(x, y, obj_coin30_res)
        break
    case 2:
        global.coin10 = 2
        instance_create(x, y, obj_coin50_res)
        break
	case 3:
		instance_create(x, y, obj_coin_star_res)
}

if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_coin10_res || obj == obj_coin30_res || obj == obj_coin50_res || obj == obj_coin_star)
        {
            switch other.transform
            {
                case 1:
                    obj = obj_coin30_res
                    obj_draw = 48
                    break
                case 2:
                    obj = obj_coin50_res
                    obj_draw = 49
                    break
				case 3:
					obj = obj_coin_star_res
					obj_draw = 234
					break
            }

        }
    }
}
instance_destroy()
