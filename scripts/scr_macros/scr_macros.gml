#macro cs_small 0
#macro cs_big 1
#macro cs_fire 2
#macro cs_hero 3
#macro cs_helice -30
#macro cs_arcon -43
#macro cs_penguin -38
#macro cs_superball -50
#macro cs_mega -77
#macro cs_hen -78
#macro cs_link -85
#macro cs_racoon -39
#macro cs_frog -29
#macro cs_hammer -46
#macro cs_pballoon -82
#macro cs_turnip 104
#macro cs_boomerang -105
//#macro mario 0
//#macro luigi 1
//#macro toad 2
//#macro toadette 3
//#macro SMB 0
//#macro SMB3 1
//#macro SMW 2
//#macro NSMBU 3
//#macro SMB2 4

#macro camera_x camera_get_view_x(view_camera[0])
#macro camera_y camera_get_view_y(view_camera[0])
#macro camera_width camera_get_view_width(view_camera[0])
#macro camera_height camera_get_view_height(view_camera[0])

#macro camera_top camera_y
#macro camera_left camera_x
#macro camera_bottom camera_y + camera_height
#macro camera_right camera_x + camera_width

#macro camera_center_x camera_x + (camera_width / 2)
#macro camera_center_y camera_y + (camera_height / 2)
