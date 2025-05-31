image_speed = 0
c_title = make_colour_rgb(89, 15, 16)
if instance_exists(obj_creator_jugar_editar)
    audio_pause_sound(obj_creator_jugar_editar.music_editor)
instance_create((camera_x + 20), (camera_y + 21), obj_input)
instance_create_depth((camera_x + 20), (camera_y + 51),-16, obj_input_desc)
with (instance_create((camera_x + 20), (camera_y + 91), obj_etiquetas))
    idd = 0
with (instance_create((camera_x + 136), (camera_y + 91), obj_etiquetas))
    idd = 1
with (instance_create((camera_x + 252), (camera_y + 91), obj_etiquetas))
    idd = 2
with (instance_create((camera_x + 20), (camera_y + 111), obj_etiquetas))
    idd = 3
with (instance_create((camera_x + 136), (camera_y + 111), obj_etiquetas))
    idd = 4
with (instance_create((camera_x + 252), (camera_y + 111), obj_etiquetas))
    idd = 5
with (instance_create((camera_x + 20), (camera_y + 131), obj_etiquetas))
    idd = 6
with (instance_create((camera_x + 136), (camera_y + 131), obj_etiquetas))
    idd = 7
with (instance_create((camera_x + 252), (camera_y + 131), obj_etiquetas))
    idd = 8
with (instance_create((camera_x + 20), (camera_y + 151), obj_etiquetas))
    idd = 9
with (instance_create((camera_x + 136), (camera_y + 151), obj_etiquetas))
    idd = 10
with (instance_create((camera_x + 252), (camera_y + 151), obj_etiquetas))
    idd = 11
with (instance_create((camera_x + 20), (camera_y + 171), obj_etiquetas))
    idd = 12
with (instance_create((camera_x + 136), (camera_y + 171), obj_etiquetas))
    idd = 13
with (instance_create((camera_x + 252), (camera_y + 171), obj_etiquetas))
    idd = 14
instance_create((camera_x + 135), (camera_y + 190), obj_button_notification_aceptar)
instance_create((camera_x + 364), (camera_y + 4), obj_button_notification_cancelar)