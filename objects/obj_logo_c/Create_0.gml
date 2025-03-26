c_title = make_colour_rgb(229, 23, 42)
c_letter = 16777215
//x_pos = x
switch (os_get_language())
{
    case "es": global.language = 0; break;
    case "pt": global.language = 2; break;
    case "it": global.language = 3; break;
    case "zh": global.language = 4; break;
    default: global.language = 1; break;
}