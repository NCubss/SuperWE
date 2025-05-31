type = 3
image_index = 3
sprite_index = spr_panel_circle_7
obj_panel_expand.header = 3
obj_header.page = 11
posicion = 11
with (instance_create((camera_x + 181), (camera_y + 58), obj_card_circle))
{
    if (global.platform == 0)
    {
        obj = obj_platform_res
        image_index = 111
    }
    else
    {
        obj = obj_platform_blue_res
        image_index = 112
    }
    mask_index = spr_circle_mask7_1
    value = 0
    other.image_selected = 111
}
with (instance_create((camera_x + 218), (camera_y + 74), obj_card_circle))
{
    if (global.lava_lift == 0)
    {
        obj = obj_lava_lift_res
        image_index = 168
    }
    else
    {
        obj = obj_fast_lava_lift_res
        image_index = 169
    }
    mask_index = spr_circle_mask7_2
    value = 1
}
with (instance_create((camera_x + 233), (camera_y + 111), obj_card_circle))
{
    obj = obj_ground2
    image_index = 170
    mask_index = spr_circle_mask7_3
    value = 2
	disabled = 1
}
with (instance_create((camera_x + 205), (camera_y + 150), obj_card_circle))
{
    obj = obj_grinder_res
    image_index = 71
    mask_index = spr_circle_mask7_4
    value = 3
}
with (instance_create((camera_x + 156), (camera_y + 150), obj_card_circle))
{
    obj = obj_bumper_res
    image_index = 34
    mask_index = spr_circle_mask7_5
    value = 4
}
with (instance_create((camera_x + 129), (camera_y + 111), obj_card_circle))
{
    obj = obj_skewer_res
    image_index = obj_panel_expand.img_mazo
    mask_index = spr_circle_mask7_6
    value = 5
}
with (instance_create((camera_x + 144), (camera_y + 74), obj_card_circle))
{
    obj = obj_claw_res
    image_index = 163
    mask_index = spr_circle_mask7_7
    value = 6
}
