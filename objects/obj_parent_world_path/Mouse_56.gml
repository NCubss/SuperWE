var was_dragging = dragging;
var was_grabbing = grabbing;
event_inherited();
// trigger rotation if we are expecting it
if (rotate_path) event_user(3);
alarm[1] = -1;
rotate_path = false;
if (holds_start || holds_end) {
	var obj = holds_start ? obj_world_start.id : (holds_end ? obj_world_end.id : noone);
	if (was_dragging || was_grabbing) {
		obj.depth = obj.normal_depth;
	}
	if (was_dragging) {
		if (holds_start) {
			obj_world_editor.start_x = gridx;
			obj_world_editor.start_y = gridy;
		} else if (holds_end) {
			obj_world_editor.end_x = gridx;
			obj_world_editor.end_y = gridy;
		}
		with (obj) {
			gridx = other.gridx;
			gridy = other.gridy;
			x = other.x;
			y = other.y;
		}
	}
}
with (obj_world_editor) event_user(2);