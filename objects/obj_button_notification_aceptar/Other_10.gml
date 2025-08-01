if (os_type != os_android)
{
    if (!directory_exists(global.directorio))
        directory_create(global.directorio)
}
else
{
    global.directorio_temp = getDire1("SMM_WE")
    global.directorio = (global.directorio_temp + "/")
}
var _root_list2 = ds_list_create()
var _map2 = ds_map_create()
ds_list_add(_root_list2, _map2)
ds_list_mark_as_map(_root_list2, (ds_list_size(_root_list2) - 1))
if (current_day < 10)
    var day = ("0" + string(current_day))
else
    day = string(current_day)
if (current_month < 10)
    var month = ("0" + string(current_month))
else
    month = string(current_month)
if (current_year < 10)
    var year = ("0" + string(current_year))
else
    year = string(current_year)
var date = ((((day + "/") + month) + "/") + year)
if (current_hour < 10)
    var hour = ("0" + string(current_hour))
else
    hour = string(current_hour)
if (current_minute < 10)
    var minute = ("0" + string(current_minute))
else
    minute = string(current_minute)
var time = ((hour + ":") + minute)
ds_map_add(_map2, "user", global.my1)
ds_map_add(_map2, "etiqueta1", global.etiqueta1)
ds_map_add(_map2, "etiqueta2", global.etiqueta2)
ds_map_add(_map2, "apariencia", global.style)
ds_map_add(_map2, "entorno", global.theme)
ds_map_add(_map2, "cronometro", obj_levelmanager.leveltime)
ds_map_add(_map2, "autoavance", global.autoscroll)
ds_map_add(_map2, "modo_noche", global.night)
ds_map_add(_map2, "ground2", obj_ground2.y)
ds_map_add(_map2, "ground3_x", obj_ground3.x)
ds_map_add(_map2, "ground3_y", obj_ground3.y)
ds_map_add(_map2, "size", room_width)
ds_map_add(_map2, "water_level", obj_card_bout.pos_y)
ds_map_add(_map2, "water_level_limit", obj_card_bout.pos_y_limit)
ds_map_add(_map2, "water_level_speed", global.water_speed)
ds_map_add(_map2, "date", date)
ds_map_add(_map2, "time", time)
ds_map_add(_map2, "condiciones", global.condiciones)
ds_map_add(_map2, "condiciones_type", global.condiciones_type)
ds_map_add(_map2, "condiciones_object", global.condiciones_object)
ds_map_add(_map2, "condiciones_count", global.condiciones_count)
ds_map_add(_map2, "ds_s", global.sounds_level)
ds_map_add(_map2, "meteorites", global.meteoritos)
ds_map_add(_map2, "description", global.desc)
var _root_list3 = ds_list_create()
if instance_exists(obj_ground)
{
    with (obj_ground)
    {
        var _map3 = ds_map_create()
        ds_list_add(_root_list3, _map3)
        ds_list_mark_as_map(_root_list3, (ds_list_size(_root_list3) - 1))
        ds_map_add(_map3, "x_pos", x)
        ds_map_add(_map3, "y_pos", y)
        ds_map_add(_map3, "index", image_index)
    }
}
var _root_list6 = ds_list_create()
if instance_exists(obj_decoracion_parent)
{
    with (obj_decoracion_parent)
    {
        var _map6 = ds_map_create()
        ds_list_add(_root_list6, _map6)
        ds_list_mark_as_map(_root_list6, (ds_list_size(_root_list6) - 1))
        ds_map_add(_map6, "object", object_get_name(object_index))
        ds_map_add(_map6, "x_pos", x)
        ds_map_add(_map6, "y_pos", y)
        ds_map_add(_map6, "sprite", sprite_get_name(sprite_index))
        ds_map_add(_map6, "index", image_index)
    }
}
var _root_list = ds_list_create()
with (obj_parent_resource)
{
    if (object_index != obj_tuberia_res && object_index != obj_cannon_res && object_index != obj_cannon_red_res && object_index != obj_semisolid_platform1 && object_index != obj_mushroom_platform_res && object_index != obj_vine_res && object_index != obj_pokey_res && object_index != obj_bullebill_base_red_res && object_index != obj_bullebill_base_res && object_index != obj_platform_res && object_index != obj_platform_blue_res && object_index != obj_puente_res && object_index != obj_door_res && object_index != obj_door_exit_res && object_index != obj_door_switch_res && object_index != obj_door_switch_exit_res && object_index != obj_door_lock_res && object_index != obj_door_lock_exit_res && object_index != obj_firebar_res && object_index != obj_ground)
    {
        var _map = ds_map_create()
        ds_list_add(_root_list, _map)
        ds_list_mark_as_map(_root_list, (ds_list_size(_root_list) - 1))
        ds_map_add(_map, "object", object_get_name(object_index))
        ds_map_add(_map, "x_pos", x)
        ds_map_add(_map, "y_pos", y)
        ds_map_add(_map, "sprout", sprout)
        ds_map_add(_map, "progresivo", progresivo)
        ds_map_add(_map, "wings", wings)
        ds_map_add(_map, "rotacion", rotacion)
        ds_map_add(_map, "direct_t", direct_t)
        ds_map_add(_map, "paracaidas", paracaidas)
        ds_map_add(_map, "key", key)
        ds_map_add(_map, "inup", inup)
        ds_map_add(_map, "modo_water", modo_water)
        ds_map_add(_map, "s_scaley", s_scaley)
    }
}
var _root_list4 = ds_list_create()
with (obj_parent_resource)
{
    if (object_index == obj_tuberia_res && warp != 2)
    {
        var _map4 = ds_map_create()
        ds_list_add(_root_list4, _map4)
        ds_list_mark_as_map(_root_list4, (ds_list_size(_root_list4) - 1))
        ds_map_add(_map4, "x_pos", x)
        ds_map_add(_map4, "y_pos", y)
        ds_map_add(_map4, "size", size)
        ds_map_add(_map4, "rotacion", rotacion)
        ds_map_add(_map4, "direct_t", direct_t)
        ds_map_add(_map4, "scalex", s_scalex)
        ds_map_add(_map4, "color", color)
        ds_map_add(_map4, "mask", plant)
        ds_map_add(_map4, "xscale", image_xscale)
        ds_map_add(_map4, "yscale", image_yscale)
        ds_map_add(_map4, "warp", warp)
        ds_map_add(_map4, "t_x_pos", t_x_pos)
        ds_map_add(_map4, "t_y_pos", t_y_pos)
        ds_map_add(_map4, "t_size", t_size)
        ds_map_add(_map4, "t_rotacion", t_rotacion)
        ds_map_add(_map4, "t_direct_t", t_direct_t)
        ds_map_add(_map4, "t_s_scalex", t_s_scalex)
        ds_map_add(_map4, "t_color", t_color)
        ds_map_add(_map4, "t_xscale", t_xscale)
        ds_map_add(_map4, "t_yscale", t_yscale)
    }
}
var _root_list5 = ds_list_create()
with (obj_parent_resource)
{
    if (object_index == obj_cannon_res || object_index == obj_cannon_red_res)
    {
        var _map5 = ds_map_create()
        ds_list_add(_root_list5, _map5)
        ds_list_mark_as_map(_root_list5, (ds_list_size(_root_list5) - 1))
        ds_map_add(_map5, "object", object_get_name(object_index))
        ds_map_add(_map5, "x_pos", x)
        ds_map_add(_map5, "y_pos", y)
        ds_map_add(_map5, "direct", direct)
        ds_map_add(_map5, "down", d)
        ds_map_add(_map5, "up", u)
        ds_map_add(_map5, "left", l)
        ds_map_add(_map5, "right", r)
    }
}
var _root_list7 = ds_list_create()
with (obj_parent_resource)
{
    if (object_index == obj_semisolid_platform1 || object_index == obj_mushroom_platform_res || object_index == obj_vine_res || object_index == obj_platform_res || object_index == obj_platform_blue_res || object_index == obj_puente_res || object_index == obj_pokey_res || object_index == obj_bullebill_base_red_res || object_index == obj_bullebill_base_res || object_index == obj_firebar_res)
    {
        var _map7 = ds_map_create()
        ds_list_add(_root_list7, _map7)
        ds_list_mark_as_map(_root_list7, (ds_list_size(_root_list7) - 1))
        ds_map_add(_map7, "object", object_get_name(object_index))
        ds_map_add(_map7, "x_pos", x)
        ds_map_add(_map7, "y_pos", y)
        ds_map_add(_map7, "sprite", sprite_get_name(sprite_index))
        ds_map_add(_map7, "color", color)
        ds_map_add(_map7, "depth", depth)
        ds_map_add(_map7, "width", size_x)
        ds_map_add(_map7, "height", size_y)
        ds_map_add(_map7, "direct_t", direct_t)
        ds_map_add(_map7, "wings", wings)
    }
}
var _root_list8 = ds_list_create()
with (obj_parent_resource)
{
    if (object_index == obj_door_res || object_index == obj_door_switch_res || object_index == obj_door_lock_res)
    {
        var _map8 = ds_map_create()
        ds_list_add(_root_list8, _map8)
        ds_list_mark_as_map(_root_list8, (ds_list_size(_root_list8) - 1))
        ds_map_add(_map8, "object", object_get_name(object_index))
        ds_map_add(_map8, "x_pos", x)
        ds_map_add(_map8, "y_pos", y)
        ds_map_add(_map8, "door_x", door_x)
        ds_map_add(_map8, "door_y", door_y)
    }
}
var _wrapper = ds_map_create()
ds_map_add_list(_wrapper, "AJUSTES", _root_list2)
ds_map_add_list(_wrapper, "SUELO", _root_list3)
ds_map_add_list(_wrapper, "DECORACION", _root_list6)
ds_map_add_list(_wrapper, "NIVEL", _root_list)
ds_map_add_list(_wrapper, "TUBERIAS", _root_list4)
ds_map_add_list(_wrapper, "CANNON", _root_list5)
ds_map_add_list(_wrapper, "PLATAFORMAS", _root_list7)
ds_map_add_list(_wrapper, "PUERTAS", _root_list8)
var _root_list_sub1 = ds_list_create()
var sub1 = ds_map_create()
ds_map_add_list(sub1, "AJUSTES", _root_list_sub1)
var mundo = ds_map_create()
ds_map_add_map(mundo, "MAIN", _wrapper)
ds_map_add_map(mundo, "SUB1", sub1)
var _string = json_encode(mundo)
_string = string_replace_all(_string, ".000000", "")
var _string_code = base64_encode(_string)
var buffer = buffer_create(string_length(_string_code), buffer_grow, 1);
buffer_write(buffer, buffer_text, _string_code);
var _hash = sha1_buffer_utf8_hmac(global.drez, buffer);
buffer_delete(buffer);
_string_code += _hash
save_to_file(((global.directorio + obj_input.new_texto) + ".swe"), _string_code)
global.save_changes = (obj_input.new_texto + ".swe")
global.last_level = (obj_input.new_texto + ".swe")
global.levelguardabot = global.last_level
global.etiqueta1_temp = global.etiqueta1
global.etiqueta2_temp = global.etiqueta2
ds_map_destroy(_wrapper)
with (obj_load_image)
    instance_destroy()
scr_toast(0, scr_language(90))
global.instance_deactivate = 1
obj_editormanager.expand_open = 0
with (obj_window_alert)
    instance_destroy()
