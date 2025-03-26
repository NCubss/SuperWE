if (global.condiciones == 0 || (global.condiciones == 1 && global.condiciones_clear == 1))
    draw_self()
else
    draw_sprite(spr_axe_disabled, global.style, x, y)
draw_sprite(spr_axe_support, global.style, (x - 16), y)
if (cadena == 0)
    draw_sprite(spr_chain, global.style, (x - 48), y)

