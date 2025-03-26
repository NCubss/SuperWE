if (global.theme == "snow" && global.night == 1)
{
    img_ground = 85
	img_pendiente1 = 208
    img_block = 68
    img_rock = 22
    img_pinchos = 109
    img_donut = 181
    img_cloud = 177
    img_pokey = 153
}
else if (global.theme == "snow")
{
    img_ground = 84
	img_pendiente1 = 207
    img_block = 67
    img_rock = 21
    img_pinchos = 108
    img_donut = 180
    img_cloud = 176
    img_pokey = 153
}
else if (global.theme == "desert")
{
	img_pendiente1 = 206
    img_ground = 83
}
else if (global.theme == "sky")
{
    img_ground = 82
	img_pendiente1 = 205
}
else if (global.theme == "beach")
{
    img_ground = 226
	img_pendiente1 = 195
}
else if (global.theme == "fall")
{
    img_ground = 227
	img_pendiente1 = 195
}
else if (global.theme == "forest")
{
    img_ground = 81
	img_pendiente1 = 204
    img_hidden_block = 10
}
else if (global.theme == "airship" && global.night == 1)
{
    img_ground = 80
	img_pendiente1 = 203
    if (global.style == 0)
        img_rock = 19
}
else if (global.theme == "airship")
{
    img_ground = 79
	img_pendiente1 = 202
    if (global.style == 0)
        img_rock = 19
}
else if (global.theme == "ghost")
{
    img_ground = 78
	img_pendiente1 = 201
    img_block = 65
    img_rock = 18
    img_hidden_block = 12
}
else if (global.theme == "underwater" && global.night == 1)
{
    img_ground = 77
	img_pendiente1 = 200
    img_rock = 20
    img_pinchos = 107
    img_cloud = 104
    img_hidden_block = 8
}
else if (global.theme == "underwater")
{
    img_ground = 76
	img_pendiente1 = 199
    img_rock = 20
    img_pinchos = 107
    img_cloud = 104
    img_hidden_block = 8
}
else if (global.theme == "castle" && global.night == 1)
{
    img_ground = 75
	img_pendiente1 = 198
    img_block = 66
    img_rock = 19
    img_donut = 179
    img_cloud = 175
    img_hidden_block = 12
}
else if (global.theme == "castle")
{
    img_ground = 74
	img_pendiente1 = 197
    img_block = 66
    img_rock = 19
    img_donut = 179
    img_cloud = 175
    img_hidden_block = 12
}
else if (global.theme == "mountain" && global.night == 1)
{
    img_ground = 229
	img_pendiente1 = 198
}
else if (global.theme == "mountain")
{
    img_ground = 228
	img_pendiente1 = 195
}
else if (global.theme == "underground")
{
    img_ground = 73
	img_pendiente1 = 196
    img_block = 65
    img_rock = 18
    img_hidden_block = 12
}
else if (global.theme == "ground")
{
    img_ground = 72
	img_pendiente1 = 195
}
if (global.night == 1 && global.theme == "ground")
    img_1up = 123
if (global.theme == "castle" || global.theme == "ghost" || global.theme == "underground" || global.night == 1)
{
    img_billbanzai = 3
    img_bobomb = 26
    img_buzzy = 36
    img_buzzy_shell = 88
    img_muncher = 101
    img_chomp = 142
    img_bulletbill = 6
    img_cannon = 156
}
if (global.theme == "ghost" || global.theme == "underground" || (global.night == 1 && global.theme != "snow" && global.theme != "castle"))
{
    img_cloud_block = 174
    img_donut = 178
}
if (global.night == 1 && global.theme != "underwater")
    img_hidden_block = 12
if instance_exists(obj_card_item)
{
    with (obj_card_item)
    {
        if (obj == obj_ground)
            obj_draw = other.img_ground
		if (obj == obj_slopes)
            obj_draw = other.img_pendiente1
        else if (obj == obj_block_res)
            obj_draw = other.img_block
        else if (obj == obj_rock_res)
            obj_draw = other.img_rock
        else if (obj == obj_pinchos_res)
            obj_draw = other.img_pinchos
        else if (obj == obj_billbanzai_res)
            obj_draw = other.img_billbanzai
        else if (obj == obj_bobomb_res)
            obj_draw = other.img_bobomb
        else if (obj == obj_buzzybeetle_res)
            obj_draw = other.img_buzzy
        else if (obj == obj_buzzy_shell_res)
            obj_draw = other.img_buzzy_shell
        else if (obj == obj_muncher_res)
            obj_draw = other.img_muncher
        else if (obj == obj_chomp_res)
            obj_draw = other.img_chomp
        else if (obj == obj_block_hidden_res)
            obj_draw = other.img_hidden_block
        else if (obj == obj_nube_res)
            obj_draw = other.img_cloud
        else if (obj == obj_1up_res)
            obj_draw = other.img_1up
        else if (obj == obj_bullebill_base_res)
            obj_draw = other.img_bulletbill
        else if (obj == obj_cannon_res)
            obj_draw = other.img_cannon
        else if (obj == obj_pokey_res)
            obj_draw = other.img_pokey
    }
}


