x = (camera_x + 192)
y = (camera_y + 108)
if (scale_x > 0.2 && scale_y > 0.2)
{
    scale_x -= 0.012
    scale_y -= 0.012
}
else
    instance_destroy()
if (ready == 0)
{
    if (alpha >= 1)
    {
        alpha = 1
        ready = 1
    }
    else
        alpha += 0.02
}
else if (alpha <= 0)
    alpha = 0
else
    alpha -= 0.02


