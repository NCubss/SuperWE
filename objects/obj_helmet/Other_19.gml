if instance_exists(obj_mario)
{
    if (global.style == 0)
    {
        if instance_exists(obj_kuriboshoe)
        {
            var off = obj_kuriboshoe.offset
            if (global.powerup == 0 || global.powerup == -85)
            {
                if (obj_mario.isduck == 1)
                    pos_y = 12
                else
                    pos_y = (9 - off)
            }
            else if (global.powerup == -77)
            {
                if (obj_mario.isduck == 1)
                    pos_y = -8
                else
                    pos_y = (-14 - off)
            }
            else if (obj_mario.isduck == 1)
                pos_y = 11
            else
                pos_y = (7 - off)
        }
        else if instance_exists(obj_kuribo_drybones)
        {
            off = obj_kuribo_drybones.offset
            if (global.powerup == 0 || global.powerup == -85)
            {
                if (obj_mario.isduck == 1)
                    pos_y = 12
                else
                    pos_y = (10 - off)
            }
            else if (obj_mario.isduck == 1)
                pos_y = 10
            else
                pos_y = (7 - off)
        }
        else if (global.powerup == 0 || global.powerup == -85)
        {
            if (obj_mario.isduck == 1)
                pos_y = 19
            else
                pos_y = 16
        }
        else if (global.powerup == -78)
        {
            if (obj_mario.isduck == 1)
                pos_y = 13
            else
                pos_y = 0
        }
        else if (global.powerup == -77)
        {
            if (obj_mario.isduck == 1)
                pos_y = 8
            else
                pos_y = 0
        }
        else if (obj_mario.isduck == 1)
            pos_y = 11
        else
            pos_y = 2
    }
    else if (global.style == 1)
    {
        if instance_exists(obj_kuriboshoe)
        {
            off = obj_kuriboshoe.offset
            if (global.powerup == 0)
            {
                if (obj_mario.isduck == 1)
                    pos_y = 12
                else
                    pos_y = (9 - off)
            }
            else if (obj_mario.isduck == 1)
                pos_y = 12
            else
                pos_y = (8 - off)
        }
        else if instance_exists(obj_kuribo_drybones)
        {
            off = obj_kuribo_drybones.offset
            if (global.powerup == 0)
            {
                if (obj_mario.isduck == 1)
                    pos_y = 11
                else
                    pos_y = (9 - off)
            }
            else if (obj_mario.isduck == 1)
                pos_y = 10
            else
                pos_y = (5 - off)
        }
        else if (global.powerup == 0)
        {
            if (obj_mario.isduck == 1)
                pos_y = 20
            else
                pos_y = 17
        }
        else if (obj_mario.isduck == 1)
            pos_y = 17
        else
            pos_y = 8
    }
    else if (global.style == 2)
    {
        if instance_exists(obj_kuribo_drybones)
        {
            if (obj_mario.state == 0)
                off = obj_kuribo_drybones.offset
            else
                off = (obj_kuribo_drybones.offset - 2)
            if (global.powerup == 0)
            {
                if (obj_mario.isduck == 1)
                    pos_y = 11
                else
                    pos_y = (9 - off)
            }
            else if (obj_mario.isduck == 1)
                pos_y = 10
            else
                pos_y = (7 - off)
        }
        else if instance_exists(obj_yoshi2)
        {
            if obj_yoshi2.licking
            {
                if (obj_yoshi2.jumping == 0)
                {
                    if (global.powerup == 0)
                        pos_y = 8
                    else
                        pos_y = 3
                }
                else if (obj_yoshi2.locked == 2)
                {
                    if (global.powerup == 0)
                        pos_y = 9
                    else
                        pos_y = 3
                }
                else if (global.powerup == 0)
                    pos_y = 4
                else
                    pos_y = -1
            }
            else if (global.powerup == 0)
            {
                if (obj_mario.isduck == 1)
                    pos_y = 13
                else
                    pos_y = 3
            }
            else if (obj_mario.isduck == 1)
                pos_y = 10
            else
                pos_y = -1
        }
        else if (global.powerup == 0)
        {
            if ((obj_mario.isup == 1 || obj_mario.isuphold == 1) && obj_mario.state == 0)
                pos_y = 15
            else if (obj_mario.isduckhold == 1)
                pos_y = 18
            else if (obj_mario.isduck == 1)
                pos_y = 20
            else
                pos_y = 14
        }
        else if ((obj_mario.isup == 1 || obj_mario.isuphold == 1) && obj_mario.state == 0)
            pos_y = 11
        else if (obj_mario.isduckhold == 1)
            pos_y = 15
        else if (obj_mario.isduck == 1)
            pos_y = 19
        else
            pos_y = 8
    }
}
