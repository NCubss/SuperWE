if (inup == 0)
{
    if (paracaidas == 1)
    {
        direct = -1
        if (x > (xstart + 16))
        {
            if (hspeed < -0.5)
                hspeed = -0.5
            else
                hspeed -= 0.015
        }
        else if (x < (xstart - 16))
        {
            if (hspeed > 0.5)
                hspeed = 0.5
            else
                hspeed += 0.015
        }
        if (gravity == 0)
        {
            instance_create(x, y, obj_paracaidas_go)
            paracaidas = 0
            hspeed = 0
            alarm[10] = 10
        }
    }
    if (wings == 0)
    {
        if (global.theme == "underwater" || (global.night == 1 && global.theme == "airship") || (global.night == 1 && global.theme == "sky") || (instance_exists(obj_lava_water) && y >= obj_lava_water.y && ((global.theme == "forest" && global.night == 0) || global.theme == "beach")))
            swimming = 1
        else
            swimming = 0
        event_user(2)
        event_user(3)
        event_user(4)
        if (hspeed > 0)
            direct = 1
        else if (hspeed < 0)
            direct = -1
    }
    else
    {
        event_user(8)
        if (global.style == 3)
        {
            if (ready == 1)
                wings_anim += 1.5
            else
                wings_anim += 0.5
        }
        else if (ready == 1)
            wings_anim += 0.2
        else
            wings_anim += 0.12
        if (mytopid != obj_lighting && instance_exists(mytopid) && instance_exists(obj_mario))
        {
            mytopid.x = (x - 16)
            mytopid.y = (y - 10)
            var check = collision_rectangle(obj_mario.bbox_left, (obj_mario.bbox_bottom - 1), obj_mario.bbox_right, (obj_mario.bbox_bottom + 1), obj_solidtop, 0, 0)
            if (check && check != mytopid)
                exit
            if (collision_rectangle(bbox_left, (bbox_top - 5), bbox_right, (bbox_top + 4), obj_mario, 0, 0) && obj_mario.y < (bbox_top - 26) && obj_mario.state < 2)
            {
                obj_mario.y = ceil((bbox_top - 32))
                if ((hspeed > 0 && (!(collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0)))) || (hspeed < 0 && (!(collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_solid, 0, 0)))) || (hspeed > 0 && (!(collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_physicssolid, 0, 0)))) || (hspeed < 0 && (!(collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_physicssolid, 0, 0)))) || (hspeed > 0 && (!(collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_bullebill_base, 0, 0)))) || (hspeed < 0 && (!(collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_bullebill_base, 0, 0)))) || (hspeed > 0 && (!(collision_rectangle((obj_mario.bbox_right + hspeed), obj_mario.bbox_top, (obj_mario.bbox_right + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_right, 0, 0)))) || (hspeed < 0 && (!(collision_rectangle((obj_mario.bbox_left + hspeed), obj_mario.bbox_top, (obj_mario.bbox_left + hspeed), (obj_mario.bbox_bottom - 1), obj_onewaygate_left, 0, 0)))))
                    obj_mario.x += hspeed
            }
        }
    }
}
else
{
    if (ready == 0)
    {
        if instance_exists(obj_mario)
        {
            if (obj_mario.x > (x - 32) && obj_mario.x < (x + 32) && obj_mario.y > y)
            {
                hspeed = 0
                ready = 1
            }
        }
        if ((hspeed < 0 && (!(position_meeting(bbox_left, (y - 20), obj_solid)))) || (hspeed > 0 && (!(position_meeting(bbox_right, (y - 20), obj_solid)))))
            hspeed = (-hspeed)
        if (cankill == 1 && (!(place_meeting(x, (y - 24), obj_solid))) && (!(place_meeting(x, (y - 24), obj_physicssolid))))
            event_user(0)
    }
    else
    {
        with (instance_create(x, y, obj_buzzy_ceiling))
        {
            switch other.sprite_index
            {
                case spr_SMB_buzzybeetle_b:
                    sprite_index = spr_SMB_shell_buzzy_b
                    break
                case spr_SMB_buzzybeetle_night_b:
                    sprite_index = spr_SMB_shell_buzzy_night_b
                    break
                case spr_SMB3_buzzybeetle_b:
                    sprite_index = spr_SMB3_shell_buzzy_b
                    break
                case spr_SMB3_buzzybeetle_night_b:
                    sprite_index = spr_SMB3_shell_buzzy_night_b
                    break
                case spr_buzzybeetle_b:
                    sprite_index = spr_shell_buzzy_b
                    break
                case spr_NSMBU_buzzybeetle_b:
                    sprite_index = spr_NSMBU_shell_buzzy_b
                    break
            }

            hardness = 99
        }
        instance_destroy()
    }
    event_user(2)
    event_user(3)
    if (hspeed > 0)
        direct = 1
    else if (hspeed < 0)
        direct = -1
}
if (instance_exists(obj_lava_water) && (y + 8) >= obj_lava_water.y && global.theme == "castle")
{
    if (global.style != 0)
        instance_create(x, (y - 8), obj_splash_lava)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        if (other.inup == 1)
        {
            switch other.sprite_index
            {
                case spr_SMB_buzzybeetle_b:
                    sprite_index = spr_SMB_shell_buzzy_b
                    break
                case spr_SMB_buzzybeetle_night_b:
                    sprite_index = spr_SMB_shell_buzzy_night_b
                    break
                case spr_SMB3_buzzybeetle_b:
                    sprite_index = spr_SMB3_shell_buzzy_b
                    break
                case spr_SMB3_buzzybeetle_night_b:
                    sprite_index = spr_SMB3_shell_buzzy_night_b
                    break
                case spr_buzzybeetle_b:
                    sprite_index = spr_shell_buzzy_b
                    break
                case spr_NSMBU_buzzybeetle_b:
                    sprite_index = spr_NSMBU_shell_buzzy_b
                    break
            }

        }
        else
            sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
if (instance_exists(obj_lava_water) && bbox_bottom > (obj_lava_water.y - 12) && global.theme == "forest" && global.night == 1)
{
    if (global.style != 0)
        instance_create(x, (y - 8), obj_splash_posion)
    with (instance_create(x, y, obj_enemyparent_lava))
    {
        if (other.inup == 1)
        {
            switch other.sprite_index
            {
                case spr_SMB_buzzybeetle_b:
                    sprite_index = spr_SMB_shell_buzzy_b
                    break
                case spr_SMB_buzzybeetle_night_b:
                    sprite_index = spr_SMB_shell_buzzy_night_b
                    break
                case spr_SMB3_buzzybeetle_b:
                    sprite_index = spr_SMB3_shell_buzzy_b
                    break
                case spr_SMB3_buzzybeetle_night_b:
                    sprite_index = spr_SMB3_shell_buzzy_night_b
                    break
                case spr_buzzybeetle_b:
                    sprite_index = spr_shell_buzzy_b
                    break
                case spr_NSMBU_buzzybeetle_b:
                    sprite_index = spr_NSMBU_shell_buzzy_b
                    break
            }

        }
        else
            sprite_index = other.sprite_index
        direct = other.direct
    }
    instance_destroy()
}
