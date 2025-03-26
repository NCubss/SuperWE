image_index = global.style
if (poder_girar == 1)
{
    if (rotacion >= (R + 45))
    {
        rotacion = (R + 45)
        R = rotacion
        poder_girar = 0
    }
    else
        rotacion += 10
}

