if instance_exists(obj_editormanager)
    visible = obj_editormanager.visible
else
    visible = false
x = ((camera_x + 29) - obj_cursor.anim_left)
y = (camera_y + 65)
if (effect_hover == 1)
{
    switch global.theme
    {
        case "forest":
            if (global.night == 1)
            {
                sprite_index = spr_card_bout_purple_anim
                image_speed = 0.15
            }
            else
            {
                sprite_index = spr_card_bout_water_anim
                image_speed = 0.15
            }
            break
        case "beach":
            sprite_index = spr_card_bout_water_anim
            image_speed = 0.15
            break
        case "castle":
            sprite_index = spr_card_bout_lava_anim
            image_speed = 0.15
            break
        case "mountain":
            if (global.night == 1)
            {
                sprite_index = spr_card_bout_lava_anim
                image_speed = 0.15
            }
            else
            {
                sprite_index = spr_card_bout
                image_speed = 0
                image_index = 3
            }
            break
        default:
            sprite_index = spr_card_bout
            image_speed = 0
            image_index = 3
    }

}
else
{
    sprite_index = spr_card_bout
    image_speed = 0
    switch global.theme
    {
        case "forest":
            if (global.night == 1)
                image_index = 1
            else
                image_index = 0
            break
        case "beach":
            image_index = 0
            break
        case "castle":
            image_index = 2
            break
        case "mountain":
            if (global.night == 1)
                image_index = 2
            else
                image_index = 3
            break
        default:
            image_index = 3
    }

}

