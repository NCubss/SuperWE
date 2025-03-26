if (global.powerup == -82)
{
    sprite_index = spr_helmet_pballoon
    image_speed = 0
    image_index = 0
    return;
}
if (global.style == 0)
{
    if (global.powerup == 0 || global.powerup == -78 || global.powerup == -85)
        sprite_index = spr_SMB_helmet_small
    else if (global.powerup == -77)
        sprite_index = spr_SMB_helmet_mega
    else
        sprite_index = spr_SMB_helmet_big
    if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        image_index = 1
    else
        image_index = 0
}
else if (global.style == 1)
{
    if (instance_exists(obj_mario) && obj_mario.sprite_index == scr_marioclimb())
    {
        if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
        {
            if (global.powerup == 0)
            {
                sprite_index = spr_SMB3_helmet_small_climb
                image_index = 1
            }
            else
            {
                sprite_index = spr_SMB3_helmet_round_night
                image_index = 2
            }
        }
        else if (global.powerup == 0)
        {
            sprite_index = spr_SMB3_helmet_small_climb
            image_index = 0
        }
        else
        {
            sprite_index = spr_SMB3_helmet_round
            image_index = 2
        }
    }
    else if instance_exists(obj_spinner)
    {
        if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            sprite_index = spr_SMB3_helmet_round_night
        else
            sprite_index = spr_SMB3_helmet_round
        image_index = obj_spinner.image_index
    }
    else if (global.powerup == 0)
    {
        sprite_index = spr_SMB3_helmet_small
        image_index = 0
    }
    else
    {
        sprite_index = spr_SMB3_helmet_big
        image_index = 0
    }
    if (((!instance_exists(obj_spinner)) && instance_exists(obj_mario) && obj_mario.sprite_index != scr_marioclimb()) || instance_exists(obj_player_goal_smb3))
    {
        if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
            image_index = 1
        else
            image_index = 0
    }
}
if (global.style == 2)
{
    if instance_exists(obj_yoshi2)
        sprite_index = spr_helmet_yoshi
    else if (instance_exists(obj_mario) && obj_mario.sprite_index == scr_marioclimb())
    {
        sprite_index = spr_helmet
        image_index = 3
    }
    else if (instance_exists(obj_mario) && (obj_mario.stompstyle == 1 || obj_mario.caped > 0))
    {
        sprite_index = spr_helmet
        image_index = obj_mario.image_index
    }
    else if (instance_exists(obj_mario) && (obj_mario.isup == 1 || obj_mario.isuphold == 1) && obj_mario.state == 0)
        sprite_index = spr_SMW_helmet_up
    else
    {
        sprite_index = spr_helmet
        image_index = 0
    }
}
