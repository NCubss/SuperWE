if (direct == -1)
{
    instance_create(pos, (camera_y - 16), obj_bowser_fire_down)
    instance_create((pos + 16), (camera_y - 44), obj_bowser_fire_down)
    instance_create((pos + 32), (camera_y - 72), obj_bowser_fire_down)
    instance_create((pos + 48), (camera_y - 100), obj_bowser_fire_down)
    instance_create((pos + 64), (camera_y - 128), obj_bowser_fire_down)
}
else
{
    instance_create(pos, (camera_y - 16), obj_bowser_fire_down)
    instance_create((pos - 16), (camera_y - 44), obj_bowser_fire_down)
    instance_create((pos - 32), (camera_y - 72), obj_bowser_fire_down)
    instance_create((pos - 48), (camera_y - 100), obj_bowser_fire_down)
    instance_create((pos - 64), (camera_y - 128), obj_bowser_fire_down)
}
instance_destroy()

