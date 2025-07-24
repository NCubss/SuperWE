var was_dragging = dragging;
var was_grabbing = grabbing;
event_inherited();
// trigger rotation if we are expecting it
if (rotate_path) event_user(15);
alarm[1] = -1;
rotate_path = false;
// ... (the thing in step event ig)
with (obj_world_editor) event_user(2);