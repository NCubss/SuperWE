var x1, x2, y1, y2;
draw_set_color(c_black)
x1 = (camera_x + left)
x2 = (camera_x + right)
y1 = camera_y
y2 = (camera_x + camera_height)
right += 15
left += (15 * stagetwo)
draw_rectangle(x1, y1, x2, y2, false)
if (right > camera_get_view_width(view_camera[0] + 50) && (!stagetwo))
{
    stagetwo = 1
    room_goto(goal)
}
if (left > camera_get_view_width(view_camera[0] + 50))
    instance_destroy()

