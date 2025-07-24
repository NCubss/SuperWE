var title,author,likes,intentos,tag1,tag2,record;
var cond_cont = global.condiciones_count
if sprite_exists(back)
{
    gpu_set_blendenable(0)
    var sx = 0.5
    draw_sprite_ext(back, 0, camera_x, camera_y, sx, sx, 0, c_white, 1)
    gpu_set_blendenable(1)
}
draw_sprite_stretched(spr_expand_bg, 1, camera_x, camera_y, 239, 216)
draw_sprite_stretched(sprite_index, 0, x, y, 145, 216)
draw_sprite(spr_pausa_text, global.language, (camera_x + 260), (camera_y + 9))
if (global.nm_play != 0)
    var icon_pausa = 1
else
    icon_pausa = 0
draw_sprite(spr_pausa_icons, icon_pausa, (camera_x + 5), (camera_y + 10))
draw_sprite(spr_pausa_icons, 2, (camera_x + 14), (camera_y + 65))
draw_sprite(spr_pausaicons, 0, (camera_x + 14), (camera_y + 88))
draw_sprite(spr_pausaicons, 1, (camera_x + 14), (camera_y + 103))
draw_sprite(spr_pausaicons, 3, (camera_x + 14), (camera_y + 118))
draw_sprite(spr_pausaicons, 3, (camera_x + 14), (camera_y + 133))
draw_sprite(spr_pausaicons, 5, (camera_x + 12), (camera_y + 148))
draw_sprite(spr_user_icon, 0, (camera_x + 14), (camera_y + 46))
draw_sprite_stretched(spr_pausa_line, 0, (camera_x + 7), (camera_y + 22), 224, 1)
draw_sprite_stretched(spr_pausa_line, 0, (camera_x + 7), (camera_y + 60), 224, 1)
draw_sprite_stretched(spr_pausa_line, 0, (camera_x + 7), (camera_y + 80), 224, 1)
draw_set_font(global.font_google)
draw_set_color(c_white)
if (global.nm_play != 0)
{
	title = lang().pages.online
    var texto = global.level_name
    if (string_width(string_hash_to_newline(texto)) > 205)
    {
        var copy = string_copy(texto, 0, 40)
        var level = (copy + "...")
    }
    else
        level = texto
	author = global.author
	likes = global.number_like
	intentos = global.intentos
    tag1 = global.tag1_pub
    tag2 = global.tag2_pub
	record = global.record
}
else
{
	title = scr_language(15)
    texto = global.levelguardabot
    level = scr_add3points(texto, 205, 40)  
	author = global.user_gb
	likes = "--"
	intentos = "--"
    tag1 = global.tag1_pub
    tag2 = global.tag2_pub
	record = "--"
}
draw_text((camera_x + 22), (camera_y + 8), string_hash_to_newline(title))
draw_text((camera_x + 16), (camera_y + 26), string_hash_to_newline(level))
draw_text((camera_x + 26), (camera_y + 45), string_hash_to_newline(author))
draw_text((camera_x + 26), (camera_y + 85), string_hash_to_newline(likes))
draw_text((camera_x + 26), (camera_y + 100), string_hash_to_newline(intentos))
draw_text((camera_x + 26), (camera_y + 114), string_hash_to_newline(tag1))
draw_text((camera_x + 26), (camera_y + 129), string_hash_to_newline(tag2))
if record == "0"
	draw_text((camera_x + 26), (camera_y + 145), string_hash_to_newline("--"))
else
    draw_text(((x - 195) - round((string_width(string_hash_to_newline((record))) / 2))), (y + 145), string_hash_to_newline((record)))
if cond_cont != 0
	draw_text((camera_x + 26), (camera_y + 63), string_hash_to_newline(textcnd[cond_cont]))
else
	draw_text((camera_x + 26), (camera_y + 63), string_hash_to_newline("--"))	