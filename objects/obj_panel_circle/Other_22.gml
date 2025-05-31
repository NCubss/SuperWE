type = 3
sprite_index = spr_panel_circle_7
image_index = 3
obj_panel_expand.header = 3
obj_header.page = 12
posicion = 12
with (instance_create((camera_x + 181), (camera_y + 58), obj_card_circle))
{
    obj = obj_onoffblock_res
    image_index = 15
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 15
}
with (instance_create((camera_x + 218), (camera_y + 74), obj_card_circle))
{
    if (global.onoff == 0)
    {
        obj = obj_onoffplatform_res
        image_index = 13
    }
    else
    {
        obj = obj_onoffplatform_blue_res
        image_index = 14
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((camera_x + 233), (camera_y + 111), obj_card_circle))
{
    obj = obj_ground
    image_index = 171
    mask_index = spr_circle_mask7_3
    disabled = 0
    value = 2
}
with (instance_create((camera_x + 205), (camera_y + 150), obj_card_circle))
{
    obj = obj_firebar_res
    image_index = 167
    mask_index = spr_circle_mask7_4
    value = 3
}
with (instance_create((camera_x + 156), (camera_y + 150), obj_card_circle))
{
    obj = obj_oneway_res
    image_index = 105
    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((camera_x + 129), (camera_y + 111), obj_card_circle))
{
    obj = obj_cinta_res
    if (global.cintas == 0)
        image_index = 42
    else
        image_index = 40
    mask_index = spr_circle_mask7_6
    value = 5
	disabled = 0
}
with (instance_create((camera_x + 144), (camera_y + 74), obj_card_circle))
{
    obj = obj_rails_res
    image_index = 173
    mask_index = spr_circle_mask7_7
    value = 6
	disabled = 0
}
