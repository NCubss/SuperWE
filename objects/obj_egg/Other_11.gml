if (global.style < 2)
{
    with (instance_create(x, y, obj_getshoe))
    {
        dir = other.direct
        if (other.object_index == obj_egg_red)
        {
            bota = 2
            switch global.style
            {
                case 0:
                    sprite_index = spr_SMB_kuriboshoe2
                    break
                case 1:
                    sprite_index = spr_kuriboshoe2
                    break
            }

        }
        else
        {
            switch global.style
            {
                case 0:
                    sprite_index = spr_SMB_kuriboshoe
                    break
                case 1:
                    sprite_index = spr_kuriboshoe
                    break
            }

        }
    }
    event_user(7)
}
